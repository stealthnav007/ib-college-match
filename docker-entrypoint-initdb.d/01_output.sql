--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: raw_data; Type: TABLE; Schema: public; Owner: ibcm
--

CREATE TABLE public.raw_data (
    "Category" text,
    "Rank" integer,
    "School" text,
    "Year" integer,
    "Application Type" text,
    "Outcome" text,
    "ACT" text,
    "SAT" text,
    "GPA" double precision
);


ALTER TABLE public.raw_data OWNER TO ibcm;

--
-- Data for Name: raw_data; Type: TABLE DATA; Schema: public; Owner: ibcm
--

COPY public.raw_data ("Category", "Rank", "School", "Year", "Application Type", "Outcome", "ACT", "SAT", "GPA") FROM stdin;
National University	1	Princeton University	2021	Regular Decision	Denied	\N	1600	6.8
National University	1	Princeton University	2021	Regular Decision	Denied	\N	1390	6.68
National University	1	Princeton University	2021	Regular Decision	Denied	\N	1230	5.88
National University	1	Princeton University	2022	Regular Decision	Accepted	\N	1560	6.53
National University	1	Princeton University	2022	Restrictive Early Action	Accepted	\N	1430	6.44
National University	1	Princeton University	2022	Regular Decision	Denied	\N	1560	6.42
National University	1	Princeton University	2022	Regular Decision	Denied	\N	\N	5.78
National University	1	Princeton University	2023	Restrictive Early Action	Accepted	35	1490	6.91
National University	1	Princeton University	2023	Restrictive Early Action	Denied (Deferred)	33	1570	6.91
National University	1	Princeton University	2023	Restrictive Early Action	Denied (Deferred)	\N	1570	6.81
National University	1	Princeton University	2023	Regular Decision	Denied	\N	1580	6.66
National University	1	Princeton University	2023	Restrictive Early Action	Accepted	\N	1510	6.63
National University	1	Princeton University	2023	Regular Decision	Denied	\N	1280	6.23
National University	2	MIT	2021	Early Action	Denied (Deferred)	\N	1490	6.45
National University	2	MIT	2022	Early Action	Denied (Deferred)	\N	1570	6.75
National University	2	MIT	2022	Early Action	Denied (Deferred)	\N	1570	6.67
National University	2	MIT	2022	Regular Decision	Denied	31	\N	6.54
National University	2	MIT	2022	Early Action	Denied (Deferred)	\N	1450	6.37
National University	2	MIT	2023	Regular Decision	Denied	\N	1570	6.81
National University	2	MIT	2023	Regular Decision	Denied	\N	1580	6.66
National University	2	MIT	2023	Early Action	Denied (Deferred)	\N	1500	6.6
National University	2	MIT	2023	Regular Decision	Denied	\N	1540	5.92
National University	2	MIT	2023	Regular Decision	Denied	\N	1310	4.77
National University	3	Harvard University	2021	Regular Decision	Accepted	\N	1600	6.8
National University	3	Harvard University	2021	Regular Decision	Denied	\N	1490	6.45
National University	3	Harvard University	2021	Regular Decision	Denied	\N	1510	6.41
National University	3	Harvard University	2021	Regular Decision	Denied	\N	1490	6.18
National University	3	Harvard University	2021	Regular Decision	Denied	\N	\N	6.15
National University	3	Harvard University	2021	Regular Decision	Denied	\N	\N	5.86
National University	3	Harvard University	2021	Restrictive Early Action	Denied	\N	\N	5.74
National University	3	Harvard University	2021	Regular Decision	Denied	\N	\N	5.1
National University	3	Harvard University	2022	Regular Decision	Denied	\N	1300	6.12
National University	3	Harvard University	2023	Regular Decision	Denied	\N	1570	6.81
National University	3	Harvard University	2023	Regular Decision	Denied	\N	1490	6.77
National University	3	Harvard University	2023	Restrictive Early Action	Outcome Unknown (Waitlisted)	\N	\N	6.66
National University	3	Harvard University	2023	Regular Decision	Denied	\N	1580	6.66
National University	3	Harvard University	2023	Regular Decision	Denied	\N	1500	6.6
National University	3	Harvard University	2023	Restrictive Early Action	Accepted (Deferred)	\N	1530	6.23
National University	3	Harvard University	2023	Regular Decision	Denied	\N	1310	5.91
National University	3	Harvard University	2023	Restrictive Early Action	Denied (Deferred)	22	\N	5.9
National University	3	Harvard University	2023	Regular Decision	Denied	\N	\N	5.62
National University	4	Stanford	2021	Regular Decision	Denied	\N	1490	6.18
National University	4	Stanford	2021	Regular Decision	Denied	\N	1340	5.58
National University	4	Stanford	2022	Regular Decision	Denied	\N	1570	6.67
National University	4	Stanford	2022	Regular Decision	Denied	\N	1550	6.56
National University	4	Stanford	2022	Restrictive Early Action	Denied	\N	\N	6.37
National University	4	Stanford	2022	Regular Decision	Denied	\N	1540	6.35
National University	4	Stanford	2023	Restrictive Early Action	Denied	\N	1580	6.66
National University	4	Stanford	2023	Regular Decision	Denied	\N	1460	6.17
National University	5	Yale	2021	Regular Decision	Accepted	\N	1600	6.8
National University	5	Yale	2021	Restrictive Early Action	Accepted	\N	\N	6.54
National University	5	Yale	2021	Regular Decision	Denied	\N	\N	6.38
National University	5	Yale	2021	Regular Decision	Denied	\N	1230	5.88
National University	5	Yale	2022	Restrictive Early Action	Accepted	\N	1580	6.81
National University	5	Yale	2022	Regular Decision	Denied	\N	1560	6.53
National University	5	Yale	2022	Regular Decision	Accepted	\N	1540	6.35
National University	5	Yale	2022	Regular Decision	Denied	\N	\N	5.78
National University	5	Yale	2023	Regular Decision	Denied	33	1570	6.91
National University	5	Yale	2023	Regular Decision	Denied	\N	1570	6.81
National University	5	Yale	2023	Regular Decision	Denied	\N	1490	6.77
National University	5	Yale	2023	Single-Choice Early Action	Denied (Deferred)	\N	1570	6.59
National University	5	Yale	2023	Single-Choice Early Action	Denied	\N	1540	6.53
National University	5	Yale	2023	Regular Decision	Denied	\N	1370	6.31
National University	5	Yale	2023	Regular Decision	Denied	\N	1510	5.75
National University	5	Yale	2023	Single-Choice Early Action	Denied	\N	\N	5.62
National University	6	University of Pennsylvania	2021	Early Decision	Denied	\N	1510	6.41
National University	6	University of Pennsylvania	2021	Early Decision	Denied (Deferred)	\N	1490	6.18
National University	6	University of Pennsylvania	2021	Regular Decision	Denied	\N	1490	6.16
National University	6	University of Pennsylvania	2021	Regular Decision	Denied	\N	1230	5.88
National University	6	University of Pennsylvania	2021	Early Decision	Denied	\N	1280	5.49
National University	6	University of Pennsylvania	2021	Early Decision	Denied	\N	\N	5.1
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	1560	6.42
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	1450	6.37
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	1540	6.35
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	\N	6.19
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	1370	6.07
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	1460	5.9
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	\N	5.78
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	1200	5.44
National University	6	University of Pennsylvania	2023	Regular Decision	Denied	33	1570	6.91
National University	6	University of Pennsylvania	2023	Early Decision	Denied	\N	1400	6.73
National University	6	University of Pennsylvania	2023	Regular Decision	Denied	\N	1500	6.6
National University	6	University of Pennsylvania	2023	Regular Decision	Denied	\N	1570	6.59
National University	6	University of Pennsylvania	2023	Regular Decision	Denied	\N	1420	6.47
National University	6	University of Pennsylvania	2023	Early Decision	Denied	31	\N	6.36
National University	6	University of Pennsylvania	2023	Regular Decision	Denied	22	\N	5.9
National University	6	University of Pennsylvania	2023	Regular Decision	Denied	\N	\N	5.62
National University	6	University of Pennsylvania	2023	Regular Decision	Denied	\N	1370	5.6
National University	7	California Institute of Technology	2021	Early Action	Denied	\N	1510	6.45
National University	7	California Institute of Technology	2022	Early Action	Denied	\N	1570	6.67
National University	7	California Institute of Technology	2022	Regular Decision	Denied	\N	1450	6.37
National University	7	California Institute of Technology	2022	Regular Decision	Denied	\N	1510	6
National University	7	California Institute of Technology	2023	Regular Decision	Denied	\N	1310	4.77
National University	7	Duke	2021	Regular Decision	Denied	\N	1390	6.68
National University	7	Duke	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.18
National University	7	Duke	2022	Regular Decision	Denied	\N	1440	6.72
National University	7	Duke	2022	Regular Decision	Denied	\N	1500	6.58
National University	7	Duke	2022	Regular Decision	Denied	\N	1550	6.56
National University	7	Duke	2022	Regular Decision	Denied	\N	1450	6.37
National University	7	Duke	2023	Early Decision	Accepted (Deferred)	\N	1500	6.6
National University	7	Duke	2023	Regular Decision	Denied	\N	\N	6.2
National University	7	Duke	2023	Early Decision	Denied	\N	1460	6.17
National University	9	Brown University	2021	Early Decision	Accepted (Deferred)	\N	1600	6.8
National University	9	Brown University	2021	Regular Decision	Denied	\N	\N	6.54
National University	9	Brown University	2021	Regular Decision	Denied	\N	1490	6.51
National University	9	Brown University	2021	Early Decision	Denied	\N	1470	6.44
National University	9	Brown University	2021	Regular Decision	Denied	\N	1510	6.41
National University	9	Brown University	2021	Early Decision	Denied (Deferred)	\N	1540	6.13
National University	9	Brown University	2021	Regular Decision	Denied	\N	1230	5.88
National University	9	Brown University	2021	Early Decision	Denied	\N	\N	5.81
National University	9	Brown University	2021	Early Decision	Denied (Deferred)	\N	1340	5.58
National University	9	Brown University	2022	Regular Decision	Denied	\N	\N	6.64
National University	9	Brown University	2022	Regular Decision	Denied	\N	\N	6.55
National University	9	Brown University	2022	Regular Decision	Denied	\N	1540	6.35
National University	9	Brown University	2022	Early Decision	Denied	\N	\N	6.23
National University	9	Brown University	2022	Regular Decision	Denied	\N	\N	6.19
National University	9	Brown University	2022	Early Decision	Accepted (Deferred)	\N	1330	6.11
National University	9	Brown University	2022	Early Decision	Denied	\N	1260	6.04
National University	9	Brown University	2022	Early Decision	Denied (Deferred)	\N	\N	5.78
National University	9	Brown University	2022	Regular Decision	Denied	\N	1500	5.77
National University	9	Brown University	2023	Regular Decision	Denied	\N	1540	6.53
National University	9	Brown University	2023	Early Decision	Accepted	35	\N	6.48
National University	9	Brown University	2023	Early Decision	Denied (Deferred)	\N	1420	6.47
National University	9	Brown University	2023	Regular Decision	Denied	\N	1370	6.31
National University	9	Brown University	2023	Regular Decision	Denied	\N	1530	6.23
National University	9	Brown University	2023	Early Decision	Denied	\N	1280	6.23
National University	9	Brown University	2023	Regular Decision	Denied	\N	1310	3.16
National University	9	Brown University	2023	Regular Decision	Denied	\N	\N	5.93
National University	9	Brown University	2023	Early Decision	Denied	\N	1310	5.91
National University	9	Brown University	2023	Regular Decision	Denied	22	\N	5.9
National University	9	Brown University	2023	Early Decision	Denied	\N	\N	5.66
National University	9	Brown University	2023	Regular Decision	Denied	\N	1430	5.57
National University	9	Johns Hopkins University	2021	Early Decision	Denied	\N	1470	6.63
National University	9	Johns Hopkins University	2021	Early Decision II	Accepted	\N	1400	6.57
National University	9	Johns Hopkins University	2021	Regular Decision	Denied	\N	1500	6.47
National University	9	Johns Hopkins University	2021	Regular Decision	Denied	\N	1510	6.41
National University	9	Johns Hopkins University	2021	Regular Decision	Denied	\N	1080	5.34
National University	9	Johns Hopkins University	2021	Regular Decision	Denied	\N	\N	5.33
National University	9	Johns Hopkins University	2022	Regular Decision	Accepted	\N	\N	6.64
National University	9	Johns Hopkins University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1530	6.59
National University	9	Johns Hopkins University	2022	Regular Decision	Denied	\N	1550	6.56
National University	9	Johns Hopkins University	2022	Early Decision II	Denied	\N	\N	6.43
National University	9	Johns Hopkins University	2022	Regular Decision	Denied	\N	1450	6.37
National University	9	Johns Hopkins University	2022	Regular Decision	Denied	\N	1230	6.27
National University	9	Johns Hopkins University	2022	Early Decision	Denied	\N	1330	5.99
National University	9	Johns Hopkins University	2022	Regular Decision	Denied	\N	\N	5.78
National University	9	Johns Hopkins University	2022	Regular Decision	Denied	\N	1360	5.67
National University	9	Johns Hopkins University	2023	Regular Decision	Denied	33	1570	6.91
National University	9	Johns Hopkins University	2023	Regular Decision	Denied	\N	1570	6.81
National University	9	Johns Hopkins University	2023	Early Decision II	Outcome Unknown (Waitlisted)	\N	1570	6.59
National University	9	Johns Hopkins University	2023	Early Decision II	Denied	\N	1310	5.91
National University	9	Johns Hopkins University	2023	Regular Decision	Denied	\N	1390	5.57
National University	9	Northwestern University	2021	Regular Decision	Denied	\N	1390	6.68
National University	9	Northwestern University	2021	Regular Decision	Denied	\N	1470	6.63
National University	9	Northwestern University	2021	Regular Decision	Denied	\N	1490	6.18
National University	9	Northwestern University	2022	Regular Decision	Denied	\N	1530	6.59
National University	9	Northwestern University	2022	Regular Decision	Accepted	\N	\N	6.37
National University	9	Northwestern University	2023	Regular Decision	Denied	33	1570	6.91
National University	9	Northwestern University	2023	Regular Decision	Denied	\N	1570	6.81
National University	9	Northwestern University	2023	Regular Decision	Denied	\N	1420	6.47
National University	9	Northwestern University	2023	Early Decision	Denied	\N	1450	6.34
National University	9	Northwestern University	2023	Regular Decision	Denied	\N	1490	6.04
National University	9	Northwestern University	2023	Regular Decision	Denied	22	\N	5.9
National University	12	Columbia University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1600	6.8
National University	12	Columbia University	2021	Regular Decision	Denied	\N	1500	6.47
National University	12	Columbia University	2021	Regular Decision	Denied	\N	1310	6.34
National University	12	Columbia University	2021	Early Decision	Denied	\N	1230	5.88
National University	12	Columbia University	2021	Regular Decision	Denied	\N	\N	5.86
National University	12	Columbia University	2021	Regular Decision	Denied	\N	\N	5.74
National University	12	Columbia University	2021	Regular Decision	Denied	\N	\N	5.66
National University	12	Columbia University	2021	Regular Decision	Denied	\N	\N	5.1
National University	12	Columbia University	2022	Regular Decision	Denied	\N	1560	6.42
National University	12	Columbia University	2022	Early Decision	Denied	\N	1370	6.07
National University	12	Columbia University	2022	Regular Decision	Denied	\N	\N	5.78
National University	12	Columbia University	2023	Regular Decision	Outcome Unknown (Waitlisted)	33	1570	6.91
National University	12	Columbia University	2023	Regular Decision	Accepted	\N	1570	6.81
National University	12	Columbia University	2023	Early Decision	Denied	\N	1440	6.41
National University	12	Columbia University	2023	Regular Decision	Denied	\N	1530	6.23
National University	12	Columbia University	2023	Regular Decision	Denied	\N	\N	5.91
National University	12	Columbia University	2023	Regular Decision	Denied	\N	1310	5.91
National University	12	Columbia University	2023	Regular Decision	Denied	\N	\N	5.62
National University	12	Columbia University	2023	Early Decision	Denied	\N	1130	4.99
National University	12	Cornell University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1600	6.8
National University	12	Cornell University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	6.63
National University	12	Cornell University	2021	Early Decision	Accepted	\N	\N	6.56
National University	12	Cornell University	2021	Regular Decision	Denied	\N	1500	6.47
National University	12	Cornell University	2021	Early Decision	Accepted	\N	1510	6.45
National University	12	Cornell University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.44
National University	12	Cornell University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1510	6.41
National University	12	Cornell University	2021	Early Decision	Denied	\N	\N	6.38
National University	12	Cornell University	2021	Early Decision	Accepted	\N	1470	6.28
National University	12	Cornell University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.18
National University	12	Cornell University	2021	Early Decision	Accepted (Deferred)	\N	1490	6.16
National University	12	Cornell University	2021	Early Decision	Accepted	\N	1330	6.15
National University	12	Cornell University	2021	Early Decision	Denied (Deferred)	\N	1450	6.15
National University	12	Cornell University	2021	Regular Decision	Denied	\N	1540	6.13
National University	12	Cornell University	2021	Early Decision	Denied (Deferred)	\N	1450	6.09
National University	12	Cornell University	2021	Early Decision	Accepted	\N	1290	5.96
National University	12	Cornell University	2021	Regular Decision	Denied	\N	1230	5.88
National University	12	Cornell University	2021	Regular Decision	Denied	\N	\N	5.86
National University	12	Cornell University	2021	Regular Decision	Denied	\N	\N	5.67
National University	12	Cornell University	2021	Regular Decision	Denied	\N	\N	5.1
National University	12	Cornell University	2021	Regular Decision	Denied	\N	1260	4.83
National University	12	Cornell University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	6.77
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1570	6.75
National University	12	Cornell University	2022	Regular Decision	Guaranteed Transfer	\N	1440	6.72
National University	12	Cornell University	2022	Early Decision	Accepted	\N	\N	6.7
National University	12	Cornell University	2022	Early Decision	Denied	\N	1500	6.58
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1560	6.53
National University	12	Cornell University	2022	Early Decision	Denied	\N	1450	6.37
National University	12	Cornell University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.35
National University	12	Cornell University	2022	Early Decision	Accepted	\N	1510	6.27
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1230	6.27
National University	12	Cornell University	2022	Regular Decision	Denied	\N	\N	6.23
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1300	6.12
National University	12	Cornell University	2022	Early Decision	Accepted	\N	1310	6.07
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1370	6.07
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1510	6
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1330	5.99
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1510	5.97
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1460	5.9
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1500	5.77
National University	12	Cornell University	2022	Regular Decision	Guaranteed Transfer	\N	1320	5.69
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1360	5.67
National University	12	Cornell University	2022	Early Decision	Accepted (Deferred --> Waitlisted)	\N	1310	5.62
National University	12	Cornell University	2022	Regular Decision	Denied	\N	\N	4.65
National University	12	Cornell University	2023	Regular Decision	Denied	33	1570	6.91
National University	12	Cornell University	2023	Early Decision	Accepted	34	1350	6.65
National University	12	Cornell University	2023	Regular Decision	Denied	\N	1570	6.59
National University	12	Cornell University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.53
National University	12	Cornell University	2023	Regular Decision	Accepted (Waitlisted)	\N	1420	6.47
National University	12	Cornell University	2023	Regular Decision	Denied	31	\N	6.36
National University	12	Cornell University	2023	Early Decision	Denied	\N	1370	6.31
National University	12	Cornell University	2023	Regular Decision	Denied	\N	1460	6.17
National University	12	Cornell University	2023	Early Decision	Accepted	30	1320	6.12
National University	12	Cornell University	2023	Early Decision	Denied	\N	1490	6.04
National University	12	Cornell University	2023	Regular Decision	Denied	\N	1310	5.91
National University	12	Cornell University	2023	Regular Decision	Denied	22	\N	5.9
National University	12	University of Chicago	2021	Early Decision II	Accepted	\N	1510	6.68
National University	12	University of Chicago	2021	Early Decision II	Denied	\N	1470	6.63
National University	12	University of Chicago	2021	Early Action	Denied	\N	1490	6.45
National University	12	University of Chicago	2021	Early Action	Denied	\N	1540	6.13
National University	12	University of Chicago	2021	Early Action	Denied (Deferred)	\N	\N	5.86
National University	12	University of Chicago	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1580	6.81
National University	12	University of Chicago	2022	Early Action	Denied (Deferred)	\N	\N	6.55
National University	12	University of Chicago	2022	Early Decision	Accepted	\N	1510	6.45
National University	12	University of Chicago	2022	Early Decision II	Denied	\N	1450	6.37
National University	12	University of Chicago	2022	Early Decision	Accepted	\N	1470	6.17
National University	12	University of Chicago	2023	Early Decision	Denied	\N	1500	6.13
National University	12	University of Chicago	2023	Regular Decision	Denied	\N	1490	6.04
National University	12	University of Chicago	2023	Regular Decision	Denied	\N	\N	5.62
National University	12	University of Chicago	2023	Early Decision	Denied	\N	1370	5.6
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	1390	6.68
National University	15	UC Berkeley	2021	Regular Decision	Accepted	\N	1470	6.63
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	\N	6.54
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	1500	6.47
National University	15	UC Berkeley	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.38
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	\N	6.38
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	1490	6.18
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	1490	6.16
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	\N	6.15
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	1450	6.15
National University	15	UC Berkeley	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.13
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	1130	5.89
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	\N	5.83
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	\N	5.55
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	1280	5.49
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	\N	5.1
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1580	6.81
National University	15	UC Berkeley	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	6.77
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1570	6.75
National University	15	UC Berkeley	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1440	6.72
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1570	6.67
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	6.64
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1530	6.59
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1500	6.58
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1550	6.56
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	6.55
National University	15	UC Berkeley	2022	Regular Decision	Accepted	31	\N	6.54
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1450	6.37
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	6.37
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1540	6.35
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1230	6.27
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	6.23
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	6.23
National University	15	UC Berkeley	2022	Regular Decision	Accepted	\N	\N	6.2
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	6.19
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1370	6.07
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1270	6.05
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1460	5.9
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1320	5.69
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1310	5.62
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1200	5.44
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	5.44
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	5.43
National University	15	UC Berkeley	2023	Regular Decision	Accepted	35	1490	6.91
National University	15	UC Berkeley	2023	Regular Decision	Accepted	\N	1570	6.81
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1580	6.66
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	\N	6.66
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1420	6.47
National University	15	UC Berkeley	2023	Regular Decision	Denied	31	\N	6.36
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1450	6.34
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1370	6.31
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1460	6.17
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1490	6.04
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1310	5.91
National University	15	UC Berkeley	2023	Regular Decision	Denied	29	\N	5.82
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1430	5.57
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1230	5.39
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	\N	5.28
National University	15	UCLA	2021	Regular Decision	Accepted	\N	1470	6.63
National University	15	UCLA	2021	Regular Decision	Accepted	\N	\N	6.54
National University	15	UCLA	2021	Regular Decision	Accepted	\N	1500	6.47
National University	15	UCLA	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.38
National University	15	UCLA	2021	Regular Decision	Denied	\N	\N	6.38
National University	15	UCLA	2021	Regular Decision	Denied	\N	1490	6.18
National University	15	UCLA	2021	Regular Decision	Denied	\N	1490	6.16
National University	15	UCLA	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.15
National University	15	UCLA	2021	Regular Decision	Denied	\N	1450	6.15
National University	15	UCLA	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.13
National University	15	UCLA	2021	Regular Decision	Denied	\N	1130	5.89
National University	15	UCLA	2021	Regular Decision	Denied	\N	1470	5.87
National University	15	UCLA	2021	Regular Decision	Denied	\N	\N	5.83
National University	15	UCLA	2021	Regular Decision	Denied	\N	\N	5.55
National University	15	UCLA	2021	Regular Decision	Denied	\N	1080	5.34
National University	15	UCLA	2021	Regular Decision	Denied	\N	\N	5.1
National University	15	UCLA	2022	Regular Decision	Denied	\N	1570	6.75
National University	15	UCLA	2022	Regular Decision	Accepted	\N	1440	6.72
National University	15	UCLA	2022	Regular Decision	Denied	\N	1570	6.67
National University	15	UCLA	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1530	6.59
National University	15	UCLA	2022	Regular Decision	Accepted	\N	1500	6.58
National University	15	UCLA	2022	Regular Decision	Denied	31	\N	6.54
National University	15	UCLA	2022	Regular Decision	Accepted (Waitlisted)	\N	1450	6.37
National University	15	UCLA	2022	Regular Decision	Denied	\N	1540	6.35
National University	15	UCLA	2022	Regular Decision	Denied	\N	1230	6.27
National University	15	UCLA	2022	Regular Decision	Denied	\N	\N	6.23
National University	15	UCLA	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.2
National University	15	UCLA	2022	Regular Decision	Accepted	\N	\N	6.19
National University	15	UCLA	2022	Regular Decision	Denied	\N	1370	6.07
National University	15	UCLA	2022	Regular Decision	Denied	\N	1460	5.9
National University	15	UCLA	2022	Regular Decision	Denied	\N	1320	5.69
National University	15	UCLA	2022	Regular Decision	Denied	\N	1310	5.62
National University	15	UCLA	2022	Regular Decision	Denied	\N	1110	5.56
National University	15	UCLA	2022	Regular Decision	Denied	\N	\N	5.44
National University	15	UCLA	2022	Regular Decision	Denied	\N	\N	5.43
National University	15	UCLA	2023	Regular Decision	Accepted	35	1490	6.91
National University	15	UCLA	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1570	6.81
National University	15	UCLA	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1580	6.66
National University	15	UCLA	2023	Regular Decision	Accepted	\N	\N	6.66
National University	15	UCLA	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1420	6.47
National University	15	UCLA	2023	Regular Decision	Denied	31	\N	6.36
National University	15	UCLA	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1450	6.34
National University	15	UCLA	2023	Regular Decision	Denied	\N	1370	6.31
National University	15	UCLA	2023	Regular Decision	Denied	\N	1460	6.17
National University	15	UCLA	2023	Regular Decision	Denied	\N	1490	6.04
National University	15	UCLA	2023	Regular Decision	Denied	\N	1310	5.91
National University	15	UCLA	2023	Regular Decision	Denied	29	\N	5.82
National University	15	UCLA	2023	Regular Decision	Denied	\N	1370	5.6
National University	15	UCLA	2023	Regular Decision	Denied	\N	1430	5.57
National University	15	UCLA	2023	Regular Decision	Denied	\N	1230	5.39
National University	15	UCLA	2023	Regular Decision	Denied	\N	\N	5.28
National University	15	UCLA	2023	Regular Decision	Denied	\N	1130	5.04
National University	15	UCLA	2023	Regular Decision	Denied	\N	1340	5.01
National University	17	Rice University	2021	Regular Decision	Denied	\N	1450	6.15
National University	17	Rice University	2021	Early Decision	Accepted	\N	1410	6.08
National University	17	Rice University	2022	Regular Decision	Denied	\N	1450	6.37
National University	17	Rice University	2022	Regular Decision	Accepted	\N	1540	6.35
National University	17	Rice University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1580	6.66
National University	17	Rice University	2023	Regular Decision	Outcome Unknown (Waitlisted)	31	\N	6.36
National University	17	Rice University	2023	Regular Decision	Denied	\N	1510	5.75
National University	18	Dartmouth College	2021	Regular Decision	Denied	\N	1340	5.58
National University	18	Dartmouth College	2022	Early Decision	Denied	\N	1500	5.51
National University	18	Dartmouth College	2023	Early Decision	Denied (Deferred)	\N	1490	6.77
National University	18	Dartmouth College	2023	Regular Decision	Denied	\N	\N	6.66
National University	18	Vanderbilt University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1570	6.75
National University	18	Vanderbilt University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1440	6.72
National University	18	Vanderbilt University	2022	Regular Decision	Denied	\N	\N	6.23
National University	18	Vanderbilt University	2023	Regular Decision	Denied	\N	1420	6.47
National University	18	Vanderbilt University	2023	Regular Decision	Denied	\N	1450	6.34
National University	20	University of Notre Dame	2021	Restrictive Early Action	Denied	\N	\N	6.04
National University	20	University of Notre Dame	2022	Regular Decision	Denied	\N	1220	6.02
National University	20	University of Notre Dame	2022	Regular Decision	Denied	\N	1330	5.99
National University	20	University of Notre Dame	2022	Restrictive Early Action	Denied	\N	\N	4.93
National University	20	University of Notre Dame	2023	Restrictive Early Action	Denied	\N	1430	5.57
National University	21	University of Michigan	2021	Early Action	Accepted	\N	\N	6.54
National University	21	University of Michigan	2021	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1500	6.47
National University	21	University of Michigan	2021	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1490	6.45
National University	21	University of Michigan	2021	Early Action	Denied (Deferred)	\N	\N	6.38
National University	21	University of Michigan	2021	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1490	6.18
National University	21	University of Michigan	2021	Early Action	Accepted (Deferred)	\N	1490	6.16
National University	21	University of Michigan	2021	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1450	6.15
National University	21	University of Michigan	2021	Early Action	Denied (Deferred)	\N	1540	6.13
National University	21	University of Michigan	2021	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1450	6.09
National University	21	University of Michigan	2021	Early Action	Denied (Deferred)	\N	1250	5.14
National University	21	University of Michigan	2021	Regular Decision	Denied	\N	1260	4.83
National University	21	University of Michigan	2022	Early Action	Accepted	\N	1500	6.58
National University	21	University of Michigan	2022	Early Action	Denied (Deferred)	\N	1440	6.56
National University	21	University of Michigan	2022	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1450	6.37
National University	21	University of Michigan	2022	Early Action	Accepted	\N	\N	6.37
National University	21	University of Michigan	2022	Early Action	Accepted	\N	1540	6.35
National University	21	University of Michigan	2022	Early Action	Accepted	\N	\N	6.19
National University	21	University of Michigan	2022	Early Action	Denied (Deferred)	\N	1270	6.05
National University	21	University of Michigan	2022	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1260	6.04
National University	21	University of Michigan	2022	Regular Decision	Denied	\N	1460	5.9
National University	21	University of Michigan	2022	Early Action	Denied (Deferred)	\N	1450	5.85
National University	21	University of Michigan	2022	Early Action	Denied (Deferred)	\N	1320	5.69
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Waitlisted)	33	1570	6.91
National University	21	University of Michigan	2023	Early Action	Accepted	\N	1570	6.81
National University	21	University of Michigan	2023	Early Action	Denied	\N	1580	6.66
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1570	6.59
National University	21	University of Michigan	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1420	6.47
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Deferred --> Waitlisted)	31	\N	6.36
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1370	6.31
National University	21	University of Michigan	2023	Early Action	Accepted	\N	1300	6.24
National University	21	University of Michigan	2023	Early Action	Accepted	\N	1460	6.17
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Waitlisted)	\N	1500	6.13
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1490	6.04
National University	21	University of Michigan	2023	Early Action	Denied (Deferred)	\N	1420	5.92
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1310	5.91
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Deferred)	\N	1510	5.75
National University	21	University of Michigan	2023	Early Action	Denied (Deferred)	\N	1230	5.39
National University	22	Georgetown University	2021	Regular Decision	Accepted	\N	1600	6.8
National University	22	Georgetown University	2021	Regular Decision	Denied	\N	1500	6.47
National University	22	Georgetown University	2021	Regular Decision	Denied	\N	1490	6.16
National University	22	Georgetown University	2021	Early Action	Denied (Deferred)	\N	1470	5.87
National University	22	Georgetown University	2021	Regular Decision	Denied	\N	\N	5.67
National University	22	Georgetown University	2022	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1440	6.72
National University	22	Georgetown University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.23
National University	22	Georgetown University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1460	5.9
National University	22	Georgetown University	2022	Regular Decision	Denied	\N	1450	5.85
National University	22	Georgetown University	2022	Regular Decision	Denied	\N	\N	5.78
National University	22	Georgetown University	2022	Regular Decision	Denied	\N	1310	5.62
National University	22	Georgetown University	2023	Regular Decision	Accepted	\N	\N	6.66
National University	22	Georgetown University	2023	Regular Decision	Denied	\N	1540	6.53
National University	22	Georgetown University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1530	6.23
National University	22	Georgetown University	2023	Regular Decision	Denied	\N	1160	5.76
National University	22	Georgetown University	2023	Regular Decision	Denied	\N	\N	5.62
National University	22	Georgetown University	2023	Regular Decision	Denied	\N	1370	5.6
National University	22	Georgetown University	2023	Early Action	Denied	\N	1430	5.57
National University	22	University of North Carolina at Chapel Hill	2021	Early Action	Accepted	\N	\N	6.43
National University	22	University of North Carolina at Chapel Hill	2021	Early Action	Denied	\N	1490	6.16
National University	22	University of North Carolina at Chapel Hill	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.13
National University	22	University of North Carolina at Chapel Hill	2021	Regular Decision	Denied	\N	\N	5.1
National University	22	University of North Carolina at Chapel Hill	2022	Regular Decision	Denied	\N	\N	4.65
National University	22	University of North Carolina at Chapel Hill	2023	Early Action	Denied	\N	1370	6.11
National University	22	University of North Carolina at Chapel Hill	2023	Early Action	Denied	\N	1310	5.79
National University	24	Carnegie Mellon University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.18
National University	24	Carnegie Mellon University	2021	Regular Decision	Denied	\N	1450	6.15
National University	24	Carnegie Mellon University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.13
National University	24	Carnegie Mellon University	2021	Early Decision	Denied	\N	\N	5.87
National University	24	Carnegie Mellon University	2021	Regular Decision	Denied	\N	\N	5.74
National University	24	Carnegie Mellon University	2021	Early Decision	Denied	\N	\N	5.73
National University	24	Carnegie Mellon University	2022	Regular Decision	Denied	\N	1570	6.75
National University	24	Carnegie Mellon University	2022	Regular Decision	Accepted	\N	1530	6.59
National University	24	Carnegie Mellon University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1440	6.56
National University	24	Carnegie Mellon University	2022	Regular Decision	Denied	\N	1450	6.37
National University	24	Carnegie Mellon University	2022	Regular Decision	Denied (Waitlisted)	\N	1510	6
National University	24	Carnegie Mellon University	2022	Regular Decision	Denied	\N	1310	5.62
National University	24	Carnegie Mellon University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1570	6.81
National University	24	Carnegie Mellon University	2023	Regular Decision	Denied	\N	\N	5.93
National University	24	Carnegie Mellon University	2023	Early Decision I	Denied	\N	1540	5.92
National University	24	Carnegie Mellon University	2023	Early Decision I	Denied	\N	1510	5.75
National University	24	Carnegie Mellon University	2023	Regular Decision	Denied	\N	1390	5.57
National University	24	Carnegie Mellon University	2023	Regular Decision	Denied	\N	1450	5.57
National University	24	Carnegie Mellon University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1230	5.39
National University	24	Emory University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	6.63
National University	24	Emory University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.38
National University	24	Emory University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.16
National University	24	Emory University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1450	6.09
National University	24	Emory University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	5.87
National University	24	Emory University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	5.74
National University	24	Emory University	2022	Regular Decision	Accepted	\N	1500	6.58
National University	24	Emory University	2022	Early Decision	Accepted	\N	\N	6.39
National University	24	Emory University	2022	Regular Decision	Accepted	\N	\N	6.19
National University	24	Emory University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1370	6.07
National University	24	Emory University	2022	Early Decision	Accepted	\N	140	6.05
National University	24	Emory University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1330	5.99
National University	24	Emory University	2022	Regular Decision	Denied	\N	1450	5.85
National University	24	Emory University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	5.78
National University	24	Emory University	2022	Regular Decision	Denied	\N	\N	5.44
National University	24	Emory University	2022	Early Decision	Denied	\N	\N	4.65
National University	24	Emory University	2023	Regular Decision	Outcome Unknown (Waitlisted)	33	1570	6.91
National University	24	Emory University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1570	6.59
National University	24	Emory University	2023	Early Decision II	Accepted	\N	1260	6.5
National University	24	Emory University	2023	Early Decision II	Denied	\N	1450	6.34
National University	24	Emory University	2023	Regular Decision	Denied	\N	1430	5.57
National University	24	Emory University	2023	Regular Decision	Denied	\N	\N	5.28
National University	24	University of Virginia	2021	Early Action	Outcome Unknown (Waitlisted)	\N	1500	6.47
National University	24	University of Virginia	2021	Early Action	Denied	\N	1490	6.16
National University	24	University of Virginia	2021	Early Action	Denied	\N	1280	5.81
National University	24	University of Virginia	2022	Early Action	Accepted	\N	1570	6.75
National University	24	University of Virginia	2022	Early Action	Accepted	\N	1440	6.72
National University	24	University of Virginia	2022	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1440	6.56
National University	24	University of Virginia	2022	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1540	6.35
National University	24	University of Virginia	2023	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1490	6.04
National University	24	University of Virginia	2023	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1310	5.91
National University	24	Washington University in St. Louis	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	6.63
National University	24	Washington University in St. Louis	2021	Early Decision II	Denied (Deferred)	\N	\N	6.38
National University	24	Washington University in St. Louis	2021	Regular Decision	Denied	\N	1490	6.16
National University	24	Washington University in St. Louis	2021	Early Decision	Accepted	\N	1550	5.88
National University	24	Washington University in St. Louis	2021	Regular Decision	Denied	\N	1470	5.87
National University	24	Washington University in St. Louis	2021	Early Decision	Accepted	\N	1340	5.82
National University	24	Washington University in St. Louis	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1440	6.72
National University	24	Washington University in St. Louis	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1500	6.58
National University	24	Washington University in St. Louis	2022	Regular Decision	Accepted	\N	\N	6.37
National University	24	Washington University in St. Louis	2022	Regular Decision	Denied	\N	\N	6.23
National University	24	Washington University in St. Louis	2022	Regular Decision	Accepted	\N	\N	6.19
National University	24	Washington University in St. Louis	2022	Regular Decision	Accepted	\N	1330	5.99
National University	24	Washington University in St. Louis	2022	Early Decision	Accepted	\N	1500	5.93
National University	24	Washington University in St. Louis	2022	Early Decision	Denied (Deferred)	\N	1460	5.9
National University	24	Washington University in St. Louis	2023	Regular Decision	Outcome Unknown (Waitlisted)	33	1570	6.91
National University	24	Washington University in St. Louis	2023	Regular Decision	Accepted	\N	1580	6.66
National University	24	Washington University in St. Louis	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1570	6.59
National University	24	Washington University in St. Louis	2023	Regular Decision	Denied	\N	\N	6.36
National University	24	Washington University in St. Louis	2023	Regular Decision	Denied	\N	1450	6.34
National University	24	Washington University in St. Louis	2023	Regular Decision	Denied	\N	1530	6.23
National University	24	Washington University in St. Louis	2023	Early Decision II	Accepted	\N	1500	6.13
National University	24	Washington University in St. Louis	2023	Early Decision	Accepted	\N	1490	6.05
National University	24	Washington University in St. Louis	2023	Regular Decision	Denied	\N	1160	5.76
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	1470	6.63
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	\N	6.38
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	1490	6.18
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	1450	6.15
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	\N	5.62
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	\N	5.55
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	1280	5.49
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	1080	5.34
National University	28	UC Davis	2021	Regular Decision	Denied	\N	1250	5.14
National University	28	UC Davis	2021	Regular Decision	Denied	\N	\N	4.83
National University	28	UC Davis	2021	Regular Decision	Denied	\N	\N	4.78
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	1470	6.77
National University	28	UC Davis	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1570	6.75
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	1500	6.58
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	1550	6.56
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	\N	6.54
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	1540	6.35
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	\N	6.23
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	1370	6.07
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	1270	6.05
National University	28	UC Davis	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	5.44
National University	28	UC Davis	2022	Regular Decision	Denied	\N	1200	5.44
National University	28	UC Davis	2023	Regular Decision	Accepted	\N	\N	6.66
National University	28	UC Davis	2023	Regular Decision	Accepted	\N	1450	6.34
National University	28	UC Davis	2023	Regular Decision	Accepted (Waitlisted)	\N	1460	6.17
National University	28	UC Davis	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.04
National University	28	UC Davis	2023	Regular Decision	Accepted	\N	1310	5.91
National University	28	UC Davis	2023	Regular Decision	Accepted	29	\N	5.82
National University	28	UC Davis	2023	Regular Decision	Accepted	\N	1430	5.57
National University	28	UC Davis	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1310	5.47
National University	28	UC Davis	2023	Regular Decision	Denied	\N	1230	5.39
National University	28	UC Davis	2023	Regular Decision	Denied	\N	1340	5.1
National University	28	UC Davis	2023	Regular Decision	Accepted	\N	1130	5.04
National University	28	UC Davis	2023	Regular Decision	Denied	\N	1340	5.01
National University	28	UCSD	2021	Regular Decision	Accepted	\N	1390	6.68
National University	28	UCSD	2021	Regular Decision	Accepted	\N	1470	6.63
National University	28	UCSD	2021	Regular Decision	Accepted	\N	1500	6.47
National University	28	UCSD	2021	Regular Decision	Accepted	\N	\N	6.38
National University	28	UCSD	2021	Regular Decision	Accepted	\N	1490	6.18
National University	28	UCSD	2021	Regular Decision	Accepted	\N	1450	6.15
National University	28	UCSD	2021	Regular Decision	Accepted	\N	1450	6.09
National University	28	UCSD	2021	Regular Decision	Accepted	\N	1130	5.89
National University	28	UCSD	2021	Regular Decision	Denied (Waitlisted)	\N	\N	5.83
National University	28	UCSD	2021	Regular Decision	Accepted	\N	\N	5.62
National University	28	UCSD	2021	Regular Decision	Denied	\N	\N	5.55
National University	28	UCSD	2021	Regular Decision	Denied	\N	1280	5.49
National University	28	UCSD	2021	Regular Decision	Denied	\N	1080	5.34
National University	28	UCSD	2021	Regular Decision	Denied	\N	1250	5.14
National University	28	UCSD	2021	Regular Decision	Denied	\N	\N	4.83
National University	28	UCSD	2021	Regular Decision	Denied	\N	\N	4.78
National University	28	UCSD	2022	Regular Decision	Accepted	\N	1470	6.77
National University	28	UCSD	2022	Regular Decision	Accepted	\N	1570	6.75
National University	28	UCSD	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1500	6.58
National University	28	UCSD	2022	Regular Decision	Accepted	\N	1550	6.56
National University	28	UCSD	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1450	6.37
National University	28	UCSD	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.37
National University	28	UCSD	2022	Regular Decision	Accepted	\N	1540	6.35
National University	28	UCSD	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1230	6.27
National University	28	UCSD	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.23
National University	28	UCSD	2022	Regular Decision	Accepted	\N	\N	6.23
National University	28	UCSD	2022	Regular Decision	Denied	\N	1370	6.07
National University	28	UCSD	2022	Regular Decision	Denied	\N	1460	5.9
National University	28	UCSD	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1320	5.69
National University	28	UCSD	2022	Regular Decision	Denied (Waitlisted)	\N	1310	5.62
National University	28	UCSD	2022	Regular Decision	Denied	\N	1110	5.56
National University	28	UCSD	2022	Regular Decision	Denied	\N	1200	5.44
National University	28	UCSD	2022	Regular Decision	Denied	\N	\N	5.44
National University	28	UCSD	2023	Regular Decision	Denied	\N	1580	6.66
National University	28	UCSD	2023	Regular Decision	Accepted	\N	\N	6.66
National University	28	UCSD	2023	Regular Decision	Accepted	\N	1450	6.34
National University	28	UCSD	2023	Regular Decision	Accepted	\N	1370	6.31
National University	28	UCSD	2023	Regular Decision	Denied	\N	1460	6.17
National University	28	UCSD	2023	Regular Decision	Denied	\N	1490	6.04
National University	28	UCSD	2023	Regular Decision	Denied	29	\N	5.82
National University	28	UCSD	2023	Regular Decision	Denied	\N	1370	5.6
National University	28	UCSD	2023	Regular Decision	Denied	\N	1430	5.57
National University	28	UCSD	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1310	5.47
National University	28	UCSD	2023	Regular Decision	Denied	\N	1230	5.39
National University	28	UCSD	2023	Regular Decision	Denied	\N	\N	5.28
National University	28	UCSD	2023	Regular Decision	Denied	\N	1340	5.1
National University	28	UCSD	2023	Regular Decision	Denied	\N	1130	5.04
National University	28	UCSD	2023	Regular Decision	Denied	\N	1340	5.01
National University	28	University of Florida	2021	Regular Decision	Denied	\N	1170	5.58
National University	28	University of Southern California	2021	Regular Decision	Denied	\N	\N	6.38
National University	28	University of Southern California	2021	Regular Decision	Denied	\N	1450	6.15
National University	28	University of Southern California	2021	Regular Decision	Denied	\N	1450	6.09
National University	28	University of Southern California	2021	Regular Decision	Denied	\N	1130	5.89
National University	28	University of Southern California	2021	Regular Decision	Denied	\N	1230	5.7
National University	28	University of Southern California	2021	Regular Decision	Denied	\N	1280	5.49
National University	28	University of Southern California	2022	Regular Decision	Accepted	\N	1440	6.72
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	\N	6.23
National University	28	University of Southern California	2022	Regular Decision	Accepted	\N	\N	6.19
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	1370	6.07
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	1270	6.05
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	\N	6.01
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	1510	5.97
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	1460	5.9
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	1310	5.62
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	\N	5.33
National University	28	University of Southern California	2023	Early Action	Denied (Deferred)	\N	1580	6.66
National University	28	University of Southern California	2023	Regular Decision	Accepted	\N	1420	6.47
National University	28	University of Southern California	2023	Early Action	Denied (Deferred)	31	\N	6.36
National University	28	University of Southern California	2023	Early Action	Denied (Deferred)	\N	1370	6.31
National University	28	University of Southern California	2023	Early Action	Denied (Deferred)	\N	1460	6.17
National University	28	University of Southern California	2023	Early Action	Outcome Unknown (Deferred)	\N	1500	6.13
National University	28	University of Southern California	2023	Early Action	Denied (Deferred)	\N	1310	5.91
National University	28	University of Southern California	2023	Early Action	Denied (Deferred)	29	\N	5.82
National University	28	University of Southern California	2023	Early Action	Denied (Deferred)	\N	\N	5.28
National University	28	University of Southern California	2023	Regular Decision	Denied	\N	980	5.19
National University	28	University of Southern California	2023	Regular Decision	Denied	\N	1340	5.01
National University	32	The University of Texas at Austin	2021	Priority	Accepted	\N	1490	6.18
National University	32	The University of Texas at Austin	2021	Priority	Denied	\N	1450	6.15
National University	32	The University of Texas at Austin	2021	Regular Decision	Denied	\N	\N	5.62
National University	32	The University of Texas at Austin	2021	Regular Decision	Denied	\N	\N	5.53
National University	32	The University of Texas at Austin	2021	Priority	Denied	\N	1280	5.49
National University	32	The University of Texas at Austin	2021	Regular Decision	Denied	\N	1250	5.14
National University	32	The University of Texas at Austin	2023	Regular Decision	Denied	\N	1510	5.75
National University	33	Georgia Institute of Technology	2021	Early Action II	Accepted (Deferred)	\N	1490	6.45
National University	33	Georgia Institute of Technology	2021	Early Action II	Accepted (Deferred)	\N	1490	6.18
National University	33	Georgia Institute of Technology	2021	Early Action II	Denied	\N	1450	6.15
National University	33	Georgia Institute of Technology	2021	Early Action II	Outcome Unknown (Deferred->Waitlisted)	\N	1540	6.13
National University	33	Georgia Institute of Technology	2021	Early Action II	Denied	\N	1450	6.09
National University	33	Georgia Institute of Technology	2021	Regular Decision	Denied	\N	\N	5.53
National University	33	Georgia Institute of Technology	2022	Early Action II	Accepted	\N	1570	6.75
National University	33	Georgia Institute of Technology	2022	Early Action II	Accepted	\N	1500	6.58
National University	33	Georgia Institute of Technology	2022	Early Action II	Denied	\N	1200	5.23
National University	33	Georgia Institute of Technology	2023	Early Action II	Denied	\N	1500	6.13
National University	33	Georgia Institute of Technology	2023	Regular Decision	Denied	\N	1490	6.04
National University	33	Georgia Institute of Technology	2023	Regular Decision	Denied	\N	1540	5.92
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1470	6.63
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	\N	6.54
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1500	6.47
National University	33	University of California Irvine	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.38
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1490	6.18
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1450	6.09
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1130	5.89
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1550	5.88
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1470	5.87
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1280	5.49
National University	33	University of California Irvine	2021	Regular Decision	Denied	\N	1250	5.14
National University	33	University of California Irvine	2021	Regular Decision	Denied	\N	\N	4.83
National University	33	University of California Irvine	2021	Regular Decision	Denied	\N	\N	4.78
National University	33	University of California Irvine	2022	Regular Decision	Accepted	\N	1500	6.58
National University	33	University of California Irvine	2022	Regular Decision	Accepted	\N	\N	6.55
National University	33	University of California Irvine	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.35
National University	33	University of California Irvine	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.23
National University	33	University of California Irvine	2022	Regular Decision	Accepted	\N	\N	6.2
National University	33	University of California Irvine	2022	Regular Decision	Accepted	\N	\N	6.19
National University	33	University of California Irvine	2022	Regular Decision	Accepted	\N	1370	6.07
National University	33	University of California Irvine	2022	Regular Decision	Accepted	\N	1270	6.05
National University	33	University of California Irvine	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1310	5.62
National University	33	University of California Irvine	2022	Regular Decision	Denied	\N	\N	5.43
National University	33	University of California Irvine	2022	Regular Decision	Denied	\N	1360	4.87
National University	33	University of California Irvine	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1580	6.66
National University	33	University of California Irvine	2023	Regular Decision	Accepted	\N	\N	6.66
National University	33	University of California Irvine	2023	Regular Decision	Accepted	\N	1420	6.47
National University	33	University of California Irvine	2023	Regular Decision	Accepted	31	\N	6.36
National University	33	University of California Irvine	2023	Regular Decision	Accepted	\N	1450	6.34
National University	33	University of California Irvine	2023	Regular Decision	Accepted	\N	1370	6.31
National University	33	University of California Irvine	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1460	6.17
National University	33	University of California Irvine	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.04
National University	33	University of California Irvine	2023	Regular Decision	Accepted	\N	1310	5.91
National University	33	University of California Irvine	2023	Regular Decision	Denied	\N	1370	5.6
National University	33	University of California Irvine	2023	Regular Decision	Denied	\N	1430	5.57
National University	33	University of California Irvine	2023	Regular Decision	Denied	\N	1230	5.39
National University	33	University of California Irvine	2023	Regular Decision	Denied	\N	\N	5.28
National University	33	University of California Irvine	2023	Regular Decision	Denied	\N	1130	5.04
National University	33	University of California Irvine	2023	Regular Decision	Denied	\N	1340	5.01
National University	35	New York University	2021	Regular Decision	Accepted	\N	1390	6.68
National University	35	New York University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	6.63
National University	35	New York University	2021	Regular Decision	Denied	\N	1490	6.51
National University	35	New York University	2021	Regular Decision	Denied	\N	\N	6.44
National University	35	New York University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1510	6.41
National University	35	New York University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.38
National University	35	New York University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1310	6.34
National University	35	New York University	2021	Early Decision II	Denied	\N	1330	6.2
National University	35	New York University	2021	Regular Decision	Accepted	\N	\N	6.15
National University	35	New York University	2021	Regular Decision	Denied	\N	1190	6.01
National University	35	New York University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1130	5.89
National University	35	New York University	2021	Early Decision II	Denied	\N	1230	5.88
National University	35	New York University	2021	Regular Decision	Denied	\N	\N	5.74
National University	35	New York University	2021	Early Decision II	Accepted	\N	\N	5.67
National University	35	New York University	2021	Regular Decision	Denied	\N	\N	5.66
National University	35	New York University	2021	Early Decision	Denied	\N	\N	5.65
National University	35	New York University	2021	Early Decision	Accepted	\N	1180	5.63
National University	35	New York University	2021	Early Decision II	Outcome Unknown (Waitlisted)	\N	1210	5.53
National University	35	New York University	2021	Regular Decision	Denied	\N	1200	5.53
National University	35	New York University	2021	Regular Decision	Denied	\N	1080	5.34
National University	35	New York University	2021	Regular Decision	Denied	\N	\N	5.15
National University	35	New York University	2021	Early Decision II	Accepted (Waitlisted)	\N	\N	5.1
National University	35	New York University	2021	Regular Decision	Denied	\N	\N	5.06
National University	35	New York University	2021	Early Decision	Denied	\N	1080	4.9
National University	35	New York University	2021	Early Decision II	Denied	\N	1260	4.83
National University	35	New York University	2021	Early Decision II	Denied	\N	\N	4.33
National University	35	New York University	2022	Regular Decision	Accepted	\N	\N	6.64
National University	35	New York University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1500	6.58
National University	35	New York University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.43
National University	35	New York University	2022	Regular Decision	Accepted	\N	1450	6.37
National University	35	New York University	2022	Regular Decision	Accepted	\N	\N	6.23
National University	35	New York University	2022	Regular Decision	Accepted	\N	\N	6.2
National University	35	New York University	2022	Regular Decision	Denied	\N	1330	6.11
National University	35	New York University	2022	Early Decision II	Denied	\N	1370	6.07
National University	35	New York University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1330	5.99
National University	35	New York University	2022	Regular Decision	Denied	\N	1510	5.97
National University	35	New York University	2022	Early Decision	Accepted	\N	\N	5.96
National University	35	New York University	2022	Regular Decision	Accepted	\N	1450	5.85
National University	35	New York University	2022	Regular Decision	Denied	\N	\N	5.82
National University	35	New York University	2022	Regular Decision	Denied	\N	1190	5.82
National University	35	New York University	2022	Regular Decision	Accepted	\N	\N	5.78
National University	35	New York University	2022	Regular Decision	Denied	\N	\N	5.73
National University	35	New York University	2022	Regular Decision	Denied	\N	1320	5.69
National University	35	New York University	2022	Early Decision II	Denied	\N	1360	5.67
National University	35	New York University	2022	Regular Decision	Denied	\N	1200	5.44
National University	35	New York University	2022	Regular Decision	Denied	\N	\N	5.33
National University	35	New York University	2022	Regular Decision	Denied	\N	1200	5.23
National University	35	New York University	2022	Regular Decision	Denied	\N	1240	5.16
National University	35	New York University	2022	Regular Decision	Denied	\N	\N	4.87
National University	35	New York University	2022	Early Decision	Denied	\N	1360	4.87
National University	35	New York University	2022	Regular Decision	Denied	\N	1140	4.33
National University	35	New York University	2023	Regular Decision	Denied	\N	1570	6.59
National University	35	New York University	2023	Regular Decision	Denied	\N	1540	6.53
National University	35	New York University	2023	Regular Decision	Denied	\N	1450	6.34
National University	35	New York University	2023	Regular Decision	Denied	\N	1370	6.31
National University	35	New York University	2023	Regular Decision	Denied	\N	1530	6.23
National University	35	New York University	2023	Early Decision II	Outcome Unknown (Waitlisted)	\N	1490	6.04
National University	35	New York University	2023	Regular Decision	Denied	\N	1540	5.92
National University	35	New York University	2023	Early Decision II	Denied	\N	\N	5.91
National University	35	New York University	2023	Regular Decision	Denied	\N	1310	5.91
National University	35	New York University	2023	Regular Decision	Accepted	22	\N	5.9
National University	35	New York University	2023	Regular Decision	Denied	\N	1320	5.76
National University	35	New York University	2023	Regular Decision	Denied	\N	1510	5.75
National University	35	New York University	2023	Regular Decision	Denied	\N	\N	5.62
National University	35	New York University	2023	Regular Decision	Accepted	\N	1370	5.6
National University	35	New York University	2023	Regular Decision	Denied	\N	1430	5.57
National University	35	New York University	2023	Regular Decision	Accepted	\N	\N	5.5
National University	35	New York University	2023	Regular Decision	Denied	\N	1310	5.47
National University	35	New York University	2023	Early Decision	Accepted	\N	\N	5.35
National University	35	New York University	2023	Regular Decision	Denied	\N	\N	5.28
National University	35	New York University	2023	Regular Decision	Denied	\N	980	5.19
National University	35	New York University	2023	Early Decision	Denied	\N	1150	5.01
National University	35	New York University	2023	Regular Decision	Denied	\N	1130	4.99
National University	35	New York University	2023	Early Decision	Accepted (Waitlisted)	\N	960	4.79
National University	35	New York University	2023	Early Decision	Denied	\N	1010	4.39
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Accepted	\N	1470	6.63
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	\N	6.54
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	1500	6.47
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	\N	6.38
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	1490	6.18
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	1450	6.15
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.13
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1130	5.89
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	5.87
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	\N	5.83
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	\N	5.55
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	1280	5.49
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	1080	5.34
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	1250	5.14
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	\N	4.83
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	\N	4.78
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	\N	1470	6.77
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	\N	1440	6.72
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	\N	1500	6.58
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	31	\N	6.54
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	\N	1540	6.35
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1230	6.27
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Denied	\N	\N	6.23
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	\N	\N	6.23
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	\N	\N	6.2
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	\N	\N	6.19
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Denied	\N	1370	6.07
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Denied	\N	1460	5.9
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Denied	\N	1320	5.69
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Denied	\N	1310	5.62
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Denied	\N	1110	5.56
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Denied	\N	\N	5.43
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Accepted	35	1490	6.91
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1580	6.66
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Accepted	\N	\N	6.66
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1450	6.34
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1370	6.31
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Accepted (Waitlisted)	\N	1460	6.17
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1490	6.04
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1310	5.91
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	29	\N	5.82
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1370	5.6
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1430	5.57
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1310	5.47
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1230	5.39
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	\N	5.28
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1340	5.1
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1340	5.01
National University	35	University of Illinois at Urbana-Champaign	2021	Early Action	Accepted	\N	1450	6.09
National University	35	University of Illinois at Urbana-Champaign	2021	Early Action	Accepted	\N	\N	5.29
National University	35	University of Illinois at Urbana-Champaign	2022	Regular Decision	Accepted	\N	1370	6.07
National University	35	University of Illinois at Urbana-Champaign	2022	Regular Decision	Denied	\N	1510	6
National University	35	University of Illinois at Urbana-Champaign	2022	Regular Decision	Denied	\N	1200	5.23
National University	35	University of Illinois at Urbana-Champaign	2022	Regular Decision	Denied	\N	1240	5.16
National University	35	University of Illinois at Urbana-Champaign	2023	Early Action	Accepted	\N	1570	6.59
National University	35	University of Illinois at Urbana-Champaign	2023	Early Action	Accepted	31	\N	6.36
National University	35	University of Illinois at Urbana-Champaign	2023	Early Action	Accepted	\N	1370	6.31
National University	35	University of Illinois at Urbana-Champaign	2023	Early Action	Outcome Unknown (Deferred)	\N	1500	6.13
National University	35	University of Illinois at Urbana-Champaign	2023	Regular Decision	Denied	\N	1490	6.04
National University	35	University of Illinois at Urbana-Champaign	2023	Regular Decision	Denied	\N	1540	5.92
National University	35	University of Illinois at Urbana-Champaign	2023	Regular Decision	Denied	\N	1170	5.16
National University	35	University of Illinois at Urbana-Champaign	2023	Early Action	Denied	19	1070	4.77
National University	35	University of Wisconsin Madison	2021	Early Action	Accepted	\N	\N	6.04
National University	35	University of Wisconsin Madison	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	5.62
National University	35	University of Wisconsin Madison	2021	Early Action	Accepted	\N	1080	5.34
National University	35	University of Wisconsin Madison	2021	Early Action	Denied	\N	1250	5.14
National University	35	University of Wisconsin Madison	2022	Early Action	Denied (Deferred)	\N	1370	6.07
National University	35	University of Wisconsin Madison	2022	Regular Decision	Accepted	\N	1260	6.04
National University	35	University of Wisconsin Madison	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	5.8
National University	35	University of Wisconsin Madison	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1130	5.16
National University	35	University of Wisconsin Madison	2023	Early Action	Accepted	\N	1500	6.6
National University	35	University of Wisconsin Madison	2023	Regular Decision	Outcome Unknown (Waitlisted)	31	\N	6.36
National University	35	University of Wisconsin Madison	2023	Early Action	Outcome Unknown (Deferred)	\N	1310	5.91
National University	35	University of Wisconsin Madison	2023	Early Action	Accepted (Deferred)	\N	1230	5.39
National University	35	University of Wisconsin Madison	2023	Regular Decision	Denied	\N	1170	5.16
National University	35	University of Wisconsin Madison	2023	Early Action	Denied (Deferred)	\N	1230	4.74
National University	39	Boston College	2021	Regular Decision	Accepted	\N	\N	6.38
National University	39	Boston College	2021	Early Decision II	Accepted	\N	\N	6.04
National University	39	Boston College	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	5.87
National University	39	Boston College	2021	Regular Decision	Denied	\N	\N	5.74
National University	39	Boston College	2021	Early Decision II	Accepted (Deferred)	\N	\N	5.65
National University	39	Boston College	2021	Regular Decision	Denied (Waitlisted)	\N	\N	5.1
National University	39	Boston College	2022	Regular Decision	Accepted	\N	1440	6.72
National University	39	Boston College	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1560	6.53
National University	39	Boston College	2022	Regular Decision	Accepted	\N	\N	6.37
National University	39	Boston College	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.23
National University	39	Boston College	2022	Early Decision	Outcome Unknown (Deferred->Waitlisted)	\N	1220	6.02
National University	39	Boston College	2022	Early Decision	Accepted	\N	1420	5.69
National University	39	Boston College	2022	Regular Decision	Denied	\N	1320	5.69
National University	39	Boston College	2022	Regular Decision	Denied	\N	1310	5.62
National University	39	Boston College	2022	Regular Decision	Denied	\N	\N	5.37
National University	39	Boston College	2022	Early Decision	Outcome Unknown (Deferred->Waitlisted)	\N	\N	5.33
National University	39	Boston College	2022	Early Decision II	Denied	\N	1130	5.16
National University	39	Boston College	2022	Regular Decision	Denied	\N	\N	5.13
National University	39	Boston College	2023	Early Decision	Accepted	\N	1270	6.08
National University	39	Boston College	2023	Early Decision	Accepted	\N	1260	6.08
National University	39	Boston College	2023	Regular Decision	Accepted	\N	1310	5.79
National University	39	Boston College	2023	Early Decision	Denied	\N	\N	5.28
National University	39	Boston College	2023	Early Decision II	Denied	\N	1170	5.16
National University	40	Rutgers University	2021	Early Action	Accepted	\N	1280	5.49
National University	40	Rutgers University	2021	Regular Decision	Accepted	\N	\N	5.15
National University	40	Rutgers University	2021	Early Action	Accepted	\N	\N	4.68
National University	40	Rutgers University	2022	Early Action	Accepted (Deferred)	\N	1330	5.99
National University	40	Rutgers University	2022	Early Action	Accepted	\N	1510	5.97
National University	40	Rutgers University	2022	Early Action	Accepted	\N	\N	4.65
National University	40	Rutgers University	2023	Early Action	Accepted	\N	1420	5.94
National University	40	Rutgers University	2023	Early Action	Accepted	\N	1110	5.29
National University	40	Rutgers University	2023	Early Action	Accepted	\N	1130	5.04
National University	40	Tufts University	2021	Regular Decision	Denied	\N	1510	6.41
National University	40	Tufts University	2021	Regular Decision	Denied	\N	1310	6.34
National University	40	Tufts University	2021	Early Decision	Denied	\N	1280	6.18
National University	40	Tufts University	2021	Early Decision	Denied	\N	\N	6.18
National University	40	Tufts University	2021	Regular Decision	Denied	\N	\N	6.15
National University	40	Tufts University	2021	Early Decision II	Accepted	\N	\N	5.94
National University	40	Tufts University	2021	Regular Decision	Denied	\N	1280	5.81
National University	40	Tufts University	2021	Regular Decision	Denied	\N	\N	5.55
National University	40	Tufts University	2021	Regular Decision	Denied	\N	\N	5.1
National University	40	Tufts University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1440	6.72
National University	40	Tufts University	2022	Regular Decision	Accepted	\N	1500	6.58
National University	40	Tufts University	2022	Regular Decision	Denied	\N	1560	6.53
National University	40	Tufts University	2022	Early Decision	Accepted	\N	\N	6.49
National University	40	Tufts University	2022	Early Decision	Accepted	\N	\N	6.37
National University	40	Tufts University	2022	Regular Decision	Denied	\N	\N	6.2
National University	40	Tufts University	2022	Regular Decision	Denied	\N	1330	6.11
National University	40	Tufts University	2022	Early Decision	Accepted	\N	\N	6.06
National University	40	Tufts University	2023	Regular Decision	Accepted	\N	\N	6.66
National University	40	Tufts University	2023	Regular Decision	Denied	\N	1540	6.53
National University	40	Tufts University	2023	Early Decision II	Accepted	\N	1440	6.41
National University	40	Tufts University	2023	Regular Decision	Denied	\N	\N	5.93
National University	40	Tufts University	2023	Regular Decision	Denied	22	\N	5.9
National University	40	Tufts University	2023	Early Decision	Denied	\N	1030	5.87
National University	40	Tufts University	2023	Regular Decision	Denied	\N	\N	5.66
National University	40	Tufts University	2023	Regular Decision	Denied	\N	1430	5.57
National University	40	Tufts University	2023	Regular Decision	Denied	\N	950	5.52
National University	40	University of Washington Seattle	2021	Regular Decision	Accepted	\N	1490	6.18
National University	40	University of Washington Seattle	2021	Regular Decision	Accepted	\N	1450	6.15
National University	40	University of Washington Seattle	2022	Regular Decision	Accepted	\N	1260	6.04
National University	40	University of Washington Seattle	2022	Regular Decision	Accepted	\N	1450	5.85
National University	43	Boston University	2021	Regular Decision	Accepted	\N	1470	6.63
National University	43	Boston University	2021	Regular Decision	Accepted	\N	1510	6.41
National University	43	Boston University	2021	Regular Decision	Accepted	\N	\N	6.38
National University	43	Boston University	2021	Regular Decision	Accepted	\N	1310	6.34
National University	43	Boston University	2021	Early Decision II	Accepted	\N	\N	6.18
National University	43	Boston University	2021	Regular Decision	Accepted	\N	1190	6.01
National University	43	Boston University	2021	Regular Decision	Accepted	\N	1130	5.89
National University	43	Boston University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	5.83
National University	43	Boston University	2021	Regular Decision	Guaranteed Transfer	\N	1280	5.81
National University	43	Boston University	2021	Regular Decision	Denied	\N	\N	5.74
National University	43	Boston University	2021	Regular Decision	Denied	\N	\N	5.66
National University	43	Boston University	2021	\N	Accepted (Deferred)	\N	\N	5.65
National University	43	Boston University	2021	Regular Decision	Denied	\N	1280	5.49
National University	43	Boston University	2021	Regular Decision	Denied	\N	1080	5.34
National University	43	Boston University	2021	Regular Decision	Guaranteed Transfer	\N	\N	5.15
National University	43	Boston University	2021	Regular Decision	Denied	\N	\N	5.1
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1580	6.81
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1470	6.77
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1570	6.75
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1500	6.58
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1550	6.56
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1440	6.56
National University	43	Boston University	2022	Regular Decision	Accepted	\N	\N	6.55
National University	43	Boston University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.43
National University	43	Boston University	2022	Regular Decision	Denied	\N	\N	6.23
National University	43	Boston University	2022	Regular Decision	Denied	\N	1330	6.11
National University	43	Boston University	2022	Regular Decision	Denied	\N	1370	6.07
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1270	6.05
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1220	6.02
National University	43	Boston University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.01
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1330	5.99
National University	43	Boston University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1510	5.97
National University	43	Boston University	2022	Early Decision	Accepted	\N	\N	5.95
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1450	5.85
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1320	5.69
National University	43	Boston University	2022	Regular Decision	Denied	\N	1310	5.62
National University	43	Boston University	2022	Regular Decision	Denied	\N	\N	5.43
National University	43	Boston University	2022	Regular Decision	Denied	\N	1130	5.16
National University	43	Boston University	2022	Regular Decision	Denied	\N	\N	5.13
National University	43	Boston University	2022	Early Decision II	Denied	\N	\N	4.85
National University	43	Boston University	2022	Regular Decision	Denied	\N	930	4.75
National University	43	Boston University	2023	Regular Decision	Accepted	\N	1580	6.66
National University	43	Boston University	2023	Regular Decision	Accepted	\N	1420	6.47
National University	43	Boston University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1450	6.34
National University	43	Boston University	2023	Regular Decision	Accepted	\N	1370	6.31
National University	43	Boston University	2023	Regular Decision	Denied	\N	1530	6.23
National University	43	Boston University	2023	Regular Decision	Accepted	\N	1490	6.04
National University	43	Boston University	2023	Regular Decision	Denied	\N	1420	5.94
National University	43	Boston University	2023	Regular Decision	Denied	\N	1420	5.92
National University	43	Boston University	2023	Regular Decision	Denied	\N	1540	5.92
National University	43	Boston University	2023	Regular Decision	Denied	\N	\N	5.91
National University	43	Boston University	2023	Regular Decision	Guaranteed Transfer	22	\N	5.9
National University	43	Boston University	2023	Early Decision II	Guaranteed Transfer	\N	1030	5.87
National University	43	Boston University	2023	Regular Decision	Denied	\N	1370	5.6
National University	43	Boston University	2023	Regular Decision	Guaranteed Transfer	\N	1430	5.57
National University	43	Boston University	2023	Early Decision II	Denied	\N	1260	5.29
National University	43	Boston University	2023	Early Decision II	Denied	\N	1150	5.01
National University	43	Boston University	2023	Regular Decision	Accepted	\N	\N	4.98
National University	43	The Ohio State University	2021	Early Action	Accepted	\N	1450	6.09
National University	43	The Ohio State University	2021	Early Action	Denied (Deferred)	\N	1280	5.49
National University	43	The Ohio State University	2022	Early Action	Accepted	\N	1370	6.07
National University	43	The Ohio State University	2022	Regular Decision	Denied	\N	\N	4.41
National University	43	The Ohio State University	2023	Regular Decision	Denied	\N	1110	5.29
National University	43	Purdue University	2021	Early Action	Accepted	\N	1450	6.15
National University	43	Purdue University	2021	Early Action	Accepted	\N	1450	6.09
National University	43	Purdue University	2021	Early Action	Accepted	\N	1240	5.85
National University	43	Purdue University	2021	Regular Decision	Accepted	\N	\N	5.29
National University	43	Purdue University	2022	Early Action	Accepted	\N	1570	6.75
National University	43	Purdue University	2022	Regular Decision	Denied	\N	1510	6
National University	43	Purdue University	2022	Early Action	Denied	\N	1420	5.38
National University	43	Purdue University	2022	Early Action	Denied (Deferred)	\N	1200	5.23
National University	43	Purdue University	2022	Regular Decision	Denied	\N	1360	4.87
National University	43	Purdue University	2023	Early Action	Accepted	\N	1510	5.75
National University	43	Purdue University	2023	Early Action	Accepted	\N	1390	5.57
National University	43	Purdue University	2023	Regular Decision	Denied	\N	1450	5.57
National University	46	University of Maryland College Park	2021	Early Action	Accepted	\N	1470	6.63
National University	46	University of Maryland College Park	2021	Early Action	Accepted	\N	\N	6.04
National University	46	University of Maryland College Park	2021	Early Action	Accepted	\N	\N	5.55
National University	46	University of Maryland College Park	2021	Early Action	Accepted	\N	1250	5.14
National University	46	University of Maryland College Park	2022	Early Action	Accepted	\N	1270	6.05
National University	46	University of Maryland College Park	2022	Early Action	Accepted	\N	1450	5.85
National University	46	University of Maryland College Park	2022	Early Action	Accepted	\N	\N	5.8
National University	46	University of Maryland College Park	2022	Regular Decision	Denied	\N	1200	5.23
National University	46	University of Maryland College Park	2022	Regular Decision	Denied	\N	1130	5.16
National University	47	Lehigh University	2021	Regular Decision	Accepted	\N	\N	5.65
National University	47	Lehigh University	2022	Regular Decision	Accepted	\N	\N	5.33
National University	47	Lehigh University	2022	Early Decision	Accepted	\N	1340	4.66
National University	47	Lehigh University	2023	Regular Decision	Accepted	\N	1490	6.04
National University	47	Lehigh University	2023	Regular Decision	Outcome Unknown (Waitlisted)	22	\N	5.9
National University	47	Lehigh University	2023	Regular Decision	Denied	\N	\N	5.66
National University	47	Lehigh University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1130	5.04
National University	47	Lehigh University	2023	Early Decision	Accepted	29	\N	5.04
National University	47	Lehigh University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1340	5.01
National University	47	Lehigh University	2023	Early Decision II	Denied	\N	1230	4.74
National University	47	Texas A&M University	2021	Early Action	Accepted	\N	1450	6.15
National University	47	Texas A&M University	2021	Regular Decision	Denied	\N	\N	5.53
National University	47	University of Rochester	2021	Early Decision II	Accepted	\N	\N	5.87
National University	47	University of Rochester	2021	Regular Decision	Denied	\N	1200	5.53
National University	47	University of Rochester	2022	Regular Decision	Accepted	\N	1500	6.58
National University	47	University of Rochester	2022	Regular Decision	Denied	\N	1440	6.56
National University	47	University of Rochester	2022	Early Decision	Denied	\N	1360	5.67
National University	47	University of Rochester	2023	Regular Decision	Denied	33	1570	6.91
National University	47	University of Rochester	2023	Regular Decision	Accepted	\N	1570	6.81
National University	47	University of Rochester	2023	Regular Decision	Denied	\N	1570	6.59
National University	47	University of Rochester	2023	Regular Decision	Accepted	\N	1420	5.94
National University	47	University of Rochester	2023	Regular Decision	Accepted	\N	1450	5.57
National University	47	University of Rochester	2023	Early Decision	Accepted	29	1350	5.45
National University	47	Virginia Tech	2021	Regular Decision	Denied	\N	\N	5.53
National University	47	Virginia Tech	2022	Early Action	Accepted	\N	1570	6.75
National University	47	Virginia Tech	2022	Early Decision	Accepted	\N	1420	5.38
National University	47	Virginia Tech	2022	Regular Decision	Accepted	\N	\N	3.86
National University	47	Virginia Tech	2023	Early Action	Accepted	\N	1230	5.39
National University	47	Wake Forest University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	5.87
National University	47	Wake Forest University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1170	5.58
National University	47	Wake Forest University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1220	6.02
National University	47	Wake Forest University	2022	Early Decision	Accepted	33	\N	5.57
National University	47	Wake Forest University	2022	Early Decision II	Outcome Unknown (Waitlisted)	\N	\N	5.33
National University	47	Wake Forest University	2023	Early Decision	Outcome Unknown (Deferred)	\N	1160	5.66
National University	47	Wake Forest University	2023	Early Decision	Accepted (Waitlisted)	\N	1400	5.55
National University	47	Wake Forest University	2023	Early Decision II	Outcome Unknown (Waitlisted)	\N	\N	5.28
National University	53	Case Western Reserve University	2021	Early Action	Outcome Unknown (Deferred->Waitlisted)	\N	1310	6.34
National University	53	Case Western Reserve University	2021	Early Action	Denied (Deferred)	\N	1280	5.49
National University	53	Case Western Reserve University	2021	Early Action	Accepted	\N	1080	5.34
National University	53	Case Western Reserve University	2021	Early Action	Denied	\N	1260	4.83
National University	53	Case Western Reserve University	2021	Early Action	Denied	\N	\N	4.78
National University	53	Case Western Reserve University	2022	Early Action	Accepted (Deferred)	\N	1550	6.56
National University	53	Case Western Reserve University	2022	Early Action	Accepted	\N	\N	6.19
National University	53	Case Western Reserve University	2022	Early Action	Accepted	\N	1410	6.05
National University	53	Case Western Reserve University	2022	Early Action	Accepted	\N	1270	6.05
National University	53	Case Western Reserve University	2022	Early Action	Accepted	\N	1330	5.99
National University	53	Case Western Reserve University	2022	Regular Decision	Denied	\N	1360	5.67
National University	53	Case Western Reserve University	2022	Early Action	Denied	\N	1150	5.31
National University	53	Case Western Reserve University	2023	Regular Decision	Outcome Unknown (Waitlisted)	33	1570	6.91
National University	53	Case Western Reserve University	2023	Regular Decision	Denied	\N	1570	6.59
National University	53	Case Western Reserve University	2023	Early Action	Outcome Unknown (Deferred->Waitlisted)	\N	1540	5.92
National University	53	Case Western Reserve University	2023	Early Action	Outcome Unknown (Deferred->Waitlisted)	\N	1510	5.75
National University	53	Case Western Reserve University	2023	Early Action	Outcome Unknown (Deferred->Waitlisted)	\N	1390	5.57
National University	53	Case Western Reserve University	2023	Early Action	Outcome Unknown (Deferred->Waitlisted)	\N	1360	5.57
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1390	6.68
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1510	6.68
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1470	6.63
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1400	6.57
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1490	6.45
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1470	6.44
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1510	6.41
National University	53	Northeastern University	2021	Early Action	Accepted	\N	\N	6.38
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1310	6.34
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1280	6.18
National University	53	Northeastern University	2021	Regular Decision	Accepted	\N	1540	6.13
National University	53	Northeastern University	2021	Early Decision	Accepted	\N	1540	5.97
National University	53	Northeastern University	2021	Early Action	Accepted	\N	\N	5.93
National University	53	Northeastern University	2021	Early Action	Outcome Unknown (Deferred)	\N	1130	5.89
National University	53	Northeastern University	2021	Early Action	Accepted	\N	\N	5.87
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1470	5.87
National University	53	Northeastern University	2021	Regular Decision	Denied	\N	\N	5.83
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1280	5.81
National University	53	Northeastern University	2021	Early Decision	Accepted	\N	1270	5.79
National University	53	Northeastern University	2021	Regular Decision	Denied	\N	\N	5.74
National University	53	Northeastern University	2021	Early Decision II	Accepted	\N	\N	5.73
National University	53	Northeastern University	2021	Early Action	Denied (Deferred)	\N	\N	5.66
National University	53	Northeastern University	2021	Early Action	Accepted	\N	\N	5.65
National University	53	Northeastern University	2021	Early Decision	Accepted	\N	1350	5.65
National University	53	Northeastern University	2021	Early Decision	Accepted	\N	\N	5.55
National University	53	Northeastern University	2021	Early Action	Outcome Unknown (Deferred)	\N	1210	5.53
National University	53	Northeastern University	2021	Early Action	Denied (Deferred)	\N	1280	5.49
National University	53	Northeastern University	2021	Early Action	Accepted	\N	\N	5.3
National University	53	Northeastern University	2021	Early Action	Denied	\N	1250	5.14
National University	53	Northeastern University	2022	Early Action	Outcome Unknown (Deferred->Waitlisted)	\N	1500	6.58
National University	53	Northeastern University	2022	Early Action	Denied (Deferred)	\N	1440	6.56
National University	53	Northeastern University	2022	Regular Decision	Denied	\N	1560	6.53
National University	53	Northeastern University	2022	Early Action	Denied (Deferred)	\N	1560	6.42
National University	53	Northeastern University	2022	Regular Decision	Accepted (Waitlisted)	\N	\N	6.37
National University	53	Northeastern University	2022	Early Action	Accepted	\N	\N	6.23
National University	53	Northeastern University	2022	Early Action	Accepted	\N	\N	6.2
National University	53	Northeastern University	2022	Early Action	Outcome Unknown (Deferred)	\N	\N	6.19
National University	53	Northeastern University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1330	6.11
National University	53	Northeastern University	2022	Early Action	Accepted (Deferred)	\N	1370	6.07
National University	53	Northeastern University	2022	Early Action	Accepted	\N	1270	6.05
National University	53	Northeastern University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1220	6.02
National University	53	Northeastern University	2022	Regular Decision	Denied (Waitlisted)	\N	1510	6
National University	53	Northeastern University	2022	Early Action	Accepted	\N	1460	5.9
National University	53	Northeastern University	2022	Early Action	Accepted	\N	1450	5.85
National University	53	Northeastern University	2022	Early Action	Denied (Deferred)	\N	\N	5.8
National University	53	Northeastern University	2022	Early Action	Denied (Deferred)	\N	\N	5.78
National University	53	Northeastern University	2022	Early Action	Accepted	\N	1500	5.77
National University	53	Northeastern University	2022	Early Action	Denied (Deferred)	\N	1320	5.69
National University	53	Northeastern University	2022	Early Action	Accepted	\N	1200	5.44
National University	53	Northeastern University	2022	Early Action	Denied (Deferred)	\N	\N	5.44
National University	53	Northeastern University	2022	Regular Decision	Denied	\N	\N	5.43
National University	53	Northeastern University	2022	Early Action	Accepted	\N	\N	5.37
National University	53	Northeastern University	2022	Early Decision	Accepted	\N	\N	5.21
National University	53	Northeastern University	2022	Regular Decision	Denied	\N	1240	5.16
National University	53	Northeastern University	2022	Early Action	Denied (Deferred)	\N	\N	5.13
National University	53	Northeastern University	2022	Early Action	Denied	\N	\N	4.93
National University	53	Northeastern University	2022	Early Action	Denied	\N	\N	4.85
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1260	6.5
National University	53	Northeastern University	2023	Early Action	Outcome Unknown (Waitlisted)	31	\N	6.36
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1450	6.34
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1300	6.24
National University	53	Northeastern University	2023	Regular Decision	Denied	\N	1530	6.23
National University	53	Northeastern University	2023	Regular Decision	Accepted	\N	1280	6.23
National University	53	Northeastern University	2023	Early Decision II	Accepted	\N	1450	6.18
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1460	6.17
National University	53	Northeastern University	2023	Early Action	Denied	\N	1310	6.16
National University	53	Northeastern University	2023	Early Action	Accepted (Deferred->Waitlisted)	\N	1490	6.04
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1420	5.94
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1540	5.92
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1310	5.91
National University	53	Northeastern University	2023	Regular Decision	Denied	\N	\N	5.91
National University	53	Northeastern University	2023	Regular Decision	Accepted (Waitlisted)	22	\N	5.9
National University	53	Northeastern University	2023	Early Action	Accepted (Deferred‚ÜíWaitlisted)	29	\N	5.82
National University	53	Northeastern University	2023	Early Decision	Accepted	\N	1500	5.81
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1310	5.79
National University	53	Northeastern University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1160	5.76
National University	53	Northeastern University	2023	Early Decision	Accepted	\N	1230	5.75
National University	53	Northeastern University	2023	Regular Decision	Denied	\N	1510	5.75
National University	53	Northeastern University	2023	Early Action	Denied (Deferred)	\N	\N	5.66
National University	53	Northeastern University	2023	Early Action	Denied	\N	1370	5.6
National University	53	Northeastern University	2023	Early Action	Denied (Deferred)	\N	1390	5.57
National University	53	Northeastern University	2023	Regular Decision	Accepted	\N	1310	5.47
National University	53	Northeastern University	2023	Early Decision	Accepted	33	\N	5.44
National University	53	Northeastern University	2023	Early Decision	Accepted	\N	1230	5.39
National University	53	Northeastern University	2023	Regular Decision	Denied	\N	\N	5.38
National University	53	Northeastern University	2023	Early Decision	Denied	\N	1260	5.29
National University	53	Northeastern University	2023	Early Action	Accepted	\N	\N	5.28
National University	53	Northeastern University	2023	Early Decision	Accepted	\N	1370	5.21
National University	53	Northeastern University	2023	Regular Decision	Denied	\N	980	5.19
National University	53	Northeastern University	2023	Regular Decision	Denied	\N	\N	5.14
National University	53	Northeastern University	2023	Early Action	Denied (Deferred)	\N	1150	5.01
National University	53	Northeastern University	2023	Regular Decision	Denied (Deferred)	\N	1050	4.76
National University	53	University of Minnesota	2022	Early Action	Denied	\N	1340	4.66
National University	53	University of Minnesota	2023	Regular Decision	Accepted	\N	1370	6.11
National University	53	William & Mary	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1280	5.81
National University	53	William & Mary	2021	Early Decision	Accepted	\N	1250	5.74
National University	53	William & Mary	2021	Regular Decision	Denied	\N	1170	5.58
National University	53	William & Mary	2022	Early Decision	Accepted	\N	\N	5.8
National University	58	Stony Brook University	2021	Regular Decision	Denied	\N	1130	5.89
National University	58	Stony Brook University	2021	Regular Decision	Accepted	\N	1240	5.85
National University	58	Stony Brook University	2021	Regular Decision	Denied	\N	\N	5.53
National University	58	Stony Brook University	2021	Regular Decision	Denied	\N	1250	5.14
National University	58	Stony Brook University	2021	Regular Decision	Denied	\N	1260	4.83
National University	58	Stony Brook University	2022	Regular Decision	Accepted	\N	1510	6.45
National University	58	Stony Brook University	2022	Regular Decision	Accepted	\N	\N	6.37
National University	58	Stony Brook University	2022	Regular Decision	Accepted	\N	1510	5.97
National University	58	Stony Brook University	2022	Regular Decision	Accepted	\N	1500	5.77
National University	58	Stony Brook University	2022	Regular Decision	Accepted (Waitlisted)	\N	1110	5.56
National University	58	Stony Brook University	2022	Regular Decision	Accepted	\N	\N	5.44
National University	58	Stony Brook University	2022	Regular Decision	Denied	\N	1200	5.23
National University	58	Stony Brook University	2022	Regular Decision	Denied	\N	1130	5.12
National University	58	Stony Brook University	2022	Regular Decision	Denied	\N	1360	4.87
National University	58	Stony Brook University	2022	Regular Decision	Denied	\N	\N	4.79
National University	58	Stony Brook University	2022	Regular Decision	Denied	\N	\N	4.76
National University	58	Stony Brook University	2022	Regular Decision	Denied	\N	\N	4.43
National University	58	Stony Brook University	2022	Regular Decision	Denied	\N	1140	4.33
National University	58	Stony Brook University	2023	Rolling	Accepted	35	1490	6.91
National University	58	Stony Brook University	2023	Rolling	Accepted	33	1570	6.91
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1500	6.6
National University	58	Stony Brook University	2023	Fall Priority	Accepted	\N	1570	6.59
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1260	6.5
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1370	6.31
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1490	6.04
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1540	5.92
National University	58	Stony Brook University	2023	Rolling	Denied	\N	1310	5.91
National University	58	Stony Brook University	2023	Rolling	Denied	\N	1030	5.87
National University	58	Stony Brook University	2023	Rolling	Outcome Unknown (Waitlisted)	\N	1310	5.79
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1320	5.76
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1510	5.75
National University	58	Stony Brook University	2023	Rolling	Outcome Unknown (Waitlisted)	\N	1360	5.57
National University	58	Stony Brook University	2023	Rolling	Denied	\N	1390	5.57
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1430	5.57
National University	58	Stony Brook University	2023	Rolling	Denied	\N	1110	5.29
National University	58	Stony Brook University	2023	Rolling	Denied	\N	\N	5.28
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1370	5.21
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1340	5.1
National University	58	Stony Brook University	2023	Fall Priority	Denied	\N	1290	5.02
National University	58	Stony Brook University	2023	Rolling	Denied	\N	1130	4.99
National University	58	Stony Brook University	2023	Rolling	Denied	\N	\N	4.98
National Liberal Arts College	1	Williams College	2021	Regular Decision	Denied	\N	\N	6.54
National Liberal Arts College	1	Williams College	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.35
National Liberal Arts College	2	Amherst College	2021	Regular Decision	Denied	\N	1490	6.51
National Liberal Arts College	2	Amherst College	2021	Early Decision	Denied	\N	\N	6.44
National Liberal Arts College	2	Amherst College	2021	Regular Decision	Denied	\N	\N	5.86
National Liberal Arts College	2	Amherst College	2022	Regular Decision	Accepted	\N	\N	6.55
National Liberal Arts College	2	Amherst College	2022	Regular Decision	Denied	\N	1330	6.11
National Liberal Arts College	2	Amherst College	2022	Early Decision	Denied (Deferred)	\N	1320	5.69
National Liberal Arts College	2	Amherst College	2023	Regular Decision	Denied	\N	1540	6.53
National Liberal Arts College	2	Amherst College	2023	Regular Decision	Denied	\N	1450	6.34
National Liberal Arts College	2	Amherst College	2023	Regular Decision	Denied	\N	1310	4.77
National Liberal Arts College	3	United States Naval Academy	2022	Regular Decision	Accepted	\N	1570	6.75
National Liberal Arts College	3	United States Naval Academy	2023	Regular Decision	Guaranteed Transfer	\N	1450	5.57
National Liberal Arts College	4	Pomona College	2022	Early Decision	Denied (Deferred)	\N	\N	6.2
National Liberal Arts College	4	Pomona College	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.19
National Liberal Arts College	4	Pomona College	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.77
National Liberal Arts College	4	Pomona College	2023	Regular Decision	Denied	\N	1280	6.23
National Liberal Arts College	4	Pomona College	2023	Regular Decision	Denied	\N	1370	5.6
National Liberal Arts College	4	Swarthmore College	2021	Regular Decision	Denied	\N	\N	6.54
National Liberal Arts College	4	Swarthmore College	2021	Early Decision	Accepted (Deferred)	\N	1490	6.51
National Liberal Arts College	4	Swarthmore College	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.44
National Liberal Arts College	4	Swarthmore College	2021	Early Decision II	Accepted	\N	1470	6.44
National Liberal Arts College	4	Swarthmore College	2021	Regular Decision	Denied	\N	1510	6.41
National Liberal Arts College	4	Swarthmore College	2021	Regular Decision	Denied	\N	\N	6.15
National Liberal Arts College	4	Swarthmore College	2022	Regular Decision	Accepted	\N	\N	6.64
National Liberal Arts College	4	Swarthmore College	2022	Regular Decision	Denied	\N	1330	6.11
National Liberal Arts College	4	Swarthmore College	2022	Regular Decision	Denied	\N	1260	6.04
National Liberal Arts College	4	Swarthmore College	2023	Regular Decision	Denied	\N	1490	6.77
National Liberal Arts College	4	Swarthmore College	2023	Regular Decision	Denied	\N	1540	6.53
National Liberal Arts College	4	Swarthmore College	2023	Regular Decision	Denied	\N	1450	6.34
National Liberal Arts College	4	Swarthmore College	2023	Regular Decision	Denied	\N	1530	6.23
National Liberal Arts College	4	Swarthmore College	2023	Regular Decision	Denied	\N	1310	6.16
National Liberal Arts College	4	Swarthmore College	2023	Regular Decision	Denied	\N	\N	5.91
National Liberal Arts College	4	Swarthmore College	2023	Early Decision II	Denied	\N	1040	4.85
National Liberal Arts College	9	Bowdoin College	2021	Early Decision	Accepted	\N	\N	6.32
National Liberal Arts College	9	Bowdoin College	2021	Regular Decision	Denied	\N	\N	5.29
National Liberal Arts College	9	Bowdoin College	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	6.77
National Liberal Arts College	9	Bowdoin College	2022	Regular Decision	Denied	\N	\N	5.35
National Liberal Arts College	9	Bowdoin College	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.77
National Liberal Arts College	9	Bowdoin College	2023	Regular Decision	Denied	\N	1310	6.16
National Liberal Arts College	9	Bowdoin College	2023	Regular Decision	Denied	\N	\N	5.66
National Liberal Arts College	9	Carleton College	2021	Regular Decision	Denied	\N	\N	5.29
National Liberal Arts College	9	Carleton College	2022	Early Decision	Accepted	\N	\N	5.64
National Liberal Arts College	11	Claremont McKenna College	2023	Regular Decision	Denied	\N	1490	6.77
National Liberal Arts College	11	Claremont McKenna College	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.66
National Liberal Arts College	11	Claremont McKenna College	2023	Regular Decision	Accepted	\N	1420	5.92
National Liberal Arts College	11	Grinnell College	2021	Regular Decision	Denied	\N	1260	4.83
National Liberal Arts College	11	Grinnell College	2022	Regular Decision	Accepted	\N	\N	6.64
National Liberal Arts College	11	Grinnell College	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	5.35
National Liberal Arts College	11	Middlebury College	2021	Early Decision	Denied	\N	1280	5.81
National Liberal Arts College	11	Middlebury College	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.66
National Liberal Arts College	11	Middlebury College	2022	Early Decision	Accepted	32	\N	5.78
National Liberal Arts College	11	Middlebury College	2023	Regular Decision	Accepted	\N	1470	6.77
National Liberal Arts College	11	Middlebury College	2023	Regular Decision	Accepted	\N	\N	6.64
National Liberal Arts College	11	Wesleyan University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1510	6.41
National Liberal Arts College	11	Wesleyan University	2021	Regular Decision	Accepted	\N	\N	6.38
National Liberal Arts College	11	Wesleyan University	2021	Regular Decision	Denied	\N	1190	6.01
National Liberal Arts College	11	Wesleyan University	2021	Regular Decision	Denied	\N	\N	5.66
National Liberal Arts College	11	Wesleyan University	2021	Regular Decision	Denied	\N	\N	5.29
National Liberal Arts College	11	Wesleyan University	2021	Regular Decision	Denied	\N	\N	5.1
National Liberal Arts College	11	Wesleyan University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.35
National Liberal Arts College	11	Wesleyan University	2022	Regular Decision	Denied	\N	\N	6.2
National Liberal Arts College	11	Wesleyan University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1330	6.11
National Liberal Arts College	11	Wesleyan University	2022	Early Decision	Denied (Deferred)	\N	\N	6.01
National Liberal Arts College	11	Wesleyan University	2023	Regular Decision	Accepted	\N	1540	6.53
National Liberal Arts College	11	Wesleyan University	2023	Regular Decision	Denied	\N	1280	6.23
National Liberal Arts College	11	Wesleyan University	2023	Early Decision	Denied	\N	1370	6.11
National Liberal Arts College	11	Wesleyan University	2023	Regular Decision	Denied	\N	\N	5.66
National Liberal Arts College	11	Wesleyan University	2023	Regular Decision	Denied	\N	1370	5.6
National Liberal Arts College	11	Wesleyan University	2023	Regular Decision	Denied	\N	1430	5.57
National Liberal Arts College	11	Wesleyan University	2023	Early Decision	Denied	\N	950	5.52
National Liberal Arts College	11	Wesleyan University	2023	Regular Decision	Denied	\N	980	5.19
National Liberal Arts College	11	Wesleyan University	2023	Early Decision	Denied	30	\N	4.92
National University	1	Princeton University	2022	Restrictive Early Action	Denied (Deferred)	\N	1540	6.35
\.


--
-- PostgreSQL database dump complete
--

