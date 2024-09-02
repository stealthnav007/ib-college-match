--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+1)
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
    "GPA" double precision,
    id bigint NOT NULL
);


ALTER TABLE public.raw_data OWNER TO ibcm;

--
-- Name: raw_data_id_seq; Type: SEQUENCE; Schema: public; Owner: ibcm
--

ALTER TABLE public.raw_data ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.raw_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: raw_data; Type: TABLE DATA; Schema: public; Owner: ibcm
--

COPY public.raw_data ("Category", "Rank", "School", "Year", "Application Type", "Outcome", "ACT", "SAT", "GPA", id) FROM stdin;
National University	1	Princeton University	2021	Regular Decision	Denied	\N	1600	6.81	1
National University	1	Princeton University	2021	Regular Decision	Denied	\N	1390	6.69	2
National University	1	Princeton University	2021	Regular Decision	Denied	\N	1230	5.89	3
National University	1	Princeton University	2022	Regular Decision	Accepted	\N	1560	6.52	4
National University	1	Princeton University	2022	Restrictive Early Action	Accepted	\N	1430	6.45	5
National University	1	Princeton University	2022	Regular Decision	Denied	\N	1560	6.41	6
National University	1	Princeton University	2022	Regular Decision	Denied	\N	\N	5.77	7
National University	1	Princeton University	2023	Restrictive Early Action	Accepted	35	1490	6.92	8
National University	1	Princeton University	2023	Restrictive Early Action	Denied (Deferred)	33	1570	6.9	9
National University	1	Princeton University	2023	Restrictive Early Action	Denied (Deferred)	\N	1570	6.82	10
National University	1	Princeton University	2023	Regular Decision	Denied	\N	1580	6.65	11
National University	1	Princeton University	2023	Restrictive Early Action	Accepted	\N	1510	6.64	12
National University	1	Princeton University	2023	Regular Decision	Denied	\N	1280	6.24	13
National University	2	MIT	2021	Early Action	Denied (Deferred)	\N	1490	6.44	14
National University	2	MIT	2022	Early Action	Denied (Deferred)	\N	1570	6.76	15
National University	2	MIT	2022	Early Action	Denied (Deferred)	\N	1570	6.66	16
National University	2	MIT	2022	Regular Decision	Denied	31	\N	6.53	17
National University	2	MIT	2022	Early Action	Denied (Deferred)	\N	1450	6.36	18
National University	2	MIT	2023	Regular Decision	Denied	\N	1570	6.8	19
National University	2	MIT	2023	Regular Decision	Denied	\N	1580	6.65	20
National University	2	MIT	2023	Early Action	Denied (Deferred)	\N	1500	6.59	21
National University	2	MIT	2023	Regular Decision	Denied	\N	1540	5.91	22
National University	2	MIT	2023	Regular Decision	Denied	\N	1310	4.78	23
National University	3	Harvard University	2021	Regular Decision	Accepted	\N	1600	6.81	24
National University	3	Harvard University	2021	Regular Decision	Denied	\N	1490	6.46	25
National University	3	Harvard University	2021	Regular Decision	Denied	\N	1510	6.42	26
National University	3	Harvard University	2021	Regular Decision	Denied	\N	1490	6.19	27
National University	3	Harvard University	2021	Regular Decision	Denied	\N	\N	6.16	28
National University	3	Harvard University	2021	Regular Decision	Denied	\N	\N	5.85	29
National University	3	Harvard University	2021	Restrictive Early Action	Denied	\N	\N	5.73	30
National University	3	Harvard University	2021	Regular Decision	Denied	\N	\N	5.09	31
National University	3	Harvard University	2022	Regular Decision	Denied	\N	1300	6.11	32
National University	3	Harvard University	2023	Regular Decision	Denied	\N	1570	6.8	33
National University	3	Harvard University	2023	Regular Decision	Denied	\N	1490	6.76	34
National University	3	Harvard University	2023	Restrictive Early Action	Outcome Unknown (Waitlisted)	\N	\N	6.67	35
National University	3	Harvard University	2023	Regular Decision	Denied	\N	1580	6.67	36
National University	3	Harvard University	2023	Regular Decision	Denied	\N	1500	6.59	37
National University	3	Harvard University	2023	Restrictive Early Action	Accepted (Deferred)	\N	1530	6.22	38
National University	3	Harvard University	2023	Regular Decision	Denied	\N	1310	5.92	39
National University	3	Harvard University	2023	Restrictive Early Action	Denied (Deferred)	22	\N	5.91	40
National University	3	Harvard University	2023	Regular Decision	Denied	\N	\N	5.61	41
National University	4	Stanford	2021	Regular Decision	Denied	\N	1490	6.17	42
National University	4	Stanford	2021	Regular Decision	Denied	\N	1340	5.57	43
National University	4	Stanford	2022	Regular Decision	Denied	\N	1570	6.68	44
National University	4	Stanford	2022	Regular Decision	Denied	\N	1550	6.57	45
National University	4	Stanford	2022	Restrictive Early Action	Denied	\N	\N	6.38	46
National University	4	Stanford	2022	Regular Decision	Denied	\N	1540	6.34	47
National University	4	Stanford	2023	Restrictive Early Action	Denied	\N	1580	6.67	48
National University	4	Stanford	2023	Regular Decision	Denied	\N	1460	6.16	49
National University	5	Yale	2021	Regular Decision	Accepted	\N	1600	6.79	50
National University	5	Yale	2021	Restrictive Early Action	Accepted	\N	\N	6.55	51
National University	5	Yale	2021	Regular Decision	Denied	\N	\N	6.37	52
National University	5	Yale	2021	Regular Decision	Denied	\N	1230	5.87	53
National University	5	Yale	2022	Restrictive Early Action	Accepted	\N	1580	6.8	54
National University	5	Yale	2022	Regular Decision	Denied	\N	1560	6.54	55
National University	5	Yale	2022	Regular Decision	Accepted	\N	1540	6.36	56
National University	5	Yale	2022	Regular Decision	Denied	\N	\N	5.77	57
National University	5	Yale	2023	Regular Decision	Denied	33	1570	6.9	58
National University	5	Yale	2023	Regular Decision	Denied	\N	1570	6.82	59
National University	5	Yale	2023	Regular Decision	Denied	\N	1490	6.78	60
National University	5	Yale	2023	Single-Choice Early Action	Denied (Deferred)	\N	1570	6.58	61
National University	5	Yale	2023	Single-Choice Early Action	Denied	\N	1540	6.54	62
National University	5	Yale	2023	Regular Decision	Denied	\N	1370	6.3	63
National University	5	Yale	2023	Regular Decision	Denied	\N	1510	5.76	64
National University	5	Yale	2023	Single-Choice Early Action	Denied	\N	\N	5.63	65
National University	6	University of Pennsylvania	2021	Early Decision	Denied	\N	1510	6.4	66
National University	6	University of Pennsylvania	2021	Early Decision	Denied (Deferred)	\N	1490	6.17	67
National University	6	University of Pennsylvania	2021	Regular Decision	Denied	\N	1490	6.15	68
National University	6	University of Pennsylvania	2021	Regular Decision	Denied	\N	1230	5.89	69
National University	6	University of Pennsylvania	2021	Early Decision	Denied	\N	1280	5.5	70
National University	6	University of Pennsylvania	2021	Early Decision	Denied	\N	\N	5.11	71
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	1560	6.41	72
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	1450	6.38	73
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	1540	6.36	74
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	\N	6.18	75
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	1370	6.06	76
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	1460	5.91	77
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	\N	5.77	78
National University	6	University of Pennsylvania	2022	Regular Decision	Denied	\N	1200	5.45	79
National University	6	University of Pennsylvania	2023	Regular Decision	Denied	33	1570	6.92	80
National University	6	University of Pennsylvania	2023	Early Decision	Denied	\N	1400	6.74	81
National University	6	University of Pennsylvania	2023	Regular Decision	Denied	\N	1500	6.59	82
National University	6	University of Pennsylvania	2023	Regular Decision	Denied	\N	1570	6.6	83
National University	6	University of Pennsylvania	2023	Regular Decision	Denied	\N	1420	6.48	84
National University	6	University of Pennsylvania	2023	Early Decision	Denied	31	\N	6.37	85
National University	6	University of Pennsylvania	2023	Regular Decision	Denied	22	\N	5.91	86
National University	6	University of Pennsylvania	2023	Regular Decision	Denied	\N	\N	5.61	87
National University	6	University of Pennsylvania	2023	Regular Decision	Denied	\N	1370	5.59	88
National University	7	California Institute of Technology	2021	Early Action	Denied	\N	1510	6.46	89
National University	7	California Institute of Technology	2022	Early Action	Denied	\N	1570	6.68	90
National University	7	California Institute of Technology	2022	Regular Decision	Denied	\N	1450	6.38	91
National University	7	California Institute of Technology	2022	Regular Decision	Denied	\N	1510	5.99	92
National University	7	California Institute of Technology	2023	Regular Decision	Denied	\N	1310	4.78	93
National University	7	Duke	2021	Regular Decision	Denied	\N	1390	6.69	94
National University	7	Duke	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.17	95
National University	7	Duke	2022	Regular Decision	Denied	\N	1440	6.71	96
National University	7	Duke	2022	Regular Decision	Denied	\N	1500	6.57	97
National University	7	Duke	2022	Regular Decision	Denied	\N	1550	6.57	98
National University	7	Duke	2022	Regular Decision	Denied	\N	1450	6.38	99
National University	7	Duke	2023	Early Decision	Accepted (Deferred)	\N	1500	6.59	100
National University	7	Duke	2023	Regular Decision	Denied	\N	\N	6.19	101
National University	7	Duke	2023	Early Decision	Denied	\N	1460	6.16	102
National University	9	Brown University	2021	Early Decision	Accepted (Deferred)	\N	1600	6.81	103
National University	9	Brown University	2021	Regular Decision	Denied	\N	\N	6.53	104
National University	9	Brown University	2021	Regular Decision	Denied	\N	1490	6.52	105
National University	9	Brown University	2021	Early Decision	Denied	\N	1470	6.43	106
National University	9	Brown University	2021	Regular Decision	Denied	\N	1510	6.4	107
National University	9	Brown University	2021	Early Decision	Denied (Deferred)	\N	1540	6.14	108
National University	9	Brown University	2021	Regular Decision	Denied	\N	1230	5.89	109
National University	9	Brown University	2021	Early Decision	Denied	\N	\N	5.8	110
National University	9	Brown University	2021	Early Decision	Denied (Deferred)	\N	1340	5.59	111
National University	9	Brown University	2022	Regular Decision	Denied	\N	\N	6.63	112
National University	9	Brown University	2022	Regular Decision	Denied	\N	\N	6.54	113
National University	9	Brown University	2022	Regular Decision	Denied	\N	1540	6.36	114
National University	9	Brown University	2022	Early Decision	Denied	\N	\N	6.22	115
National University	9	Brown University	2022	Regular Decision	Denied	\N	\N	6.2	116
National University	9	Brown University	2022	Early Decision	Accepted (Deferred)	\N	1330	6.1	117
National University	9	Brown University	2022	Early Decision	Denied	\N	1260	6.03	118
National University	9	Brown University	2022	Early Decision	Denied (Deferred)	\N	\N	5.77	119
National University	9	Brown University	2022	Regular Decision	Denied	\N	1500	5.76	120
National University	9	Brown University	2023	Regular Decision	Denied	\N	1540	6.52	121
National University	9	Brown University	2023	Early Decision	Accepted	35	\N	6.47	122
National University	9	Brown University	2023	Early Decision	Denied (Deferred)	\N	1420	6.46	123
National University	9	Brown University	2023	Regular Decision	Denied	\N	1370	6.3	124
National University	9	Brown University	2023	Regular Decision	Denied	\N	1530	6.22	125
National University	9	Brown University	2023	Early Decision	Denied	\N	1280	6.22	126
National University	9	Brown University	2023	Regular Decision	Denied	\N	1310	3.17	127
National University	9	Brown University	2023	Regular Decision	Denied	\N	\N	5.92	128
National University	9	Brown University	2023	Early Decision	Denied	\N	1310	5.92	129
National University	9	Brown University	2023	Regular Decision	Denied	22	\N	5.91	130
National University	9	Brown University	2023	Early Decision	Denied	\N	\N	5.65	131
National University	9	Brown University	2023	Regular Decision	Denied	\N	1430	5.58	132
National University	9	Johns Hopkins University	2021	Early Decision	Denied	\N	1470	6.64	133
National University	9	Johns Hopkins University	2021	Early Decision II	Accepted	\N	1400	6.56	134
National University	9	Johns Hopkins University	2021	Regular Decision	Denied	\N	1500	6.48	135
National University	9	Johns Hopkins University	2021	Regular Decision	Denied	\N	1510	6.42	136
National University	9	Johns Hopkins University	2021	Regular Decision	Denied	\N	1080	5.35	137
National University	9	Johns Hopkins University	2021	Regular Decision	Denied	\N	\N	5.34	138
National University	9	Johns Hopkins University	2022	Regular Decision	Accepted	\N	\N	6.63	139
National University	9	Johns Hopkins University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1530	6.6	140
National University	9	Johns Hopkins University	2022	Regular Decision	Denied	\N	1550	6.57	141
National University	9	Johns Hopkins University	2022	Early Decision II	Denied	\N	\N	6.44	142
National University	9	Johns Hopkins University	2022	Regular Decision	Denied	\N	1450	6.36	143
National University	9	Johns Hopkins University	2022	Regular Decision	Denied	\N	1230	6.28	144
National University	9	Johns Hopkins University	2022	Early Decision	Denied	\N	1330	6	145
National University	9	Johns Hopkins University	2022	Regular Decision	Denied	\N	\N	5.79	146
National University	9	Johns Hopkins University	2022	Regular Decision	Denied	\N	1360	5.66	147
National University	9	Johns Hopkins University	2023	Regular Decision	Denied	33	1570	6.9	148
National University	9	Johns Hopkins University	2023	Regular Decision	Denied	\N	1570	6.82	149
National University	9	Johns Hopkins University	2023	Early Decision II	Outcome Unknown (Waitlisted)	\N	1570	6.58	150
National University	9	Johns Hopkins University	2023	Early Decision II	Denied	\N	1310	5.9	151
National University	9	Johns Hopkins University	2023	Regular Decision	Denied	\N	1390	5.56	152
National University	9	Northwestern University	2021	Regular Decision	Denied	\N	1390	6.67	153
National University	9	Northwestern University	2021	Regular Decision	Denied	\N	1470	6.64	154
National University	9	Northwestern University	2021	Regular Decision	Denied	\N	1490	6.19	155
National University	9	Northwestern University	2022	Regular Decision	Denied	\N	1530	6.6	156
National University	9	Northwestern University	2022	Regular Decision	Accepted	\N	\N	6.38	157
National University	9	Northwestern University	2023	Regular Decision	Denied	33	1570	6.92	158
National University	9	Northwestern University	2023	Regular Decision	Denied	\N	1570	6.8	159
National University	9	Northwestern University	2023	Regular Decision	Denied	\N	1420	6.46	160
National University	9	Northwestern University	2023	Early Decision	Denied	\N	1450	6.35	161
National University	9	Northwestern University	2023	Regular Decision	Denied	\N	1490	6.05	162
National University	9	Northwestern University	2023	Regular Decision	Denied	22	\N	5.89	163
National University	12	Columbia University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1600	6.81	164
National University	12	Columbia University	2021	Regular Decision	Denied	\N	1500	6.46	165
National University	12	Columbia University	2021	Regular Decision	Denied	\N	1310	6.35	166
National University	12	Columbia University	2021	Early Decision	Denied	\N	1230	5.87	167
National University	12	Columbia University	2021	Regular Decision	Denied	\N	\N	5.87	168
National University	12	Columbia University	2021	Regular Decision	Denied	\N	\N	5.73	169
National University	12	Columbia University	2021	Regular Decision	Denied	\N	\N	5.67	170
National University	12	Columbia University	2021	Regular Decision	Denied	\N	\N	5.11	171
National University	12	Columbia University	2022	Regular Decision	Denied	\N	1560	6.43	172
National University	12	Columbia University	2022	Early Decision	Denied	\N	1370	6.06	173
National University	12	Columbia University	2022	Regular Decision	Denied	\N	\N	5.79	174
National University	12	Columbia University	2023	Regular Decision	Outcome Unknown (Waitlisted)	33	1570	6.92	175
National University	12	Columbia University	2023	Regular Decision	Accepted	\N	1570	6.82	176
National University	12	Columbia University	2023	Early Decision	Denied	\N	1440	6.42	177
National University	12	Columbia University	2023	Regular Decision	Denied	\N	1530	6.22	178
National University	12	Columbia University	2023	Regular Decision	Denied	\N	\N	5.9	179
National University	12	Columbia University	2023	Regular Decision	Denied	\N	1310	5.9	180
National University	12	Columbia University	2023	Regular Decision	Denied	\N	\N	5.61	181
National University	12	Columbia University	2023	Early Decision	Denied	\N	1130	5	182
National University	12	Cornell University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1600	6.79	183
National University	12	Cornell University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	6.64	184
National University	12	Cornell University	2021	Early Decision	Accepted	\N	\N	6.57	185
National University	12	Cornell University	2021	Regular Decision	Denied	\N	1500	6.48	186
National University	12	Cornell University	2021	Early Decision	Accepted	\N	1510	6.46	187
National University	12	Cornell University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.45	188
National University	12	Cornell University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1510	6.42	189
National University	12	Cornell University	2021	Early Decision	Denied	\N	\N	6.39	190
National University	12	Cornell University	2021	Early Decision	Accepted	\N	1470	6.29	191
National University	12	Cornell University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.19	192
National University	12	Cornell University	2021	Early Decision	Accepted (Deferred)	\N	1490	6.17	193
National University	12	Cornell University	2021	Early Decision	Accepted	\N	1330	6.16	194
National University	12	Cornell University	2021	Early Decision	Denied (Deferred)	\N	1450	6.14	195
National University	12	Cornell University	2021	Regular Decision	Denied	\N	1540	6.12	196
National University	12	Cornell University	2021	Early Decision	Denied (Deferred)	\N	1450	6.08	197
National University	12	Cornell University	2021	Early Decision	Accepted	\N	1290	5.97	198
National University	12	Cornell University	2021	Regular Decision	Denied	\N	1230	5.89	199
National University	12	Cornell University	2021	Regular Decision	Denied	\N	\N	5.87	200
National University	12	Cornell University	2021	Regular Decision	Denied	\N	\N	5.68	201
National University	12	Cornell University	2021	Regular Decision	Denied	\N	\N	5.11	202
National University	12	Cornell University	2021	Regular Decision	Denied	\N	1260	4.84	203
National University	12	Cornell University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	6.78	204
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1570	6.76	205
National University	12	Cornell University	2022	Regular Decision	Guaranteed Transfer	\N	1440	6.73	206
National University	12	Cornell University	2022	Early Decision	Accepted	\N	\N	6.69	207
National University	12	Cornell University	2022	Early Decision	Denied	\N	1500	6.57	208
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1560	6.52	209
National University	12	Cornell University	2022	Early Decision	Denied	\N	1450	6.36	210
National University	12	Cornell University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.34	211
National University	12	Cornell University	2022	Early Decision	Accepted	\N	1510	6.28	212
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1230	6.26	213
National University	12	Cornell University	2022	Regular Decision	Denied	\N	\N	6.22	214
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1300	6.13	215
National University	12	Cornell University	2022	Early Decision	Accepted	\N	1310	6.06	216
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1370	6.06	217
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1510	6.01	218
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1330	6	219
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1510	5.98	220
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1460	5.91	221
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1500	5.76	222
National University	12	Cornell University	2022	Regular Decision	Guaranteed Transfer	\N	1320	5.68	223
National University	12	Cornell University	2022	Regular Decision	Denied	\N	1360	5.68	224
National University	12	Cornell University	2022	Early Decision	Accepted (Deferred --> Waitlisted)	\N	1310	5.63	225
National University	12	Cornell University	2022	Regular Decision	Denied	\N	\N	4.64	226
National University	12	Cornell University	2023	Regular Decision	Denied	33	1570	6.9	227
National University	12	Cornell University	2023	Early Decision	Accepted	34	1350	6.66	228
National University	12	Cornell University	2023	Regular Decision	Denied	\N	1570	6.6	229
National University	12	Cornell University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.54	230
National University	12	Cornell University	2023	Regular Decision	Accepted (Waitlisted)	\N	1420	6.46	231
National University	12	Cornell University	2023	Regular Decision	Denied	31	\N	6.35	232
National University	12	Cornell University	2023	Early Decision	Denied	\N	1370	6.3	233
National University	12	Cornell University	2023	Regular Decision	Denied	\N	1460	6.16	234
National University	12	Cornell University	2023	Early Decision	Accepted	30	1320	6.13	235
National University	12	Cornell University	2023	Early Decision	Denied	\N	1490	6.05	236
National University	12	Cornell University	2023	Regular Decision	Denied	\N	1310	5.9	237
National University	12	Cornell University	2023	Regular Decision	Denied	22	\N	5.91	238
National University	12	University of Chicago	2021	Early Decision II	Accepted	\N	1510	6.67	239
National University	12	University of Chicago	2021	Early Decision II	Denied	\N	1470	6.62	240
National University	12	University of Chicago	2021	Early Action	Denied	\N	1490	6.46	241
National University	12	University of Chicago	2021	Early Action	Denied	\N	1540	6.14	242
National University	12	University of Chicago	2021	Early Action	Denied (Deferred)	\N	\N	5.85	243
National University	12	University of Chicago	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1580	6.8	244
National University	12	University of Chicago	2022	Early Action	Denied (Deferred)	\N	\N	6.56	245
National University	12	University of Chicago	2022	Early Decision	Accepted	\N	1510	6.46	246
National University	12	University of Chicago	2022	Early Decision II	Denied	\N	1450	6.38	247
National University	12	University of Chicago	2022	Early Decision	Accepted	\N	1470	6.18	248
National University	12	University of Chicago	2023	Early Decision	Denied	\N	1500	6.12	249
National University	12	University of Chicago	2023	Regular Decision	Denied	\N	1490	6.05	250
National University	12	University of Chicago	2023	Regular Decision	Denied	\N	\N	5.61	251
National University	12	University of Chicago	2023	Early Decision	Denied	\N	1370	5.59	252
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	1390	6.69	253
National University	15	UC Berkeley	2021	Regular Decision	Accepted	\N	1470	6.62	254
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	\N	6.55	255
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	1500	6.48	256
National University	15	UC Berkeley	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.39	257
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	\N	6.39	258
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	1490	6.19	259
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	1490	6.17	260
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	\N	6.14	261
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	1450	6.16	262
National University	15	UC Berkeley	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.14	263
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	1130	5.9	264
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	\N	5.84	265
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	\N	5.54	266
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	1280	5.48	267
National University	15	UC Berkeley	2021	Regular Decision	Denied	\N	\N	5.11	268
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1580	6.82	269
National University	15	UC Berkeley	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	6.76	270
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1570	6.76	271
National University	15	UC Berkeley	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1440	6.73	272
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1570	6.66	273
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	6.63	274
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1530	6.6	275
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1500	6.59	276
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1550	6.55	277
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	6.54	278
National University	15	UC Berkeley	2022	Regular Decision	Accepted	31	\N	6.53	279
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1450	6.36	280
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	6.38	281
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1540	6.36	282
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1230	6.26	283
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	6.24	284
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	6.22	285
National University	15	UC Berkeley	2022	Regular Decision	Accepted	\N	\N	6.21	286
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	6.2	287
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1370	6.08	288
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1270	6.04	289
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1460	5.89	290
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1320	5.68	291
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1310	5.63	292
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	1200	5.45	293
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	5.45	294
National University	15	UC Berkeley	2022	Regular Decision	Denied	\N	\N	5.44	295
National University	15	UC Berkeley	2023	Regular Decision	Accepted	35	1490	6.92	296
National University	15	UC Berkeley	2023	Regular Decision	Accepted	\N	1570	6.8	297
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1580	6.67	298
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	\N	6.65	299
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1420	6.48	300
National University	15	UC Berkeley	2023	Regular Decision	Denied	31	\N	6.35	301
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1450	6.33	302
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1370	6.32	303
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1460	6.16	304
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1490	6.03	305
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1310	5.9	306
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	\N	5.29	310
National University	15	UC Berkeley	2023	Regular Decision	Denied	29	\N	5.81	307
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1430	5.58	308
National University	15	UC Berkeley	2023	Regular Decision	Denied	\N	1230	5.4	309
National University	15	UCLA	2021	Regular Decision	Accepted	\N	1470	6.64	311
National University	15	UCLA	2021	Regular Decision	Accepted	\N	\N	6.55	312
National University	15	UCLA	2021	Regular Decision	Accepted	\N	1500	6.48	313
National University	15	UCLA	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.39	314
National University	15	UCLA	2021	Regular Decision	Denied	\N	\N	6.39	315
National University	15	UCLA	2021	Regular Decision	Denied	\N	1490	6.17	316
National University	15	UCLA	2021	Regular Decision	Denied	\N	1490	6.17	317
National University	15	UCLA	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.16	318
National University	15	UCLA	2021	Regular Decision	Denied	\N	1450	6.16	319
National University	15	UCLA	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.14	320
National University	15	UCLA	2021	Regular Decision	Denied	\N	1130	5.9	321
National University	15	UCLA	2021	Regular Decision	Denied	\N	1470	5.86	322
National University	15	UCLA	2021	Regular Decision	Denied	\N	\N	5.82	323
National University	15	UCLA	2021	Regular Decision	Denied	\N	\N	5.56	324
National University	15	UCLA	2021	Regular Decision	Denied	\N	1080	5.35	325
National University	15	UCLA	2021	Regular Decision	Denied	\N	\N	5.09	326
National University	15	UCLA	2022	Regular Decision	Denied	\N	1570	6.74	327
National University	15	UCLA	2022	Regular Decision	Accepted	\N	1440	6.73	328
National University	15	UCLA	2022	Regular Decision	Denied	\N	1570	6.66	329
National University	15	UCLA	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1530	6.58	330
National University	15	UCLA	2022	Regular Decision	Accepted	\N	1500	6.59	331
National University	15	UCLA	2022	Regular Decision	Denied	31	\N	6.55	332
National University	15	UCLA	2022	Regular Decision	Accepted (Waitlisted)	\N	1450	6.36	333
National University	15	UCLA	2022	Regular Decision	Denied	\N	1540	6.36	334
National University	15	UCLA	2022	Regular Decision	Denied	\N	1230	6.28	335
National University	15	UCLA	2022	Regular Decision	Denied	\N	\N	6.22	336
National University	15	UCLA	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.21	337
National University	15	UCLA	2022	Regular Decision	Accepted	\N	\N	6.18	338
National University	15	UCLA	2022	Regular Decision	Denied	\N	1370	6.06	339
National University	15	UCLA	2022	Regular Decision	Denied	\N	1460	5.89	340
National University	15	UCLA	2022	Regular Decision	Denied	\N	1320	5.68	341
National University	15	UCLA	2022	Regular Decision	Denied	\N	1310	5.63	342
National University	15	UCLA	2022	Regular Decision	Denied	\N	1110	5.57	343
National University	15	UCLA	2022	Regular Decision	Denied	\N	\N	5.43	344
National University	15	UCLA	2022	Regular Decision	Denied	\N	\N	5.42	345
National University	15	UCLA	2023	Regular Decision	Accepted	35	1490	6.9	346
National University	15	UCLA	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1570	6.82	347
National University	15	UCLA	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1580	6.65	348
National University	15	UCLA	2023	Regular Decision	Accepted	\N	\N	6.65	349
National University	15	UCLA	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1420	6.46	350
National University	15	UCLA	2023	Regular Decision	Denied	31	\N	6.35	351
National University	15	UCLA	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1450	6.35	352
National University	15	UCLA	2023	Regular Decision	Denied	\N	1370	6.32	353
National University	15	UCLA	2023	Regular Decision	Denied	\N	1460	6.16	354
National University	15	UCLA	2023	Regular Decision	Denied	\N	1490	6.03	355
National University	15	UCLA	2023	Regular Decision	Denied	\N	1310	5.92	356
National University	15	UCLA	2023	Regular Decision	Denied	29	\N	5.83	357
National University	15	UCLA	2023	Regular Decision	Denied	\N	1370	5.59	358
National University	15	UCLA	2023	Regular Decision	Denied	\N	1430	5.56	359
National University	15	UCLA	2023	Regular Decision	Denied	\N	1230	5.38	360
National University	15	UCLA	2023	Regular Decision	Denied	\N	\N	5.29	361
National University	15	UCLA	2023	Regular Decision	Denied	\N	1130	5.03	362
National University	15	UCLA	2023	Regular Decision	Denied	\N	1340	5	363
National University	17	Rice University	2021	Regular Decision	Denied	\N	1450	6.14	364
National University	17	Rice University	2021	Early Decision	Accepted	\N	1410	6.09	365
National University	17	Rice University	2022	Regular Decision	Denied	\N	1450	6.36	366
National University	17	Rice University	2022	Regular Decision	Accepted	\N	1540	6.34	367
National University	17	Rice University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1580	6.65	368
National University	17	Rice University	2023	Regular Decision	Outcome Unknown (Waitlisted)	31	\N	6.37	369
National University	17	Rice University	2023	Regular Decision	Denied	\N	1510	5.76	370
National University	18	Dartmouth College	2021	Regular Decision	Denied	\N	1340	5.59	371
National University	18	Dartmouth College	2022	Early Decision	Denied	\N	1500	5.52	372
National University	18	Dartmouth College	2023	Early Decision	Denied (Deferred)	\N	1490	6.76	373
National University	18	Dartmouth College	2023	Regular Decision	Denied	\N	\N	6.67	374
National University	18	Vanderbilt University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1570	6.74	375
National University	18	Vanderbilt University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1440	6.73	376
National University	18	Vanderbilt University	2022	Regular Decision	Denied	\N	\N	6.22	377
National University	18	Vanderbilt University	2023	Regular Decision	Denied	\N	1420	6.46	378
National University	18	Vanderbilt University	2023	Regular Decision	Denied	\N	1450	6.35	379
National University	20	University of Notre Dame	2021	Restrictive Early Action	Denied	\N	\N	6.05	380
National University	20	University of Notre Dame	2022	Regular Decision	Denied	\N	1220	6.03	381
National University	20	University of Notre Dame	2022	Regular Decision	Denied	\N	1330	5.98	382
National University	20	University of Notre Dame	2022	Restrictive Early Action	Denied	\N	\N	4.94	383
National University	20	University of Notre Dame	2023	Restrictive Early Action	Denied	\N	1430	5.58	384
National University	21	University of Michigan	2021	Early Action	Accepted	\N	\N	6.55	385
National University	21	University of Michigan	2021	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1500	6.46	386
National University	21	University of Michigan	2021	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1490	6.46	387
National University	21	University of Michigan	2021	Early Action	Denied (Deferred)	\N	\N	6.39	388
National University	21	University of Michigan	2021	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1490	6.17	389
National University	21	University of Michigan	2021	Early Action	Accepted (Deferred)	\N	1490	6.17	390
National University	21	University of Michigan	2021	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1450	6.16	391
National University	21	University of Michigan	2021	Early Action	Denied (Deferred)	\N	1540	6.14	392
National University	21	University of Michigan	2021	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1450	6.1	393
National University	21	University of Michigan	2021	Early Action	Denied (Deferred)	\N	1250	5.13	394
National University	21	University of Michigan	2021	Regular Decision	Denied	\N	1260	4.84	395
National University	21	University of Michigan	2022	Early Action	Accepted	\N	1500	6.57	396
National University	21	University of Michigan	2022	Early Action	Denied (Deferred)	\N	1440	6.55	397
National University	21	University of Michigan	2022	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1450	6.36	398
National University	21	University of Michigan	2022	Early Action	Accepted	\N	\N	6.38	399
National University	21	University of Michigan	2022	Early Action	Accepted	\N	1540	6.34	400
National University	21	University of Michigan	2022	Early Action	Accepted	\N	\N	6.18	401
National University	21	University of Michigan	2022	Early Action	Denied (Deferred)	\N	1270	6.04	402
National University	21	University of Michigan	2022	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1260	6.05	403
National University	21	University of Michigan	2022	Regular Decision	Denied	\N	1460	5.91	404
National University	21	University of Michigan	2022	Early Action	Denied (Deferred)	\N	1450	5.86	405
National University	21	University of Michigan	2022	Early Action	Denied (Deferred)	\N	1320	5.68	406
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Waitlisted)	33	1570	6.9	407
National University	21	University of Michigan	2023	Early Action	Accepted	\N	1570	6.8	408
National University	21	University of Michigan	2023	Early Action	Denied	\N	1580	6.67	409
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1570	6.6	410
National University	21	University of Michigan	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1420	6.48	411
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Deferred --> Waitlisted)	31	\N	6.37	412
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1370	6.3	413
National University	21	University of Michigan	2023	Early Action	Accepted	\N	1300	6.23	414
National University	21	University of Michigan	2023	Early Action	Accepted	\N	1460	6.16	415
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Waitlisted)	\N	1500	6.14	416
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1490	6.05	417
National University	21	University of Michigan	2023	Early Action	Denied (Deferred)	\N	1420	5.91	418
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1310	5.9	419
National University	21	University of Michigan	2023	Early Action	Outcome Unknown (Deferred)	\N	1510	5.76	420
National University	21	University of Michigan	2023	Early Action	Denied (Deferred)	\N	1230	5.38	421
National University	22	Georgetown University	2021	Regular Decision	Accepted	\N	1600	6.79	422
National University	22	Georgetown University	2021	Regular Decision	Denied	\N	1500	6.48	423
National University	22	Georgetown University	2021	Regular Decision	Denied	\N	1490	6.15	424
National University	22	Georgetown University	2021	Early Action	Denied (Deferred)	\N	1470	5.86	425
National University	22	Georgetown University	2021	Regular Decision	Denied	\N	\N	5.68	426
National University	22	Georgetown University	2022	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1440	6.73	427
National University	22	Georgetown University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.24	428
National University	22	Georgetown University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1460	5.91	429
National University	22	Georgetown University	2022	Regular Decision	Denied	\N	1450	5.84	430
National University	22	Georgetown University	2022	Regular Decision	Denied	\N	\N	5.79	431
National University	22	Georgetown University	2022	Regular Decision	Denied	\N	1310	5.61	432
National University	22	Georgetown University	2023	Regular Decision	Accepted	\N	\N	6.67	433
National University	22	Georgetown University	2023	Regular Decision	Denied	\N	1540	6.54	434
National University	22	Georgetown University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1530	6.22	435
National University	22	Georgetown University	2023	Regular Decision	Denied	\N	1160	5.77	436
National University	22	Georgetown University	2023	Regular Decision	Denied	\N	\N	5.61	437
National University	22	Georgetown University	2023	Regular Decision	Denied	\N	1370	5.59	438
National University	22	Georgetown University	2023	Early Action	Denied	\N	1430	5.56	439
National University	22	University of North Carolina at Chapel Hill	2021	Early Action	Accepted	\N	\N	6.44	440
National University	22	University of North Carolina at Chapel Hill	2021	Early Action	Denied	\N	1490	6.15	441
National University	22	University of North Carolina at Chapel Hill	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.12	442
National University	22	University of North Carolina at Chapel Hill	2021	Regular Decision	Denied	\N	\N	5.09	443
National University	22	University of North Carolina at Chapel Hill	2022	Regular Decision	Denied	\N	\N	4.64	444
National University	22	University of North Carolina at Chapel Hill	2023	Early Action	Denied	\N	1370	6.12	445
National University	22	University of North Carolina at Chapel Hill	2023	Early Action	Denied	\N	1310	5.78	446
National University	24	Carnegie Mellon University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.17	447
National University	24	Carnegie Mellon University	2021	Regular Decision	Denied	\N	1450	6.16	448
National University	24	Carnegie Mellon University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.12	449
National University	24	Carnegie Mellon University	2021	Early Decision	Denied	\N	\N	5.88	450
National University	24	Carnegie Mellon University	2021	Regular Decision	Denied	\N	\N	5.73	451
National University	24	Carnegie Mellon University	2021	Early Decision	Denied	\N	\N	5.74	452
National University	24	Carnegie Mellon University	2022	Regular Decision	Denied	\N	1570	6.76	453
National University	24	Carnegie Mellon University	2022	Regular Decision	Accepted	\N	1530	6.6	454
National University	24	Carnegie Mellon University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1440	6.55	455
National University	24	Carnegie Mellon University	2022	Regular Decision	Denied	\N	1450	6.38	456
National University	24	Carnegie Mellon University	2022	Regular Decision	Denied (Waitlisted)	\N	1510	6.01	457
National University	24	Carnegie Mellon University	2022	Regular Decision	Denied	\N	1310	5.63	458
National University	24	Carnegie Mellon University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1570	6.8	459
National University	24	Carnegie Mellon University	2023	Regular Decision	Denied	\N	\N	5.94	460
National University	24	Carnegie Mellon University	2023	Early Decision I	Denied	\N	1540	5.93	461
National University	24	Carnegie Mellon University	2023	Early Decision I	Denied	\N	1510	5.74	462
National University	24	Carnegie Mellon University	2023	Regular Decision	Denied	\N	1390	5.56	463
National University	24	Carnegie Mellon University	2023	Regular Decision	Denied	\N	1450	5.58	464
National University	24	Carnegie Mellon University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1230	5.4	465
National University	24	Emory University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	6.62	466
National University	24	Emory University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.39	467
National University	24	Emory University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.17	468
National University	24	Emory University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1450	6.08	469
National University	24	Emory University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	5.86	470
National University	24	Emory University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	5.73	471
National University	24	Emory University	2022	Regular Decision	Accepted	\N	1500	6.59	472
National University	24	Emory University	2022	Early Decision	Accepted	\N	\N	6.4	473
National University	24	Emory University	2022	Regular Decision	Accepted	\N	\N	6.18	474
National University	24	Emory University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1370	6.08	475
National University	24	Emory University	2022	Early Decision	Accepted	\N	140	6.04	476
National University	24	Emory University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1330	6	477
National University	24	Emory University	2022	Regular Decision	Denied	\N	1450	5.84	478
National University	24	Emory University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	5.79	479
National University	24	Emory University	2022	Regular Decision	Denied	\N	\N	5.45	480
National University	24	Emory University	2022	Early Decision	Denied	\N	\N	4.64	481
National University	24	Emory University	2023	Regular Decision	Outcome Unknown (Waitlisted)	33	1570	6.9	482
National University	24	Emory University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1570	6.6	483
National University	24	Emory University	2023	Early Decision II	Accepted	\N	1260	6.51	484
National University	24	Emory University	2023	Early Decision II	Denied	\N	1450	6.33	485
National University	24	Emory University	2023	Regular Decision	Denied	\N	1430	5.56	486
National University	24	Emory University	2023	Regular Decision	Denied	\N	\N	5.27	487
National University	24	University of Virginia	2021	Early Action	Outcome Unknown (Waitlisted)	\N	1500	6.48	488
National University	24	University of Virginia	2021	Early Action	Denied	\N	1490	6.17	489
National University	24	University of Virginia	2021	Early Action	Denied	\N	1280	5.82	490
National University	24	University of Virginia	2022	Early Action	Accepted	\N	1570	6.76	491
National University	24	University of Virginia	2022	Early Action	Accepted	\N	1440	6.71	492
National University	24	University of Virginia	2022	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1440	6.57	493
National University	24	University of Virginia	2022	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1540	6.34	494
National University	24	University of Virginia	2023	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1490	6.03	495
National University	24	University of Virginia	2023	Early Action	Outcome Unknown (Deferred --> Waitlisted)	\N	1310	5.9	496
National University	24	Washington University in St. Louis	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	6.64	497
National University	24	Washington University in St. Louis	2021	Early Decision II	Denied (Deferred)	\N	\N	6.39	498
National University	24	Washington University in St. Louis	2021	Regular Decision	Denied	\N	1490	6.17	499
National University	24	Washington University in St. Louis	2021	Early Decision	Accepted	\N	1550	5.87	500
National University	24	Washington University in St. Louis	2021	Regular Decision	Denied	\N	1470	5.88	501
National University	24	Washington University in St. Louis	2021	Early Decision	Accepted	\N	1340	5.83	502
National University	24	Washington University in St. Louis	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1440	6.73	503
National University	24	Washington University in St. Louis	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1500	6.59	504
National University	24	Washington University in St. Louis	2022	Regular Decision	Accepted	\N	\N	6.38	505
National University	24	Washington University in St. Louis	2022	Regular Decision	Denied	\N	\N	6.24	506
National University	24	Washington University in St. Louis	2022	Regular Decision	Accepted	\N	\N	6.18	507
National University	24	Washington University in St. Louis	2022	Regular Decision	Accepted	\N	1330	5.98	508
National University	24	Washington University in St. Louis	2022	Early Decision	Accepted	\N	1500	5.94	509
National University	24	Washington University in St. Louis	2022	Early Decision	Denied (Deferred)	\N	1460	5.89	510
National University	24	Washington University in St. Louis	2023	Regular Decision	Outcome Unknown (Waitlisted)	33	1570	6.92	511
National University	24	Washington University in St. Louis	2023	Regular Decision	Accepted	\N	1580	6.65	512
National University	24	Washington University in St. Louis	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1570	6.6	513
National University	24	Washington University in St. Louis	2023	Regular Decision	Denied	\N	\N	6.37	514
National University	24	Washington University in St. Louis	2023	Regular Decision	Denied	\N	1450	6.35	515
National University	24	Washington University in St. Louis	2023	Regular Decision	Denied	\N	1530	6.22	516
National University	24	Washington University in St. Louis	2023	Early Decision II	Accepted	\N	1500	6.12	517
National University	24	Washington University in St. Louis	2023	Early Decision	Accepted	\N	1490	6.06	518
National University	24	Washington University in St. Louis	2023	Regular Decision	Denied	\N	1160	5.77	519
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	1470	6.64	520
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	\N	6.39	521
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	1490	6.17	522
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	1450	6.16	523
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	\N	5.61	524
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	\N	5.54	525
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	1280	5.5	526
National University	28	UC Davis	2021	Regular Decision	Accepted	\N	1080	5.33	527
National University	28	UC Davis	2021	Regular Decision	Denied	\N	1250	5.15	528
National University	28	UC Davis	2021	Regular Decision	Denied	\N	\N	4.84	529
National University	28	UC Davis	2021	Regular Decision	Denied	\N	\N	4.79	530
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	1470	6.78	531
National University	28	UC Davis	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1570	6.74	532
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	1500	6.57	533
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	1550	6.55	534
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	\N	6.55	535
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	1540	6.36	536
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	\N	6.24	537
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	1370	6.08	538
National University	28	UC Davis	2022	Regular Decision	Accepted	\N	1270	6.06	539
National University	28	UC Davis	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	5.43	540
National University	28	UC Davis	2022	Regular Decision	Denied	\N	1200	5.43	541
National University	28	UC Davis	2023	Regular Decision	Accepted	\N	\N	6.67	542
National University	28	UC Davis	2023	Regular Decision	Accepted	\N	1450	6.35	543
National University	28	UC Davis	2023	Regular Decision	Accepted (Waitlisted)	\N	1460	6.18	544
National University	28	UC Davis	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.05	545
National University	28	UC Davis	2023	Regular Decision	Accepted	\N	1310	5.9	546
National University	28	UC Davis	2023	Regular Decision	Accepted	29	\N	5.83	547
National University	28	UC Davis	2023	Regular Decision	Accepted	\N	1430	5.58	548
National University	28	UC Davis	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1310	5.46	549
National University	28	UC Davis	2023	Regular Decision	Denied	\N	1230	5.4	550
National University	28	UC Davis	2023	Regular Decision	Denied	\N	1340	5.11	551
National University	28	UC Davis	2023	Regular Decision	Accepted	\N	1130	5.05	552
National University	28	UC Davis	2023	Regular Decision	Denied	\N	1340	5.02	553
National University	28	UCSD	2021	Regular Decision	Accepted	\N	1390	6.69	554
National University	28	UCSD	2021	Regular Decision	Accepted	\N	1470	6.64	555
National University	28	UCSD	2021	Regular Decision	Accepted	\N	1500	6.46	556
National University	28	UCSD	2021	Regular Decision	Accepted	\N	\N	6.37	557
National University	28	UCSD	2021	Regular Decision	Accepted	\N	1490	6.17	558
National University	28	UCSD	2021	Regular Decision	Accepted	\N	1450	6.16	559
National University	28	UCSD	2021	Regular Decision	Accepted	\N	1450	6.08	560
National University	28	UCSD	2021	Regular Decision	Accepted	\N	1130	5.88	561
National University	28	UCSD	2021	Regular Decision	Denied (Waitlisted)	\N	\N	5.84	562
National University	28	UCSD	2021	Regular Decision	Accepted	\N	\N	5.61	563
National University	28	UCSD	2021	Regular Decision	Denied	\N	\N	5.56	564
National University	28	UCSD	2021	Regular Decision	Denied	\N	1280	5.48	565
National University	28	UCSD	2021	Regular Decision	Denied	\N	1080	5.33	566
National University	28	UCSD	2021	Regular Decision	Denied	\N	1250	5.15	567
National University	28	UCSD	2021	Regular Decision	Denied	\N	\N	4.82	568
National University	28	UCSD	2021	Regular Decision	Denied	\N	\N	4.79	569
National University	28	UCSD	2022	Regular Decision	Accepted	\N	1470	6.78	570
National University	28	UCSD	2022	Regular Decision	Accepted	\N	1570	6.74	571
National University	28	UCSD	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1500	6.57	572
National University	28	UCSD	2022	Regular Decision	Accepted	\N	1550	6.55	573
National University	28	UCSD	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1450	6.38	574
National University	28	UCSD	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.36	575
National University	28	UCSD	2022	Regular Decision	Accepted	\N	1540	6.34	576
National University	28	UCSD	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1230	6.28	577
National University	28	UCSD	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.24	578
National University	28	UCSD	2022	Regular Decision	Accepted	\N	\N	6.22	579
National University	28	UCSD	2022	Regular Decision	Denied	\N	1370	6.08	580
National University	28	UCSD	2022	Regular Decision	Denied	\N	1460	5.89	581
National University	28	UCSD	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1320	5.68	582
National University	28	UCSD	2022	Regular Decision	Denied (Waitlisted)	\N	1310	5.61	583
National University	28	UCSD	2022	Regular Decision	Denied	\N	1110	5.57	584
National University	28	UCSD	2022	Regular Decision	Denied	\N	1200	5.45	585
National University	28	UCSD	2022	Regular Decision	Denied	\N	\N	5.43	586
National University	28	UCSD	2023	Regular Decision	Denied	\N	1580	6.65	587
National University	28	UCSD	2023	Regular Decision	Accepted	\N	\N	6.67	588
National University	28	UCSD	2023	Regular Decision	Accepted	\N	1450	6.33	589
National University	28	UCSD	2023	Regular Decision	Accepted	\N	1370	6.3	590
National University	28	UCSD	2023	Regular Decision	Denied	\N	1460	6.16	591
National University	28	UCSD	2023	Regular Decision	Denied	\N	1490	6.03	592
National University	28	UCSD	2023	Regular Decision	Denied	29	\N	5.83	593
National University	28	UCSD	2023	Regular Decision	Denied	\N	1370	5.59	594
National University	28	UCSD	2023	Regular Decision	Denied	\N	1430	5.56	595
National University	28	UCSD	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1310	5.46	596
National University	28	UCSD	2023	Regular Decision	Denied	\N	1230	5.4	597
National University	28	UCSD	2023	Regular Decision	Denied	\N	\N	5.27	598
National University	28	UCSD	2023	Regular Decision	Denied	\N	1340	5.09	599
National University	28	UCSD	2023	Regular Decision	Denied	\N	1130	5.03	600
National University	28	UCSD	2023	Regular Decision	Denied	\N	1340	5	601
National University	28	University of Florida	2021	Regular Decision	Denied	\N	1170	5.59	602
National University	28	University of Southern California	2021	Regular Decision	Denied	\N	\N	6.37	603
National University	28	University of Southern California	2021	Regular Decision	Denied	\N	1450	6.16	604
National University	28	University of Southern California	2021	Regular Decision	Denied	\N	1450	6.08	605
National University	28	University of Southern California	2021	Regular Decision	Denied	\N	1130	5.88	606
National University	28	University of Southern California	2021	Regular Decision	Denied	\N	1230	5.69	607
National University	28	University of Southern California	2021	Regular Decision	Denied	\N	1280	5.48	608
National University	28	University of Southern California	2022	Regular Decision	Accepted	\N	1440	6.73	609
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	\N	6.22	610
National University	28	University of Southern California	2022	Regular Decision	Accepted	\N	\N	6.18	611
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	1370	6.08	612
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	1270	6.06	613
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	\N	6	614
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	1510	5.98	615
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	1460	5.89	616
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	1310	5.63	617
National University	28	University of Southern California	2022	Regular Decision	Denied	\N	\N	5.34	618
National University	28	University of Southern California	2023	Early Action	Denied (Deferred)	\N	1580	6.67	619
National University	28	University of Southern California	2023	Regular Decision	Accepted	\N	1420	6.48	620
National University	28	University of Southern California	2023	Early Action	Denied (Deferred)	31	\N	6.37	621
National University	28	University of Southern California	2023	Early Action	Denied (Deferred)	\N	1370	6.32	622
National University	28	University of Southern California	2023	Early Action	Denied (Deferred)	\N	1460	6.18	623
National University	28	University of Southern California	2023	Early Action	Outcome Unknown (Deferred)	\N	1500	6.12	624
National University	28	University of Southern California	2023	Early Action	Denied (Deferred)	\N	1310	5.9	625
National University	28	University of Southern California	2023	Early Action	Denied (Deferred)	29	\N	5.81	626
National University	28	University of Southern California	2023	Early Action	Denied (Deferred)	\N	\N	5.29	627
National University	28	University of Southern California	2023	Regular Decision	Denied	\N	980	5.18	628
National University	28	University of Southern California	2023	Regular Decision	Denied	\N	1340	5	629
National University	32	The University of Texas at Austin	2021	Priority	Accepted	\N	1490	6.17	630
National University	32	The University of Texas at Austin	2021	Priority	Denied	\N	1450	6.16	631
National University	32	The University of Texas at Austin	2021	Regular Decision	Denied	\N	\N	5.61	632
National University	32	The University of Texas at Austin	2021	Regular Decision	Denied	\N	\N	5.52	633
National University	32	The University of Texas at Austin	2021	Priority	Denied	\N	1280	5.5	634
National University	32	The University of Texas at Austin	2021	Regular Decision	Denied	\N	1250	5.15	635
National University	32	The University of Texas at Austin	2023	Regular Decision	Denied	\N	1510	5.76	636
National University	33	Georgia Institute of Technology	2021	Early Action II	Accepted (Deferred)	\N	1490	6.44	637
National University	33	Georgia Institute of Technology	2021	Early Action II	Accepted (Deferred)	\N	1490	6.17	638
National University	33	Georgia Institute of Technology	2021	Early Action II	Denied	\N	1450	6.16	639
National University	33	Georgia Institute of Technology	2021	Early Action II	Outcome Unknown (Deferred->Waitlisted)	\N	1540	6.12	640
National University	33	Georgia Institute of Technology	2021	Early Action II	Denied	\N	1450	6.08	641
National University	33	Georgia Institute of Technology	2021	Regular Decision	Denied	\N	\N	5.52	642
National University	33	Georgia Institute of Technology	2022	Early Action II	Accepted	\N	1570	6.74	643
National University	33	Georgia Institute of Technology	2022	Early Action II	Accepted	\N	1500	6.57	644
National University	33	Georgia Institute of Technology	2022	Early Action II	Denied	\N	1200	5.24	645
National University	33	Georgia Institute of Technology	2023	Early Action II	Denied	\N	1500	6.14	646
National University	33	Georgia Institute of Technology	2023	Regular Decision	Denied	\N	1490	6.03	647
National University	33	Georgia Institute of Technology	2023	Regular Decision	Denied	\N	1540	5.93	648
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1470	6.64	649
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	\N	6.53	650
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1500	6.46	651
National University	33	University of California Irvine	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.37	652
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1490	6.17	653
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1450	6.08	654
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1130	5.88	655
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1550	5.87	656
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1470	5.86	657
National University	33	University of California Irvine	2021	Regular Decision	Accepted	\N	1280	5.48	658
National University	33	University of California Irvine	2021	Regular Decision	Denied	\N	1250	5.13	659
National University	33	University of California Irvine	2021	Regular Decision	Denied	\N	\N	4.82	660
National University	33	University of California Irvine	2021	Regular Decision	Denied	\N	\N	4.79	661
National University	33	University of California Irvine	2022	Regular Decision	Accepted	\N	1500	6.57	662
National University	33	University of California Irvine	2022	Regular Decision	Accepted	\N	\N	6.54	663
National University	33	University of California Irvine	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.34	664
National University	33	University of California Irvine	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.24	665
National University	33	University of California Irvine	2022	Regular Decision	Accepted	\N	\N	6.21	666
National University	33	University of California Irvine	2022	Regular Decision	Accepted	\N	\N	6.2	667
National University	33	University of California Irvine	2022	Regular Decision	Accepted	\N	1370	6.08	668
National University	33	University of California Irvine	2022	Regular Decision	Accepted	\N	1270	6.06	669
National University	33	University of California Irvine	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1310	5.61	670
National University	33	University of California Irvine	2022	Regular Decision	Denied	\N	\N	5.42	671
National University	33	University of California Irvine	2022	Regular Decision	Denied	\N	1360	4.88	672
National University	33	University of California Irvine	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1580	6.65	673
National University	33	University of California Irvine	2023	Regular Decision	Accepted	\N	\N	6.65	674
National University	33	University of California Irvine	2023	Regular Decision	Accepted	\N	1420	6.48	675
National University	33	University of California Irvine	2023	Regular Decision	Accepted	31	\N	6.37	676
National University	33	University of California Irvine	2023	Regular Decision	Accepted	\N	1450	6.33	677
National University	33	University of California Irvine	2023	Regular Decision	Accepted	\N	1370	6.32	678
National University	33	University of California Irvine	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1460	6.18	679
National University	33	University of California Irvine	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.05	680
National University	33	University of California Irvine	2023	Regular Decision	Accepted	\N	1310	5.92	681
National University	33	University of California Irvine	2023	Regular Decision	Denied	\N	1370	5.61	682
National University	33	University of California Irvine	2023	Regular Decision	Denied	\N	1430	5.58	683
National University	33	University of California Irvine	2023	Regular Decision	Denied	\N	1230	5.38	684
National University	33	University of California Irvine	2023	Regular Decision	Denied	\N	\N	5.29	685
National University	33	University of California Irvine	2023	Regular Decision	Denied	\N	1130	5.03	686
National University	33	University of California Irvine	2023	Regular Decision	Denied	\N	1340	5.02	687
National University	35	New York University	2021	Regular Decision	Accepted	\N	1390	6.69	688
National University	35	New York University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	6.64	689
National University	35	New York University	2021	Regular Decision	Denied	\N	1490	6.52	690
National University	35	New York University	2021	Regular Decision	Denied	\N	\N	6.45	691
National University	35	New York University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1510	6.4	692
National University	35	New York University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.37	693
National University	35	New York University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1310	6.33	694
National University	35	New York University	2021	Early Decision II	Denied	\N	1330	6.21	695
National University	35	New York University	2021	Regular Decision	Accepted	\N	\N	6.14	696
National University	35	New York University	2021	Regular Decision	Denied	\N	1190	6.02	697
National University	35	New York University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1130	5.88	698
National University	35	New York University	2021	Early Decision II	Denied	\N	1230	5.89	699
National University	35	New York University	2021	Regular Decision	Denied	\N	\N	5.75	700
National University	35	New York University	2021	Early Decision II	Accepted	\N	\N	5.66	701
National University	35	New York University	2021	Regular Decision	Denied	\N	\N	5.65	702
National University	35	New York University	2021	Early Decision	Denied	\N	\N	5.66	703
National University	35	New York University	2021	Early Decision	Accepted	\N	1180	5.64	704
National University	35	New York University	2021	Early Decision II	Outcome Unknown (Waitlisted)	\N	1210	5.54	705
National University	35	New York University	2021	Regular Decision	Denied	\N	1200	5.52	706
National University	35	New York University	2021	Regular Decision	Denied	\N	1080	5.35	707
National University	35	New York University	2021	Regular Decision	Denied	\N	\N	5.14	708
National University	35	New York University	2021	Early Decision II	Accepted (Waitlisted)	\N	\N	5.09	709
National University	35	New York University	2021	Regular Decision	Denied	\N	\N	5.05	710
National University	35	New York University	2021	Early Decision	Denied	\N	1080	4.89	711
National University	35	New York University	2021	Early Decision II	Denied	\N	1260	4.84	712
National University	35	New York University	2021	Early Decision II	Denied	\N	\N	4.32	713
National University	35	New York University	2022	Regular Decision	Accepted	\N	\N	6.63	714
National University	35	New York University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1500	6.59	715
National University	35	New York University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.42	716
National University	35	New York University	2022	Regular Decision	Accepted	\N	1450	6.38	717
National University	35	New York University	2022	Regular Decision	Accepted	\N	\N	6.22	718
National University	35	New York University	2022	Regular Decision	Accepted	\N	\N	6.21	719
National University	35	New York University	2022	Regular Decision	Denied	\N	1330	6.12	720
National University	35	New York University	2022	Early Decision II	Denied	\N	1370	6.08	721
National University	35	New York University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1330	5.98	722
National University	35	New York University	2022	Regular Decision	Denied	\N	1510	5.98	723
National University	35	New York University	2022	Early Decision	Accepted	\N	\N	5.97	724
National University	35	New York University	2022	Regular Decision	Accepted	\N	1450	5.86	725
National University	35	New York University	2022	Regular Decision	Denied	\N	\N	5.81	726
National University	35	New York University	2022	Regular Decision	Denied	\N	1190	5.83	727
National University	35	New York University	2022	Regular Decision	Accepted	\N	\N	5.77	728
National University	35	New York University	2022	Regular Decision	Denied	\N	\N	5.74	729
National University	35	New York University	2022	Regular Decision	Denied	\N	1320	5.68	730
National University	35	New York University	2022	Early Decision II	Denied	\N	1360	5.68	731
National University	35	New York University	2022	Regular Decision	Denied	\N	1200	5.45	732
National University	35	New York University	2022	Regular Decision	Denied	\N	\N	5.32	733
National University	35	New York University	2022	Regular Decision	Denied	\N	1200	5.24	734
National University	35	New York University	2022	Regular Decision	Denied	\N	1240	5.17	735
National University	35	New York University	2022	Regular Decision	Denied	\N	\N	4.88	736
National University	35	New York University	2022	Early Decision	Denied	\N	1360	4.88	737
National University	35	New York University	2022	Regular Decision	Denied	\N	1140	4.34	738
National University	35	New York University	2023	Regular Decision	Denied	\N	1570	6.6	739
National University	35	New York University	2023	Regular Decision	Denied	\N	1540	6.54	740
National University	35	New York University	2023	Regular Decision	Denied	\N	1450	6.33	741
National University	35	New York University	2023	Regular Decision	Denied	\N	1370	6.32	742
National University	35	New York University	2023	Regular Decision	Denied	\N	1530	6.22	743
National University	35	New York University	2023	Early Decision II	Outcome Unknown (Waitlisted)	\N	1490	6.03	744
National University	35	New York University	2023	Regular Decision	Denied	\N	1540	5.93	745
National University	35	New York University	2023	Early Decision II	Denied	\N	\N	5.9	746
National University	35	New York University	2023	Regular Decision	Denied	\N	1310	5.9	747
National University	35	New York University	2023	Regular Decision	Accepted	22	\N	5.89	748
National University	35	New York University	2023	Regular Decision	Denied	\N	1320	5.77	749
National University	35	New York University	2023	Regular Decision	Denied	\N	1510	5.74	750
National University	35	New York University	2023	Regular Decision	Denied	\N	\N	5.61	751
National University	35	New York University	2023	Regular Decision	Accepted	\N	1370	5.61	752
National University	35	New York University	2023	Regular Decision	Denied	\N	1430	5.56	753
National University	35	New York University	2023	Regular Decision	Accepted	\N	\N	5.49	754
National University	35	New York University	2023	Regular Decision	Denied	\N	1310	5.46	755
National University	35	New York University	2023	Early Decision	Accepted	\N	\N	5.34	756
National University	35	New York University	2023	Regular Decision	Denied	\N	\N	5.27	757
National University	35	New York University	2023	Regular Decision	Denied	\N	980	5.2	758
National University	35	New York University	2023	Early Decision	Denied	\N	1150	5.02	759
National University	35	New York University	2023	Regular Decision	Denied	\N	1130	5	760
National University	35	New York University	2023	Early Decision	Accepted (Waitlisted)	\N	960	4.8	761
National University	35	New York University	2023	Early Decision	Denied	\N	1010	4.38	762
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Accepted	\N	1470	6.64	763
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	\N	6.55	764
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	1500	6.48	765
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	\N	6.39	766
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	1490	6.17	767
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	1450	6.14	768
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.12	769
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1130	5.9	770
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	5.86	771
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	\N	5.84	772
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	\N	5.54	773
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	1280	5.48	774
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	1080	5.33	775
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	1250	5.13	776
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	\N	4.82	777
National University	35	University of California (Santa Barbara)	2021	Regular Decision	Denied	\N	\N	4.79	778
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	\N	1470	6.78	779
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	\N	1440	6.73	780
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	\N	1500	6.59	781
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	31	\N	6.55	782
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	\N	1540	6.36	783
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1230	6.26	784
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Denied	\N	\N	6.22	785
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	\N	\N	6.24	786
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	\N	\N	6.21	787
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Accepted	\N	\N	6.18	788
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Denied	\N	1370	6.06	789
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Denied	\N	1460	5.91	790
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Denied	\N	1320	5.7	791
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Denied	\N	1310	5.63	792
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Denied	\N	1110	5.57	793
National University	35	University of California (Santa Barbara)	2022	Regular Decision	Denied	\N	\N	5.44	794
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Accepted	35	1490	6.92	795
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1580	6.67	796
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Accepted	\N	\N	6.65	797
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1450	6.33	798
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1370	6.32	799
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Accepted (Waitlisted)	\N	1460	6.16	800
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1490	6.05	801
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1310	5.92	802
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	29	\N	5.83	803
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1370	5.59	804
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1430	5.56	805
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1310	5.48	806
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1230	5.4	807
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	\N	5.27	808
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1340	5.11	809
National University	35	University of California (Santa Barbara)	2023	Regular Decision	Denied	\N	1340	5	810
National University	35	University of Illinois at Urbana-Champaign	2021	Early Action	Accepted	\N	1450	6.08	811
National University	35	University of Illinois at Urbana-Champaign	2021	Early Action	Accepted	\N	\N	5.28	812
National University	35	University of Illinois at Urbana-Champaign	2022	Regular Decision	Accepted	\N	1370	6.08	813
National University	35	University of Illinois at Urbana-Champaign	2022	Regular Decision	Denied	\N	1510	6.01	814
National University	35	University of Illinois at Urbana-Champaign	2022	Regular Decision	Denied	\N	1200	5.24	815
National University	35	University of Illinois at Urbana-Champaign	2022	Regular Decision	Denied	\N	1240	5.17	816
National University	35	University of Illinois at Urbana-Champaign	2023	Early Action	Accepted	\N	1570	6.6	817
National University	35	University of Illinois at Urbana-Champaign	2023	Early Action	Accepted	31	\N	6.35	818
National University	35	University of Illinois at Urbana-Champaign	2023	Early Action	Accepted	\N	1370	6.32	819
National University	35	University of Illinois at Urbana-Champaign	2023	Early Action	Outcome Unknown (Deferred)	\N	1500	6.14	820
National University	35	University of Illinois at Urbana-Champaign	2023	Regular Decision	Denied	\N	1490	6.05	821
National University	35	University of Illinois at Urbana-Champaign	2023	Regular Decision	Denied	\N	1540	5.93	822
National University	35	University of Illinois at Urbana-Champaign	2023	Regular Decision	Denied	\N	1170	5.17	823
National University	35	University of Illinois at Urbana-Champaign	2023	Early Action	Denied	19	1070	4.78	824
National University	35	University of Wisconsin Madison	2021	Early Action	Accepted	\N	\N	6.05	825
National University	35	University of Wisconsin Madison	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	5.63	826
National University	35	University of Wisconsin Madison	2021	Early Action	Accepted	\N	1080	5.35	827
National University	35	University of Wisconsin Madison	2021	Early Action	Denied	\N	1250	5.15	828
National University	35	University of Wisconsin Madison	2022	Early Action	Denied (Deferred)	\N	1370	6.08	829
National University	35	University of Wisconsin Madison	2022	Regular Decision	Accepted	\N	1260	6.05	830
National University	35	University of Wisconsin Madison	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	5.81	831
National University	35	University of Wisconsin Madison	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1130	5.15	832
National University	35	University of Wisconsin Madison	2023	Early Action	Accepted	\N	1500	6.61	833
National University	35	University of Wisconsin Madison	2023	Regular Decision	Outcome Unknown (Waitlisted)	31	\N	6.37	834
National University	35	University of Wisconsin Madison	2023	Early Action	Outcome Unknown (Deferred)	\N	1310	5.92	835
National University	35	University of Wisconsin Madison	2023	Early Action	Accepted (Deferred)	\N	1230	5.4	836
National University	35	University of Wisconsin Madison	2023	Regular Decision	Denied	\N	1170	5.17	837
National University	35	University of Wisconsin Madison	2023	Early Action	Denied (Deferred)	\N	1230	4.75	838
National University	39	Boston College	2021	Regular Decision	Accepted	\N	\N	6.37	839
National University	39	Boston College	2021	Early Decision II	Accepted	\N	\N	6.03	840
National University	39	Boston College	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	5.86	841
National University	39	Boston College	2021	Regular Decision	Denied	\N	\N	5.73	842
National University	39	Boston College	2021	Early Decision II	Accepted (Deferred)	\N	\N	5.64	843
National University	39	Boston College	2021	Regular Decision	Denied (Waitlisted)	\N	\N	5.11	844
National University	39	Boston College	2022	Regular Decision	Accepted	\N	1440	6.71	845
National University	39	Boston College	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1560	6.52	846
National University	39	Boston College	2022	Regular Decision	Accepted	\N	\N	6.38	847
National University	39	Boston College	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.22	848
National University	39	Boston College	2022	Early Decision	Outcome Unknown (Deferred->Waitlisted)	\N	1220	6.03	849
National University	39	Boston College	2022	Early Decision	Accepted	\N	1420	5.7	850
National University	39	Boston College	2022	Regular Decision	Denied	\N	1320	5.7	851
National University	39	Boston College	2022	Regular Decision	Denied	\N	1310	5.63	852
National University	39	Boston College	2022	Regular Decision	Denied	\N	\N	5.36	853
National University	39	Boston College	2022	Early Decision	Outcome Unknown (Deferred->Waitlisted)	\N	\N	5.34	854
National University	39	Boston College	2022	Early Decision II	Denied	\N	1130	5.15	855
National University	39	Boston College	2022	Regular Decision	Denied	\N	\N	5.12	856
National University	39	Boston College	2023	Early Decision	Accepted	\N	1270	6.09	857
National University	39	Boston College	2023	Early Decision	Accepted	\N	1260	6.07	858
National University	39	Boston College	2023	Regular Decision	Accepted	\N	1310	5.8	859
National University	39	Boston College	2023	Early Decision	Denied	\N	\N	5.29	860
National University	39	Boston College	2023	Early Decision II	Denied	\N	1170	5.15	861
National University	40	Rutgers University	2021	Early Action	Accepted	\N	1280	5.5	862
National University	40	Rutgers University	2021	Regular Decision	Accepted	\N	\N	5.16	863
National University	40	Rutgers University	2021	Early Action	Accepted	\N	\N	4.69	864
National University	40	Rutgers University	2022	Early Action	Accepted (Deferred)	\N	1330	5.98	865
National University	40	Rutgers University	2022	Early Action	Accepted	\N	1510	5.98	866
National University	40	Rutgers University	2022	Early Action	Accepted	\N	\N	4.64	867
National University	40	Rutgers University	2023	Early Action	Accepted	\N	1420	5.95	868
National University	40	Rutgers University	2023	Early Action	Accepted	\N	1110	5.3	869
National University	40	Rutgers University	2023	Early Action	Accepted	\N	1130	5.03	870
National University	40	Tufts University	2021	Regular Decision	Denied	\N	1510	6.42	871
National University	40	Tufts University	2021	Regular Decision	Denied	\N	1310	6.33	872
National University	40	Tufts University	2021	Early Decision	Denied	\N	1280	6.17	873
National University	40	Tufts University	2021	Early Decision	Denied	\N	\N	6.19	874
National University	40	Tufts University	2021	Regular Decision	Denied	\N	\N	6.14	875
National University	40	Tufts University	2021	Early Decision II	Accepted	\N	\N	5.95	876
National University	40	Tufts University	2021	Regular Decision	Denied	\N	1280	5.82	877
National University	40	Tufts University	2021	Regular Decision	Denied	\N	\N	5.54	878
National University	40	Tufts University	2021	Regular Decision	Denied	\N	\N	5.11	879
National University	40	Tufts University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1440	6.71	880
National University	40	Tufts University	2022	Regular Decision	Accepted	\N	1500	6.59	881
National University	40	Tufts University	2022	Regular Decision	Denied	\N	1560	6.54	882
National University	40	Tufts University	2022	Early Decision	Accepted	\N	\N	6.48	883
National University	40	Tufts University	2022	Early Decision	Accepted	\N	\N	6.38	884
National University	40	Tufts University	2022	Regular Decision	Denied	\N	\N	6.19	885
National University	40	Tufts University	2022	Regular Decision	Denied	\N	1330	6.12	886
National University	40	Tufts University	2022	Early Decision	Accepted	\N	\N	6.07	887
National University	40	Tufts University	2023	Regular Decision	Accepted	\N	\N	6.67	888
National University	40	Tufts University	2023	Regular Decision	Denied	\N	1540	6.52	889
National University	40	Tufts University	2023	Early Decision II	Accepted	\N	1440	6.42	890
National University	40	Tufts University	2023	Regular Decision	Denied	\N	\N	5.92	891
National University	40	Tufts University	2023	Regular Decision	Denied	22	\N	5.91	892
National University	40	Tufts University	2023	Early Decision	Denied	\N	1030	5.88	893
National University	40	Tufts University	2023	Regular Decision	Denied	\N	\N	5.65	894
National University	40	Tufts University	2023	Regular Decision	Denied	\N	1430	5.56	895
National University	40	Tufts University	2023	Regular Decision	Denied	\N	950	5.51	896
National University	40	University of Washington Seattle	2021	Regular Decision	Accepted	\N	1490	6.17	897
National University	40	University of Washington Seattle	2021	Regular Decision	Accepted	\N	1450	6.16	898
National University	40	University of Washington Seattle	2022	Regular Decision	Accepted	\N	1260	6.05	899
National University	40	University of Washington Seattle	2022	Regular Decision	Accepted	\N	1450	5.86	900
National University	43	Boston University	2021	Regular Decision	Accepted	\N	1470	6.62	901
National University	43	Boston University	2021	Regular Decision	Accepted	\N	1510	6.42	902
National University	43	Boston University	2021	Regular Decision	Accepted	\N	\N	6.39	903
National University	43	Boston University	2021	Regular Decision	Accepted	\N	1310	6.33	904
National University	43	Boston University	2021	Early Decision II	Accepted	\N	\N	6.17	905
National University	43	Boston University	2021	Regular Decision	Accepted	\N	1190	6	906
National University	43	Boston University	2021	Regular Decision	Accepted	\N	1130	5.88	907
National University	43	Boston University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	5.84	908
National University	43	Boston University	2021	Regular Decision	Guaranteed Transfer	\N	1280	5.8	909
National University	43	Boston University	2021	Regular Decision	Denied	\N	\N	5.75	910
National University	43	Boston University	2021	Regular Decision	Denied	\N	\N	5.67	911
National University	43	Boston University	2021	\N	Accepted (Deferred)	\N	\N	5.66	912
National University	43	Boston University	2021	Regular Decision	Denied	\N	1280	5.5	913
National University	43	Boston University	2021	Regular Decision	Denied	\N	1080	5.33	914
National University	43	Boston University	2021	Regular Decision	Guaranteed Transfer	\N	\N	5.16	915
National University	43	Boston University	2021	Regular Decision	Denied	\N	\N	5.11	916
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1580	6.8	917
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1470	6.76	918
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1570	6.74	919
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1500	6.57	920
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1550	6.55	921
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1440	6.57	922
National University	43	Boston University	2022	Regular Decision	Accepted	\N	\N	6.56	923
National University	43	Boston University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.44	924
National University	43	Boston University	2022	Regular Decision	Denied	\N	\N	6.22	925
National University	43	Boston University	2022	Regular Decision	Denied	\N	1330	6.1	926
National University	43	Boston University	2022	Regular Decision	Denied	\N	1370	6.08	927
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1270	6.06	928
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1220	6.03	929
National University	43	Boston University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.02	930
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1330	6	931
National University	43	Boston University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1510	5.96	932
National University	43	Boston University	2022	Early Decision	Accepted	\N	\N	5.96	933
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1450	5.86	934
National University	43	Boston University	2022	Regular Decision	Accepted	\N	1320	5.68	935
National University	43	Boston University	2022	Regular Decision	Denied	\N	1310	5.63	936
National University	43	Boston University	2022	Regular Decision	Denied	\N	\N	5.42	937
National University	43	Boston University	2022	Regular Decision	Denied	\N	1130	5.15	938
National University	43	Boston University	2022	Regular Decision	Denied	\N	\N	5.12	939
National University	43	Boston University	2022	Early Decision II	Denied	\N	\N	4.84	940
National University	43	Boston University	2022	Regular Decision	Denied	\N	930	4.74	941
National University	43	Boston University	2023	Regular Decision	Accepted	\N	1580	6.65	942
National University	43	Boston University	2023	Regular Decision	Accepted	\N	1420	6.46	943
National University	43	Boston University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1450	6.33	944
National University	43	Boston University	2023	Regular Decision	Accepted	\N	1370	6.3	945
National University	43	Boston University	2023	Regular Decision	Denied	\N	1530	6.22	946
National University	43	Boston University	2023	Regular Decision	Accepted	\N	1490	6.05	947
National University	43	Boston University	2023	Regular Decision	Denied	\N	1420	5.93	948
National University	43	Boston University	2023	Regular Decision	Denied	\N	1420	5.93	949
National University	43	Boston University	2023	Regular Decision	Denied	\N	1540	5.93	950
National University	43	Boston University	2023	Regular Decision	Denied	\N	\N	5.92	951
National University	43	Boston University	2023	Regular Decision	Guaranteed Transfer	22	\N	5.91	952
National University	43	Boston University	2023	Early Decision II	Guaranteed Transfer	\N	1030	5.86	953
National University	43	Boston University	2023	Regular Decision	Denied	\N	1370	5.59	954
National University	43	Boston University	2023	Regular Decision	Guaranteed Transfer	\N	1430	5.58	955
National University	43	Boston University	2023	Early Decision II	Denied	\N	1260	5.28	956
National University	43	Boston University	2023	Early Decision II	Denied	\N	1150	5.02	957
National University	43	Boston University	2023	Regular Decision	Accepted	\N	\N	4.99	958
National University	43	The Ohio State University	2021	Early Action	Accepted	\N	1450	6.1	959
National University	43	The Ohio State University	2021	Early Action	Denied (Deferred)	\N	1280	5.5	960
National University	43	The Ohio State University	2022	Early Action	Accepted	\N	1370	6.06	961
National University	43	The Ohio State University	2022	Regular Decision	Denied	\N	\N	4.4	962
National University	43	The Ohio State University	2023	Regular Decision	Denied	\N	1110	5.3	963
National University	43	Purdue University	2021	Early Action	Accepted	\N	1450	6.16	964
National University	43	Purdue University	2021	Early Action	Accepted	\N	1450	6.08	965
National University	43	Purdue University	2021	Early Action	Accepted	\N	1240	5.84	966
National University	43	Purdue University	2021	Regular Decision	Accepted	\N	\N	5.3	967
National University	43	Purdue University	2022	Early Action	Accepted	\N	1570	6.76	968
National University	43	Purdue University	2022	Regular Decision	Denied	\N	1510	6.01	969
National University	43	Purdue University	2022	Early Action	Denied	\N	1420	5.39	970
National University	43	Purdue University	2022	Early Action	Denied (Deferred)	\N	1200	5.22	971
National University	43	Purdue University	2022	Regular Decision	Denied	\N	1360	4.88	972
National University	43	Purdue University	2023	Early Action	Accepted	\N	1510	5.76	973
National University	43	Purdue University	2023	Early Action	Accepted	\N	1390	5.58	974
National University	43	Purdue University	2023	Regular Decision	Denied	\N	1450	5.58	975
National University	46	University of Maryland College Park	2021	Early Action	Accepted	\N	1470	6.62	976
National University	46	University of Maryland College Park	2021	Early Action	Accepted	\N	\N	6.05	977
National University	46	University of Maryland College Park	2021	Early Action	Accepted	\N	\N	5.56	978
National University	46	University of Maryland College Park	2021	Early Action	Accepted	\N	1250	5.15	979
National University	46	University of Maryland College Park	2022	Early Action	Accepted	\N	1270	6.06	980
National University	46	University of Maryland College Park	2022	Early Action	Accepted	\N	1450	5.86	981
National University	46	University of Maryland College Park	2022	Early Action	Accepted	\N	\N	5.79	982
National University	46	University of Maryland College Park	2022	Regular Decision	Denied	\N	1200	5.22	983
National University	46	University of Maryland College Park	2022	Regular Decision	Denied	\N	1130	5.17	984
National University	47	Lehigh University	2021	Regular Decision	Accepted	\N	\N	5.66	985
National University	47	Lehigh University	2022	Regular Decision	Accepted	\N	\N	5.34	986
National University	47	Lehigh University	2022	Early Decision	Accepted	\N	1340	4.67	987
National University	47	Lehigh University	2023	Regular Decision	Accepted	\N	1490	6.05	988
National University	47	Lehigh University	2023	Regular Decision	Outcome Unknown (Waitlisted)	22	\N	5.91	989
National University	47	Lehigh University	2023	Regular Decision	Denied	\N	\N	5.65	990
National University	47	Lehigh University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1130	5.03	991
National University	47	Lehigh University	2023	Early Decision	Accepted	29	\N	5.03	992
National University	47	Lehigh University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1340	5.02	993
National University	47	Lehigh University	2023	Early Decision II	Denied	\N	1230	4.75	994
National University	47	Texas A&M University	2021	Early Action	Accepted	\N	1450	6.14	995
National University	47	Texas A&M University	2021	Regular Decision	Denied	\N	\N	5.52	996
National University	47	University of Rochester	2021	Early Decision II	Accepted	\N	\N	5.88	997
National University	47	University of Rochester	2021	Regular Decision	Denied	\N	1200	5.54	998
National University	47	University of Rochester	2022	Regular Decision	Accepted	\N	1500	6.59	999
National University	47	University of Rochester	2022	Regular Decision	Denied	\N	1440	6.57	1000
National University	47	University of Rochester	2022	Early Decision	Denied	\N	1360	5.68	1001
National University	47	University of Rochester	2023	Regular Decision	Denied	33	1570	6.92	1002
National University	47	University of Rochester	2023	Regular Decision	Accepted	\N	1570	6.8	1003
National University	47	University of Rochester	2023	Regular Decision	Denied	\N	1570	6.6	1004
National University	47	University of Rochester	2023	Regular Decision	Accepted	\N	1420	5.95	1005
National University	47	University of Rochester	2023	Regular Decision	Accepted	\N	1450	5.58	1006
National University	47	University of Rochester	2023	Early Decision	Accepted	29	1350	5.44	1007
National University	47	Virginia Tech	2021	Regular Decision	Denied	\N	\N	5.54	1008
National University	47	Virginia Tech	2022	Early Action	Accepted	\N	1570	6.76	1009
National University	47	Virginia Tech	2022	Early Decision	Accepted	\N	1420	5.37	1010
National University	47	Virginia Tech	2022	Regular Decision	Accepted	\N	\N	3.85	1011
National University	47	Virginia Tech	2023	Early Action	Accepted	\N	1230	5.4	1012
National University	47	Wake Forest University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	5.88	1013
National University	47	Wake Forest University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1170	5.59	1014
National University	47	Wake Forest University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1220	6.03	1015
National University	47	Wake Forest University	2022	Early Decision	Accepted	33	\N	5.56	1016
National University	47	Wake Forest University	2022	Early Decision II	Outcome Unknown (Waitlisted)	\N	\N	5.34	1017
National University	47	Wake Forest University	2023	Early Decision	Outcome Unknown (Deferred)	\N	1160	5.67	1018
National University	47	Wake Forest University	2023	Early Decision	Accepted (Waitlisted)	\N	1400	5.54	1019
National University	47	Wake Forest University	2023	Early Decision II	Outcome Unknown (Waitlisted)	\N	\N	5.27	1020
National University	53	Case Western Reserve University	2021	Early Action	Outcome Unknown (Deferred->Waitlisted)	\N	1310	6.35	1021
National University	53	Case Western Reserve University	2021	Early Action	Denied (Deferred)	\N	1280	5.5	1022
National University	53	Case Western Reserve University	2021	Early Action	Accepted	\N	1080	5.35	1023
National University	53	Case Western Reserve University	2021	Early Action	Denied	\N	1260	4.84	1024
National University	53	Case Western Reserve University	2021	Early Action	Denied	\N	\N	4.77	1025
National University	53	Case Western Reserve University	2022	Early Action	Accepted (Deferred)	\N	1550	6.57	1026
National University	53	Case Western Reserve University	2022	Early Action	Accepted	\N	\N	6.18	1027
National University	53	Case Western Reserve University	2022	Early Action	Accepted	\N	1410	6.04	1028
National University	53	Case Western Reserve University	2022	Early Action	Accepted	\N	1270	6.06	1029
National University	53	Case Western Reserve University	2022	Early Action	Accepted	\N	1330	5.98	1030
National University	53	Case Western Reserve University	2022	Regular Decision	Denied	\N	1360	5.68	1031
National University	53	Case Western Reserve University	2022	Early Action	Denied	\N	1150	5.3	1032
National University	53	Case Western Reserve University	2023	Regular Decision	Outcome Unknown (Waitlisted)	33	1570	6.92	1033
National University	53	Case Western Reserve University	2023	Regular Decision	Denied	\N	1570	6.58	1034
National University	53	Case Western Reserve University	2023	Early Action	Outcome Unknown (Deferred->Waitlisted)	\N	1540	5.93	1035
National University	53	Case Western Reserve University	2023	Early Action	Outcome Unknown (Deferred->Waitlisted)	\N	1510	5.74	1036
National University	53	Case Western Reserve University	2023	Early Action	Outcome Unknown (Deferred->Waitlisted)	\N	1390	5.56	1037
National University	53	Case Western Reserve University	2023	Early Action	Outcome Unknown (Deferred->Waitlisted)	\N	1360	5.58	1038
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1390	6.67	1039
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1510	6.69	1040
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1470	6.64	1041
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1400	6.56	1042
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1490	6.44	1043
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1470	6.43	1044
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1510	6.4	1045
National University	53	Northeastern University	2021	Early Action	Accepted	\N	\N	6.39	1046
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1310	6.33	1047
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1280	6.19	1048
National University	53	Northeastern University	2021	Regular Decision	Accepted	\N	1540	6.12	1049
National University	53	Northeastern University	2021	Early Decision	Accepted	\N	1540	5.96	1050
National University	53	Northeastern University	2021	Early Action	Accepted	\N	\N	5.92	1051
National University	53	Northeastern University	2021	Early Action	Outcome Unknown (Deferred)	\N	1130	5.9	1052
National University	53	Northeastern University	2021	Early Action	Accepted	\N	\N	5.88	1053
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1470	5.86	1054
National University	53	Northeastern University	2021	Regular Decision	Denied	\N	\N	5.84	1055
National University	53	Northeastern University	2021	Early Action	Accepted	\N	1280	5.8	1056
National University	53	Northeastern University	2021	Early Decision	Accepted	\N	1270	5.78	1057
National University	53	Northeastern University	2021	Regular Decision	Denied	\N	\N	5.75	1058
National University	53	Northeastern University	2021	Early Decision II	Accepted	\N	\N	5.72	1059
National University	53	Northeastern University	2021	Early Action	Denied (Deferred)	\N	\N	5.67	1060
National University	53	Northeastern University	2021	Early Action	Accepted	\N	\N	5.64	1061
National University	53	Northeastern University	2021	Early Decision	Accepted	\N	1350	5.66	1062
National University	53	Northeastern University	2021	Early Decision	Accepted	\N	\N	5.54	1063
National University	53	Northeastern University	2021	Early Action	Outcome Unknown (Deferred)	\N	1210	5.54	1064
National University	53	Northeastern University	2021	Early Action	Denied (Deferred)	\N	1280	5.5	1065
National University	53	Northeastern University	2021	Early Action	Accepted	\N	\N	5.29	1066
National University	53	Northeastern University	2021	Early Action	Denied	\N	1250	5.15	1067
National University	53	Northeastern University	2022	Early Action	Outcome Unknown (Deferred->Waitlisted)	\N	1500	6.59	1068
National University	53	Northeastern University	2022	Early Action	Denied (Deferred)	\N	1440	6.55	1069
National University	53	Northeastern University	2022	Regular Decision	Denied	\N	1560	6.52	1070
National University	53	Northeastern University	2022	Early Action	Denied (Deferred)	\N	1560	6.43	1071
National University	53	Northeastern University	2022	Regular Decision	Accepted (Waitlisted)	\N	\N	6.36	1072
National University	53	Northeastern University	2022	Early Action	Accepted	\N	\N	6.24	1073
National University	53	Northeastern University	2022	Early Action	Accepted	\N	\N	6.19	1074
National University	53	Northeastern University	2022	Early Action	Outcome Unknown (Deferred)	\N	\N	6.18	1075
National University	53	Northeastern University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1330	6.12	1076
National University	53	Northeastern University	2022	Early Action	Accepted (Deferred)	\N	1370	6.08	1077
National University	53	Northeastern University	2022	Early Action	Accepted	\N	1270	6.06	1078
National University	53	Northeastern University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1220	6.03	1079
National University	53	Northeastern University	2022	Regular Decision	Denied (Waitlisted)	\N	1510	6.01	1080
National University	53	Northeastern University	2022	Early Action	Accepted	\N	1460	5.91	1081
National University	53	Northeastern University	2022	Early Action	Accepted	\N	1450	5.84	1082
National University	53	Northeastern University	2022	Early Action	Denied (Deferred)	\N	\N	5.79	1083
National University	53	Northeastern University	2022	Early Action	Denied (Deferred)	\N	\N	5.77	1084
National University	53	Northeastern University	2022	Early Action	Accepted	\N	1500	5.76	1085
National University	53	Northeastern University	2022	Early Action	Denied (Deferred)	\N	1320	5.68	1086
National University	53	Northeastern University	2022	Early Action	Accepted	\N	1200	5.43	1087
National University	53	Northeastern University	2022	Early Action	Denied (Deferred)	\N	\N	5.43	1088
National University	53	Northeastern University	2022	Regular Decision	Denied	\N	\N	5.44	1089
National University	53	Northeastern University	2022	Early Action	Accepted	\N	\N	5.36	1090
National University	53	Northeastern University	2022	Early Decision	Accepted	\N	\N	5.2	1091
National University	53	Northeastern University	2022	Regular Decision	Denied	\N	1240	5.17	1092
National University	53	Northeastern University	2022	Early Action	Denied (Deferred)	\N	\N	5.12	1093
National University	53	Northeastern University	2022	Early Action	Denied	\N	\N	4.92	1094
National University	53	Northeastern University	2022	Early Action	Denied	\N	\N	4.84	1095
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1260	6.51	1096
National University	53	Northeastern University	2023	Early Action	Outcome Unknown (Waitlisted)	31	\N	6.37	1097
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1450	6.33	1098
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1300	6.25	1099
National University	53	Northeastern University	2023	Regular Decision	Denied	\N	1530	6.24	1100
National University	53	Northeastern University	2023	Regular Decision	Accepted	\N	1280	6.22	1101
National University	53	Northeastern University	2023	Early Decision II	Accepted	\N	1450	6.19	1102
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1460	6.16	1103
National University	53	Northeastern University	2023	Early Action	Denied	\N	1310	6.17	1104
National University	53	Northeastern University	2023	Early Action	Accepted (Deferred->Waitlisted)	\N	1490	6.03	1105
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1420	5.95	1106
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1540	5.91	1107
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1310	5.9	1108
National University	53	Northeastern University	2023	Regular Decision	Denied	\N	\N	5.92	1109
National University	53	Northeastern University	2023	Regular Decision	Accepted (Waitlisted)	22	\N	5.91	1110
National University	53	Northeastern University	2023	Early Action	Accepted (Deferred‚ÜíWaitlisted)	29	\N	5.83	1111
National University	53	Northeastern University	2023	Early Decision	Accepted	\N	1500	5.82	1112
National University	53	Northeastern University	2023	Early Action	Accepted	\N	1310	5.78	1113
National University	53	Northeastern University	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1160	5.75	1114
National University	53	Northeastern University	2023	Early Decision	Accepted	\N	1230	5.74	1115
National University	53	Northeastern University	2023	Regular Decision	Denied	\N	1510	5.76	1116
National University	53	Northeastern University	2023	Early Action	Denied (Deferred)	\N	\N	5.67	1117
National University	53	Northeastern University	2023	Early Action	Denied	\N	1370	5.59	1118
National University	53	Northeastern University	2023	Early Action	Denied (Deferred)	\N	1390	5.58	1119
National University	53	Northeastern University	2023	Regular Decision	Accepted	\N	1310	5.46	1120
National University	53	Northeastern University	2023	Early Decision	Accepted	33	\N	5.43	1121
National University	53	Northeastern University	2023	Early Decision	Accepted	\N	1230	5.4	1122
National University	53	Northeastern University	2023	Regular Decision	Denied	\N	\N	5.39	1123
National University	53	Northeastern University	2023	Early Decision	Denied	\N	1260	5.28	1124
National University	53	Northeastern University	2023	Early Action	Accepted	\N	\N	5.29	1125
National University	53	Northeastern University	2023	Early Decision	Accepted	\N	1370	5.2	1126
National University	53	Northeastern University	2023	Regular Decision	Denied	\N	980	5.18	1127
National University	53	Northeastern University	2023	Regular Decision	Denied	\N	\N	5.15	1128
National University	53	Northeastern University	2023	Early Action	Denied (Deferred)	\N	1150	5.02	1129
National University	53	Northeastern University	2023	Regular Decision	Denied (Deferred)	\N	1050	4.75	1130
National University	53	University of Minnesota	2022	Early Action	Denied	\N	1340	4.67	1131
National University	53	University of Minnesota	2023	Regular Decision	Accepted	\N	1370	6.12	1132
National University	53	William & Mary	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1280	5.8	1133
National University	53	William & Mary	2021	Early Decision	Accepted	\N	1250	5.75	1134
National University	53	William & Mary	2021	Regular Decision	Denied	\N	1170	5.59	1135
National University	53	William & Mary	2022	Early Decision	Accepted	\N	\N	5.79	1136
National University	58	Stony Brook University	2021	Regular Decision	Denied	\N	1130	5.88	1137
National University	58	Stony Brook University	2021	Regular Decision	Accepted	\N	1240	5.86	1138
National University	58	Stony Brook University	2021	Regular Decision	Denied	\N	\N	5.54	1139
National University	58	Stony Brook University	2021	Regular Decision	Denied	\N	1250	5.15	1140
National University	58	Stony Brook University	2021	Regular Decision	Denied	\N	1260	4.84	1141
National University	58	Stony Brook University	2022	Regular Decision	Accepted	\N	1510	6.46	1142
National University	58	Stony Brook University	2022	Regular Decision	Accepted	\N	\N	6.36	1143
National University	58	Stony Brook University	2022	Regular Decision	Accepted	\N	1510	5.96	1144
National University	58	Stony Brook University	2022	Regular Decision	Accepted	\N	1500	5.78	1145
National University	58	Stony Brook University	2022	Regular Decision	Accepted (Waitlisted)	\N	1110	5.57	1146
National University	58	Stony Brook University	2022	Regular Decision	Accepted	\N	\N	5.43	1147
National University	58	Stony Brook University	2022	Regular Decision	Denied	\N	1200	5.22	1148
National University	58	Stony Brook University	2022	Regular Decision	Denied	\N	1130	5.11	1149
National University	58	Stony Brook University	2022	Regular Decision	Denied	\N	1360	4.86	1150
National University	58	Stony Brook University	2022	Regular Decision	Denied	\N	\N	4.8	1151
National University	58	Stony Brook University	2022	Regular Decision	Denied	\N	\N	4.77	1152
National University	58	Stony Brook University	2022	Regular Decision	Denied	\N	\N	4.42	1153
National University	58	Stony Brook University	2022	Regular Decision	Denied	\N	1140	4.32	1154
National University	58	Stony Brook University	2023	Rolling	Accepted	35	1490	6.92	1155
National University	58	Stony Brook University	2023	Rolling	Accepted	33	1570	6.9	1156
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1500	6.61	1157
National University	58	Stony Brook University	2023	Fall Priority	Accepted	\N	1570	6.58	1158
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1260	6.49	1159
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1370	6.32	1160
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1490	6.03	1161
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1540	5.93	1162
National University	58	Stony Brook University	2023	Rolling	Denied	\N	1310	5.92	1163
National University	58	Stony Brook University	2023	Rolling	Denied	\N	1030	5.86	1164
National University	58	Stony Brook University	2023	Rolling	Outcome Unknown (Waitlisted)	\N	1310	5.8	1165
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1320	5.75	1166
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1510	5.74	1167
National University	58	Stony Brook University	2023	Rolling	Outcome Unknown (Waitlisted)	\N	1360	5.58	1168
National University	58	Stony Brook University	2023	Rolling	Denied	\N	1390	5.56	1169
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1430	5.56	1170
National University	58	Stony Brook University	2023	Rolling	Denied	\N	1110	5.28	1171
National University	58	Stony Brook University	2023	Rolling	Denied	\N	\N	5.27	1172
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1370	5.2	1173
National University	58	Stony Brook University	2023	Rolling	Accepted	\N	1340	5.09	1174
National University	58	Stony Brook University	2023	Fall Priority	Denied	\N	1290	5.01	1175
National University	58	Stony Brook University	2023	Rolling	Denied	\N	1130	5	1176
National University	58	Stony Brook University	2023	Rolling	Denied	\N	\N	4.99	1177
National Liberal Arts College	1	Williams College	2021	Regular Decision	Denied	\N	\N	6.55	1178
National Liberal Arts College	1	Williams College	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.34	1179
National Liberal Arts College	2	Amherst College	2021	Regular Decision	Denied	\N	1490	6.5	1180
National Liberal Arts College	2	Amherst College	2021	Early Decision	Denied	\N	\N	6.45	1181
National Liberal Arts College	2	Amherst College	2021	Regular Decision	Denied	\N	\N	5.85	1182
National Liberal Arts College	2	Amherst College	2022	Regular Decision	Accepted	\N	\N	6.56	1183
National Liberal Arts College	2	Amherst College	2022	Early Decision	Denied (Deferred)	\N	1320	5.7	1185
National Liberal Arts College	2	Amherst College	2023	Regular Decision	Denied	\N	1540	6.52	1186
National Liberal Arts College	2	Amherst College	2023	Regular Decision	Denied	\N	1450	6.33	1187
National Liberal Arts College	2	Amherst College	2023	Regular Decision	Denied	\N	1310	4.76	1188
National Liberal Arts College	3	United States Naval Academy	2022	Regular Decision	Accepted	\N	1570	6.74	1189
National Liberal Arts College	3	United States Naval Academy	2023	Regular Decision	Guaranteed Transfer	\N	1450	5.58	1190
National Liberal Arts College	4	Pomona College	2022	Early Decision	Denied (Deferred)	\N	\N	6.19	1191
National Liberal Arts College	4	Pomona College	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.2	1192
National Liberal Arts College	4	Pomona College	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.76	1193
National Liberal Arts College	4	Pomona College	2023	Regular Decision	Denied	\N	1280	6.22	1194
National Liberal Arts College	4	Pomona College	2023	Regular Decision	Denied	\N	1370	5.61	1195
National Liberal Arts College	4	Swarthmore College	2021	Regular Decision	Denied	\N	\N	6.53	1196
National Liberal Arts College	4	Swarthmore College	2021	Early Decision	Accepted (Deferred)	\N	1490	6.5	1197
National Liberal Arts College	4	Swarthmore College	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.43	1198
National Liberal Arts College	4	Swarthmore College	2021	Early Decision II	Accepted	\N	1470	6.45	1199
National Liberal Arts College	4	Swarthmore College	2021	Regular Decision	Denied	\N	1510	6.4	1200
National Liberal Arts College	4	Swarthmore College	2021	Regular Decision	Denied	\N	\N	6.16	1201
National Liberal Arts College	4	Swarthmore College	2022	Regular Decision	Accepted	\N	\N	6.65	1202
National Liberal Arts College	4	Swarthmore College	2022	Regular Decision	Denied	\N	1330	6.12	1203
National Liberal Arts College	4	Swarthmore College	2022	Regular Decision	Denied	\N	1260	6.03	1204
National Liberal Arts College	4	Swarthmore College	2023	Regular Decision	Denied	\N	1490	6.76	1205
National Liberal Arts College	4	Swarthmore College	2023	Regular Decision	Denied	\N	1540	6.54	1206
National Liberal Arts College	4	Swarthmore College	2023	Regular Decision	Denied	\N	1450	6.33	1207
National Liberal Arts College	4	Swarthmore College	2023	Regular Decision	Denied	\N	1530	6.24	1208
National Liberal Arts College	4	Swarthmore College	2023	Regular Decision	Denied	\N	1310	6.17	1209
National Liberal Arts College	4	Swarthmore College	2023	Regular Decision	Denied	\N	\N	5.9	1210
National Liberal Arts College	4	Swarthmore College	2023	Early Decision II	Denied	\N	1040	4.86	1211
National Liberal Arts College	9	Bowdoin College	2021	Early Decision	Accepted	\N	\N	6.33	1212
National Liberal Arts College	9	Bowdoin College	2021	Regular Decision	Denied	\N	\N	5.28	1213
National Liberal Arts College	9	Bowdoin College	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1470	6.76	1214
National Liberal Arts College	9	Bowdoin College	2022	Regular Decision	Denied	\N	\N	5.34	1215
National Liberal Arts College	9	Bowdoin College	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	1490	6.78	1216
National Liberal Arts College	9	Bowdoin College	2023	Regular Decision	Denied	\N	1310	6.17	1217
National Liberal Arts College	9	Bowdoin College	2023	Regular Decision	Denied	\N	\N	5.65	1218
National Liberal Arts College	9	Carleton College	2021	Regular Decision	Denied	\N	\N	5.3	1219
National Liberal Arts College	9	Carleton College	2022	Early Decision	Accepted	\N	\N	5.63	1220
National Liberal Arts College	11	Claremont McKenna College	2023	Regular Decision	Denied	\N	1490	6.78	1221
National Liberal Arts College	11	Claremont McKenna College	2023	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.65	1222
National Liberal Arts College	11	Claremont McKenna College	2023	Regular Decision	Accepted	\N	1420	5.91	1223
National Liberal Arts College	11	Grinnell College	2021	Regular Decision	Denied	\N	1260	4.84	1224
National Liberal Arts College	11	Grinnell College	2022	Regular Decision	Accepted	\N	\N	6.63	1225
National Liberal Arts College	11	Grinnell College	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	5.34	1226
National Liberal Arts College	11	Middlebury College	2021	Early Decision	Denied	\N	1280	5.8	1227
National Liberal Arts College	11	Middlebury College	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	\N	6.67	1228
National Liberal Arts College	11	Middlebury College	2022	Early Decision	Accepted	32	\N	5.79	1229
National Liberal Arts College	11	Middlebury College	2023	Regular Decision	Accepted	\N	1470	6.78	1230
National Liberal Arts College	11	Middlebury College	2023	Regular Decision	Accepted	\N	\N	6.63	1231
National Liberal Arts College	11	Wesleyan University	2021	Regular Decision	Outcome Unknown (Waitlisted)	\N	1510	6.4	1232
National Liberal Arts College	11	Wesleyan University	2021	Regular Decision	Accepted	\N	\N	6.39	1233
National Liberal Arts College	11	Wesleyan University	2021	Regular Decision	Denied	\N	1190	6	1234
National Liberal Arts College	11	Wesleyan University	2021	Regular Decision	Denied	\N	\N	5.67	1235
National Liberal Arts College	11	Wesleyan University	2021	Regular Decision	Denied	\N	\N	5.28	1236
National Liberal Arts College	11	Wesleyan University	2021	Regular Decision	Denied	\N	\N	5.11	1237
National Liberal Arts College	11	Wesleyan University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1540	6.36	1238
National Liberal Arts College	11	Wesleyan University	2022	Regular Decision	Denied	\N	\N	6.21	1239
National Liberal Arts College	11	Wesleyan University	2022	Regular Decision	Outcome Unknown (Waitlisted)	\N	1330	6.12	1240
National Liberal Arts College	11	Wesleyan University	2022	Early Decision	Denied (Deferred)	\N	\N	6.02	1241
National Liberal Arts College	11	Wesleyan University	2023	Regular Decision	Accepted	\N	1540	6.54	1242
National Liberal Arts College	11	Wesleyan University	2023	Regular Decision	Denied	\N	1280	6.22	1243
National Liberal Arts College	11	Wesleyan University	2023	Early Decision	Denied	\N	1370	6.12	1244
National Liberal Arts College	11	Wesleyan University	2023	Regular Decision	Denied	\N	\N	5.65	1245
National Liberal Arts College	11	Wesleyan University	2023	Regular Decision	Denied	\N	1370	5.61	1246
National Liberal Arts College	11	Wesleyan University	2023	Regular Decision	Denied	\N	1430	5.58	1247
National Liberal Arts College	11	Wesleyan University	2023	Early Decision	Denied	\N	950	5.51	1248
National Liberal Arts College	11	Wesleyan University	2023	Regular Decision	Denied	\N	980	5.18	1249
National Liberal Arts College	11	Wesleyan University	2023	Early Decision	Denied	30	\N	4.91	1250
National University	1	Princeton University	2022	Restrictive Early Action	Denied (Deferred)	\N	1540	6.34	1251
National Liberal Arts College	2	Amherst College	2022	Regular Decision	Denied	\N	1330	6.12	1184
\.


--
-- Name: raw_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ibcm
--

SELECT pg_catalog.setval('public.raw_data_id_seq', 1251, true);


--
-- Name: raw_data raw_data_pkey; Type: CONSTRAINT; Schema: public; Owner: ibcm
--

ALTER TABLE ONLY public.raw_data
    ADD CONSTRAINT raw_data_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

