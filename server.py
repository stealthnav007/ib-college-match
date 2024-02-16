from fastapi import FastAPI
import asyncpg
import pandas as pd
from typing import List

app = FastAPI()

# Database connection parameters
DB_USER = 'ibcm'
DB_PASSWORD = 'password'
DB_HOST = 'localhost'
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
@app.get("/get-data/")
async def get_data():
    async with app.state.db.acquire() as connection:
        # Your SQL query here
        query = "SELECT * FROM raw_data;"
        rows = await connection.fetch(query)
        # Convert to pandas DataFrame
        df = pd.DataFrame(rows, columns=[col for col in rows[0].keys()])
        # Return the DataFrame in JSON format
        return df.to_dict(orient="records")