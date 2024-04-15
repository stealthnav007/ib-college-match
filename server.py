import os
from fastapi import FastAPI, HTTPException
import asyncpg
import pandas as pd
from typing import List, Optional

app = FastAPI()

# Database connection parameters
DB_USER = 'ibcm'
DB_PASSWORD = 'password'
DB_HOST = os.getenv('PG_HOST', 'localhost')
DB_NAME = 'ibcm'
DB_PORT = '5432'  # default PostgreSQL port is 5432

# Create a database connection pool
async def get_db_pool():
    return await asyncpg.create_pool(
        user=DB_USER,
        password=DB_PASSWORD,
        database=DB_NAME,
        host=DB_HOST,
        port=DB_PORT
    )

@app.on_event("startup")
async def startup_event():
    app.state.db = await get_db_pool()

@app.on_event("shutdown")
async def shutdown_event():
    await app.state.db.close()

# Endpoint to fetch data from PostgreSQL and return as a DataFrame
@app.get("/get-all-data/")
async def get_data():
    async with app.state.db.acquire() as connection:
        # Your SQL query here
        query = "SELECT * FROM raw_data;"
        rows = await connection.fetch(query)
        # Convert to pandas DataFrame
        df = pd.DataFrame(rows, columns=[col for col in rows[0].keys()])
        # Return the DataFrame in JSON format
        return df.to_dict(orient="records")
    
# Endpoint to filter data based on GPA, SAT and ACT scores
@app.get("/get-gpa-filtered-data/")
async def filter_data(gpa: float, sat: Optional[str] = None, act: Optional[str] = None):
    async with app.state.db.acquire() as connection:
        # Start with a base query
        query = 'SELECT * FROM raw_data WHERE "Outcome" LIKE \'Accepted%\' AND "GPA" <= $1'
        params = [gpa]

        # If SAT score is provided, add it to the query
        if sat is not None:
            query += ' AND "SAT" <= $2'
            params.append(sat)

        # If ACT score is provided, add it to the query
        if act is not None:
            query += ' AND "ACT" <= $3'
            params.append(act)

        # Execute the query
        rows = await connection.fetch(query, *params)

        # Convert to pandas DataFrame
        df = pd.DataFrame(rows, columns=[col for col in rows[0].keys()])

        # Return the DataFrame in JSON format
        return df.to_dict(orient="records") 

# Endpoint to fetch data for specific colleges
@app.get("/get-college-data/")
async def get_college_data(colleges: Optional[str] = None):
    if colleges is None:
        raise HTTPException(status_code=400, detail="No colleges provided")

    # Split the colleges string into a list and strip spaces
    colleges_list = [college.strip() for college in colleges.split(',')]

    async with app.state.db.acquire() as connection:
        # SQL query to fetch all data for the specified colleges
        query = f'SELECT * FROM raw_data WHERE "School" IN ({", ".join(["$" + str(i+1) for i in range(len(colleges_list))])})'
        params = colleges_list

        # Execute the query
        rows = await connection.fetch(query, *params)

        # Convert to pandas DataFrame
        df = pd.DataFrame(rows, columns=[col for col in rows[0].keys()])

        # Return the DataFrame in JSON format
        return df.to_dict(orient="records")
    
# Endpoint to fetch a list of unique colleges
@app.get("/get-college-list/")
async def get_college_list():
    async with app.state.db.acquire() as connection:
        # SQL query to fetch all unique college names
        query = 'SELECT DISTINCT "School" FROM raw_data'

        # Execute the query
        rows = await connection.fetch(query)

        # Extract college names from the rows
        colleges = [row['School'] for row in rows]

        return colleges
