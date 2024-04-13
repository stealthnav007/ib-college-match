--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Homebrew)
-- Dumped by pg_dump version 16.1 (Homebrew)

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
    index bigint,
    "School" text,
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

COPY public.raw_data (index, "School", "Application Type", "Outcome", "ACT", "SAT", "GPA") FROM stdin;
0	Amherst College	Regular Decision	Denied	-	1450	6.34
1	Amherst College	Regular Decision	Denied	-	1540	6.53
2	Amherst College	Regular Decision	Denied	-	1310	4.77
3	Amherst College	Regular Decision	Accepted	-	-	6.55
4	Amherst College	Regular Decision	Denied	-	1490	6.51
5	Amherst College	Early Decision	Denied	-	-	6.44
6	Amherst College	Regular Decision	Denied	-	1330	6.11
7	Amherst College	Regular Decision	Denied	-	-	5.86
8	Amherst College	Early Decision	Denied (Deferred)	-	1320	5.69
9	Brown University	Early Decision	Accepted	35	-	6.48
10	Brown University	Early Decision	Denied (Deferred)	-	1420	6.47
11	Brown University	Early Decision	Denied	-	-	5.66
12	Brown University	Regular Decision	Denied	-	1430	5.57
13	Brown University	Regular Decision	Denied	-	1540	6.53
14	Brown University	Early Decision	Denied	-	1310	5.91
15	Brown University	Regular Decision	Denied	-	-	5.93
16	Brown University	Regular Decision	Denied	-	1370	6.31
17	Brown University	Regular Decision	Denied	-	1530	6.23
18	Brown University	Regular Decision	Denied	-	1310	6.16
19	Brown University	Regular Decision	Denied	22	-	5.9
20	Brown University	Early Decision	Denied	-	1280	6.23
21	Brown University	Early Decision	Accepted (Deferred)	-	1600	6.8
22	Brown University	Regular Decision	Denied	-	-	6.64
23	Brown University	Regular Decision	Denied	-	-	6.55
24	Brown University	Regular Decision	Denied	-	-	6.54
25	Brown University	Regular Decision	Denied	-	1490	6.51
26	Brown University	Early Decision	Denied	-	1470	6.44
27	Brown University	Regular Decision	Denied	-	1510	6.41
28	Brown University	Regular Decision	Denied	-	1540	6.35
29	Brown University	Early Decision	Denied	-	-	6.23
30	Brown University	Regular Decision	Denied	-	-	6.19
31	Brown University	Early Decision	Denied (Deferred)	-	1540	6.13
32	Brown University	Early Decision	Accepted (Deferred)	-	1330	6.11
33	Brown University	Early Decision	Denied	-	1260	6.04
34	Brown University	Regular Decision	Denied	-	1230	5.88
35	Brown University	Early Decision	Denied	-	-	5.81
36	Brown University	Early Decision	Denied (Deferred)	-	-	5.78
37	Brown University	Regular Decision	Denied	-	1500	5.77
38	Brown University	Early Decision	Denied (Deferred)	-	1340	5.58
39	Carnegie Mellon University	Regular Decision	Outcome Unknown (Waitlisted)	-	1570	6.81
40	Carnegie Mellon University	Regular Decision	Outcome Unknown (Waitlisted)	-	1230	5.39
41	Carnegie Mellon University	Regular Decision	Denied	-	1390	5.57
42	Carnegie Mellon University	Early Decision I	Denied	-	1540	5.92
43	Carnegie Mellon University	Early Decision I	Denied	-	1510	5.75
44	Carnegie Mellon University	Regular Decision	Denied	-	-	5.93
45	Carnegie Mellon University	Regular Decision	Denied	-	1450	5.57
46	Carnegie Mellon University	Regular Decision	Denied	-	1570	6.75
47	Carnegie Mellon University	Regular Decision	Accepted	-	1530	6.59
48	Carnegie Mellon University	Regular Decision	Outcome Unknown (Waitlisted)	-	1440	6.56
49	Carnegie Mellon University	Regular Decision	Denied	-	1450	6.37
50	Carnegie Mellon University	Regular Decision	Outcome Unknown (Waitlisted)	-	1490	6.18
51	Carnegie Mellon University	Regular Decision	Denied	-	1450	6.15
52	Carnegie Mellon University	Regular Decision	Outcome Unknown (Waitlisted)	-	1540	6.13
53	Carnegie Mellon University	Regular Decision	Denied (Waitlisted)	-	1510	6
54	Carnegie Mellon University	Early Decision	Denied	-	-	5.87
55	Carnegie Mellon University	Regular Decision	Denied	-	-	5.74
56	Carnegie Mellon University	Early Decision	Denied	-	-	5.73
57	Carnegie Mellon University	Regular Decision	Denied	-	1310	5.62
58	Columbia University	Regular Decision	Outcome Unknown (Waitlisted)	33	1570	6.91
59	Columbia University	Regular Decision	Accepted	-	1570	6.81
60	Columbia University	Regular Decision	Denied	-	-	5.62
61	Columbia University	Regular Decision	Denied	-	-	5.91
62	Columbia University	Early Decision	Denied	-	1130	4.99
63	Columbia University	Regular Decision	Denied	-	1310	5.91
64	Columbia University	Regular Decision	Denied	-	1530	6.23
65	Columbia University	Early Decision	Denied	-	1440	6.41
66	Columbia University	Regular Decision	Outcome Unknown (Waitlisted)	-	1600	6.8
67	Columbia University	Regular Decision	Denied	-	1500	6.47
68	Columbia University	Regular Decision	Denied	-	1560	6.42
69	Columbia University	Regular Decision	Denied	-	1310	6.34
70	Columbia University	Early Decision	Denied	-	1370	6.07
71	Columbia University	Early Decision	Denied	-	1230	5.88
72	Columbia University	Regular Decision	Denied	-	-	5.86
73	Columbia University	Regular Decision	Denied	-	-	5.78
74	Columbia University	Regular Decision	Denied	-	-	5.74
75	Columbia University	Regular Decision	Denied	-	-	5.66
76	Columbia University	Regular Decision	Denied	-	-	5.1
77	Cornell University	Regular Decision	Outcome Unknown (Waitlisted)	-	1540	6.53
78	Cornell University	Early Decision	Accepted	34	1350	6.65
79	Cornell University	Early Decision	Accepted	30	1320	6.12
80	Cornell University	Regular Decision	Denied	-	1460	6.17
81	Cornell University	Early Decision	Denied	-	1490	6.04
82	Cornell University	Regular Decision	Denied	-	1310	5.91
83	Cornell University	Regular Decision	Denied	-	1570	6.59
84	Cornell University	Regular Decision	Denied	33	1570	6.91
85	Cornell University	Early Decision	Denied	-	1370	6.31
86	Cornell University	Regular Decision	Denied	31	-	6.36
87	Cornell University	Regular Decision	Denied	22	-	5.9
88	Cornell University	Regular Decision	Accepted (Waitlisted)	-	1420	6.47
89	Cornell University	Regular Decision	Outcome Unknown (Waitlisted)	-	1600	6.8
90	Cornell University	Regular Decision	Outcome Unknown (Waitlisted)	-	1470	6.77
91	Cornell University	Regular Decision	Denied	-	1570	6.75
92	Cornell University	Regular Decision	Guaranteed Transfer	-	1440	6.72
93	Cornell University	Early Decision	Accepted	-	-	6.7
94	Cornell University	Regular Decision	Outcome Unknown (Waitlisted)	-	1470	6.63
95	Cornell University	Early Decision	Denied	-	1500	6.58
96	Cornell University	Early Decision	Accepted	-	-	6.56
97	Cornell University	Regular Decision	Denied	-	1560	6.53
98	Cornell University	Regular Decision	Denied	-	1500	6.47
99	Cornell University	Early Decision	Accepted	-	1510	6.45
100	Cornell University	Regular Decision	Outcome Unknown (Waitlisted)	-	-	6.44
101	Cornell University	Regular Decision	Outcome Unknown (Waitlisted)	-	1510	6.41
102	Cornell University	Early Decision	Denied	-	-	6.38
103	Cornell University	Early Decision	Denied	-	1450	6.37
104	Cornell University	Regular Decision	Outcome Unknown (Waitlisted)	-	1540	6.35
105	Cornell University	Early Decision	Accepted	-	1470	6.28
106	Cornell University	Early Decision	Accepted	-	1510	6.27
107	Cornell University	Regular Decision	Denied	-	1230	6.27
108	Cornell University	Regular Decision	Denied	-	-	6.23
109	Cornell University	Regular Decision	Outcome Unknown (Waitlisted)	-	1490	6.18
110	Cornell University	Early Decision	Accepted (Deferred)	-	1490	6.16
111	Cornell University	Early Decision	Accepted	-	1330	6.15
112	Cornell University	Early Decision	Denied (Deferred)	-	1450	6.15
113	Cornell University	Regular Decision	Denied	-	1540	6.13
114	Cornell University	Regular Decision	Denied	-	1300	6.12
115	Cornell University	Early Decision	Denied (Deferred)	-	1450	6.09
116	Cornell University	Early Decision	Accepted	-	1310	6.07
117	Cornell University	Regular Decision	Denied	-	1370	6.07
118	Cornell University	Regular Decision	Denied	-	1510	6
119	Cornell University	Regular Decision	Denied	-	1330	5.99
120	Cornell University	Regular Decision	Denied	-	1510	5.97
121	Cornell University	Early Decision	Accepted	-	1290	5.96
122	Cornell University	Regular Decision	Denied	-	1460	5.9
123	Cornell University	Regular Decision	Denied	-	1230	5.88
124	Cornell University	Regular Decision	Denied	-	-	5.86
125	Cornell University	Regular Decision	Denied	-	1500	5.77
126	Cornell University	Regular Decision	Guaranteed Transfer	-	1320	5.69
127	Cornell University	Regular Decision	Denied	-	1360	5.67
128	Cornell University	Regular Decision	Denied	-	-	5.67
129	Cornell University	Early Decision	Accepted (Deferred→Waitlisted)	-	1310	5.62
130	Cornell University	Regular Decision	Denied	-	-	5.1
131	Cornell University	Regular Decision	Denied	-	1260	4.83
132	Cornell University	Regular Decision	Denied	-	-	4.65
133	Dartmouth College	Regular Decision	Denied	-	-	6.66
134	Dartmouth College	Early Decision	Denied (Deferred)	-	1490	6.77
135	Dartmouth College	Regular Decision	Denied	-	1340	5.58
136	Dartmouth College	Early Decision	Denied	-	1500	5.51
137	Duke University	Early Decision	Accepted (Deferred)	-	1500	6.6
138	Duke University	Early Decision	Denied	-	1460	6.17
139	Duke University	Regular Decision	Denied	-	-	6.2
140	Duke University	Regular Decision	Denied	-	1440	6.72
141	Duke University	Regular Decision	Denied	-	1390	6.68
142	Duke University	Regular Decision	Denied	-	1500	6.58
143	Duke University	Regular Decision	Denied	-	1550	6.56
144	Duke University	Regular Decision	Denied	-	1450	6.37
145	Duke University	Regular Decision	Outcome Unknown (Waitlisted)	-	1490	6.18
146	Harvard University	Restrictive Early Action	Outcome Unknown (Waitlisted)	-	-	6.66
147	Harvard University	Restrictive Early Action	Accepted (Deferred)	-	1530	6.23
148	Harvard University	Regular Decision	Denied	-	1580	6.66
149	Harvard University	Regular Decision	Denied	-	1570	6.81
150	Harvard University	Regular Decision	Denied	-	-	5.62
151	Harvard University	Regular Decision	Denied	-	1500	6.6
152	Harvard University	Regular Decision	Denied	-	1310	5.91
153	Harvard University	Regular Decision	Denied	-	1490	6.77
154	Harvard University	Restrictive Early Action	Denied (Deferred)	22	-	5.9
155	Harvard University	Regular Decision	Accepted	-	1600	6.8
156	Harvard University	Regular Decision	Denied	-	1490	6.45
157	Harvard University	Regular Decision	Denied	-	1510	6.41
158	Harvard University	Regular Decision	Denied	-	1490	6.18
159	Harvard University	Regular Decision	Denied	-	-	6.15
160	Harvard University	Regular Decision	Denied	-	1300	6.12
161	Harvard University	Regular Decision	Denied	-	-	5.86
162	Harvard University	Restrictive Early Action	Denied	-	-	5.74
163	Harvard University	Regular Decision	Denied	-	-	5.1
164	Johns Hopkins University	Early Decision II	Outcome Unknown (Waitlisted)	-	1570	6.59
165	Johns Hopkins University	Regular Decision	Denied	-	1570	6.81
166	Johns Hopkins University	Regular Decision	Denied	-	1390	5.57
167	Johns Hopkins University	Early Decision II	Denied	-	1310	5.91
168	Johns Hopkins University	Regular Decision	Denied	33	1570	6.91
169	Johns Hopkins University	Regular Decision	Accepted	-	-	6.64
170	Johns Hopkins University	Early Decision	Denied	-	1470	6.63
171	Johns Hopkins University	Regular Decision	Outcome Unknown (Waitlisted)	-	1530	6.59
172	Johns Hopkins University	Early Decision II	Accepted	-	1400	6.57
173	Johns Hopkins University	Regular Decision	Denied	-	1550	6.56
174	Johns Hopkins University	Regular Decision	Denied	-	1500	6.47
175	Johns Hopkins University	Early Decision II	Denied	-	-	6.43
176	Johns Hopkins University	Regular Decision	Denied	-	1510	6.41
177	Johns Hopkins University	Regular Decision	Denied	-	1450	6.37
178	Johns Hopkins University	Regular Decision	Denied	-	1230	6.27
179	Johns Hopkins University	Early Decision	Denied	-	1330	5.99
180	Johns Hopkins University	Regular Decision	Denied	-	-	5.78
181	Johns Hopkins University	Regular Decision	Denied	-	1360	5.67
182	Johns Hopkins University	Regular Decision	Denied	-	1080	5.34
183	Johns Hopkins University	Regular Decision	Denied	-	-	5.33
184	Massachusetts Institute of Technology	Regular Decision	Denied	-	1580	6.66
185	Massachusetts Institute of Technology	Regular Decision	Denied	-	1570	6.81
186	Massachusetts Institute of Technology	Early Action	Denied (Deferred)	-	1500	6.6
187	Massachusetts Institute of Technology	Regular Decision	Denied	-	1540	5.92
188	Massachusetts Institute of Technology	Regular Decision	Denied	-	1310	4.77
189	Massachusetts Institute of Technology	Early Action	Denied (Deferred)	-	1570	6.75
190	Massachusetts Institute of Technology	Early Action	Denied (Deferred)	-	1570	6.67
191	Massachusetts Institute of Technology	Regular Decision	Denied	31	-	6.54
192	Massachusetts Institute of Technology	Early Action	Denied (Deferred)	-	1490	6.45
193	Massachusetts Institute of Technology	Early Action	Denied (Deferred)	-	1450	6.37
194	New York University	Early Decision II	Outcome Unknown (Waitlisted)	-	1490	6.04
195	New York University	Early Decision	Accepted (Waitlisted)	-	960	4.79
196	New York University	Regular Decision	Accepted	-	1370	5.6
197	New York University	Regular Decision	Accepted	22	-	5.9
198	New York University	Early Decision	Accepted	-	-	5.35
199	New York University	Regular Decision	Denied	-	-	5.28
200	New York University	Regular Decision	Denied	-	1310	5.47
201	New York University	Regular Decision	Denied	-	1430	5.57
202	New York University	Regular Decision	Denied	-	1320	5.76
203	New York University	Regular Decision	Denied	-	-	5.62
204	New York University	Regular Decision	Denied	-	1450	6.34
205	New York University	Regular Decision	Denied	-	1540	6.53
206	New York University	Early Decision II	Denied	-	-	5.91
207	New York University	Regular Decision	Denied	-	1540	5.92
208	New York University	Regular Decision	Denied	-	1510	5.75
209	New York University	Regular Decision	Denied	-	1130	4.99
210	New York University	Early Decision	Denied	-	1150	5.01
211	New York University	Regular Decision	Denied	-	1310	5.91
212	New York University	Regular Decision	Denied	-	1570	6.59
213	New York University	Regular Decision	Denied	-	980	5.19
214	New York University	Regular Decision	Denied	-	1370	6.31
215	New York University	Regular Decision	Denied	-	1530	6.23
216	New York University	Early Decision	Denied	-	1010	4.39
217	New York University	Regular Decision	Accepted	-	-	5.5
218	New York University	Regular Decision	Accepted	-	1390	6.68
219	New York University	Regular Decision	Accepted	-	-	6.64
220	New York University	Regular Decision	Outcome Unknown (Waitlisted)	-	1470	6.63
221	New York University	Regular Decision	Outcome Unknown (Waitlisted)	-	1500	6.58
222	New York University	Regular Decision	Denied	-	1490	6.51
223	New York University	Regular Decision	Denied	-	-	6.44
224	New York University	Regular Decision	Outcome Unknown (Waitlisted)	-	-	6.43
225	New York University	Regular Decision	Outcome Unknown (Waitlisted)	-	1510	6.41
226	New York University	Regular Decision	Outcome Unknown (Waitlisted)	-	-	6.38
227	New York University	Regular Decision	Accepted	-	1450	6.37
228	New York University	Regular Decision	Outcome Unknown (Waitlisted)	-	1310	6.34
229	New York University	Regular Decision	Accepted	-	-	6.23
230	New York University	Early Decision II	Denied	-	1330	6.2
231	New York University	Regular Decision	Accepted	-	-	6.2
232	New York University	Regular Decision	Accepted	-	-	6.15
233	New York University	Regular Decision	Denied	-	1330	6.11
234	New York University	Early Decision II	Denied	-	1370	6.07
235	New York University	Regular Decision	Denied	-	1190	6.01
236	New York University	Regular Decision	Outcome Unknown (Waitlisted)	-	1330	5.99
237	New York University	Regular Decision	Denied	-	1510	5.97
238	New York University	Early Decision	Accepted	-	-	5.96
239	New York University	Regular Decision	Outcome Unknown (Waitlisted)	-	1130	5.89
240	New York University	Early Decision II	Denied	-	1230	5.88
241	New York University	Regular Decision	Accepted	-	1450	5.85
242	New York University	Regular Decision	Denied	-	-	5.82
243	New York University	Regular Decision	Denied	-	1190	5.82
244	New York University	Regular Decision	Accepted	-	-	5.78
245	New York University	Regular Decision	Denied	-	-	5.74
246	New York University	Regular Decision	Denied	-	-	5.73
247	New York University	Regular Decision	Denied	-	1320	5.69
248	New York University	Early Decision II	Accepted	-	-	5.67
249	New York University	Early Decision II	Denied	-	1360	5.67
250	New York University	Regular Decision	Denied	-	-	5.66
251	New York University	Early Decision	Denied	-	-	5.65
252	New York University	Early Decision	Accepted	-	1180	5.63
253	New York University	Early Decision II	Outcome Unknown (Waitlisted)	-	1210	5.53
254	New York University	Regular Decision	Denied	-	1200	5.53
255	New York University	Regular Decision	Denied	-	1200	5.44
256	New York University	Regular Decision	Denied	-	1080	5.34
257	New York University	Regular Decision	Denied	-	-	5.33
258	New York University	Regular Decision	Denied	-	1200	5.23
259	New York University	Regular Decision	Denied	-	1240	5.16
260	New York University	Regular Decision	Denied	-	-	5.15
261	New York University	Early Decision II	Accepted (Waitlisted)	-	-	5.1
262	New York University	Regular Decision	Denied	-	-	5.06
263	New York University	Early Decision	Denied	-	1080	4.9
264	New York University	Regular Decision	Denied	-	-	4.87
265	New York University	Early Decision	Denied	-	1360	4.87
266	New York University	Early Decision II	Denied	-	1260	4.83
267	New York University	Regular Decision	Denied	-	1140	4.33
268	New York University	Early Decision II	Denied	-	-	4.33
269	Northwestern University	Regular Decision	Denied	-	1420	6.47
270	Northwestern University	Regular Decision	Denied	-	1570	6.81
271	Northwestern University	Early Decision	Denied	-	1450	6.34
272	Northwestern University	Regular Decision	Denied	-	1490	6.04
273	Northwestern University	Regular Decision	Denied	33	1570	6.91
274	Northwestern University	Regular Decision	Denied	22	-	5.9
275	Northwestern University	Regular Decision	Denied	-	1390	6.68
276	Northwestern University	Regular Decision	Denied	-	1470	6.63
277	Northwestern University	Regular Decision	Denied	-	1530	6.59
278	Northwestern University	Regular Decision	Accepted	-	-	6.37
279	Northwestern University	Regular Decision	Denied	-	1490	6.18
280	Princeton University	Restrictive Early Action	Accepted	35	1490	6.91
281	Princeton University	Restrictive Early Action	Accepted	-	1510	6.63
282	Princeton University	Regular Decision	Denied	-	1580	6.66
283	Princeton University	Restrictive Early Action	Denied (Deferred)	-	1570	6.81
284	Princeton University	Restrictive Early Action	Denied (Deferred)	33	1570	6.91
285	Princeton University	Regular Decision	Denied	-	1280	6.23
286	Princeton University	Regular Decision	Denied	-	1600	6.8
287	Princeton University	Regular Decision	Denied	-	1390	6.68
288	Princeton University	Regular Decision	Accepted	-	1560	6.53
289	Princeton University	Restrictive Early Action	Accepted	-	1430	6.44
290	Princeton University	Regular Decision	Denied	-	1560	6.42
291	Princeton University	Restrictive Early Action	Denied (Deferred)	-	1540	6.35
292	Princeton University	Regular Decision	Denied	-	1230	5.88
293	Princeton University	Regular Decision	Denied	-	-	5.78
294	Rice University	Regular Decision	Outcome Unknown (Waitlisted)	-	1580	6.66
295	Rice University	Regular Decision	Outcome Unknown (Waitlisted)	31	-	6.36
296	Rice University	Regular Decision	Denied	-	1510	5.75
297	Rice University	Regular Decision	Denied	-	1450	6.37
298	Rice University	Regular Decision	Accepted	-	1540	6.35
299	Rice University	Regular Decision	Denied	-	1450	6.15
300	Rice University	Early Decision	Accepted	-	1410	6.08
301	Stanford University	Restrictive Early Action	Denied	-	1580	6.66
302	Stanford University	Regular Decision	Denied	-	1460	6.17
303	Stanford University	Regular Decision	Denied	-	1570	6.67
304	Stanford University	Regular Decision	Denied	-	1550	6.56
305	Stanford University	Restrictive Early Action	Denied	-	-	6.37
306	Stanford University	Regular Decision	Denied	-	1540	6.35
307	Stanford University	Regular Decision	Denied	-	1490	6.18
308	Stanford University	Regular Decision	Denied	-	1340	5.58
309	Tufts University	Early Decision II	Accepted	-	1440	6.41
310	Tufts University	Regular Decision	Denied	-	-	5.66
311	Tufts University	Regular Decision	Denied	-	950	5.52
312	Tufts University	Regular Decision	Denied	-	1430	5.57
313	Tufts University	Regular Decision	Denied	-	1540	6.53
314	Tufts University	Regular Decision	Denied	-	-	5.93
315	Tufts University	Early Decision	Denied	-	1030	5.87
316	Tufts University	Regular Decision	Denied	22	-	5.9
317	Tufts University	Regular Decision	Accepted	-	-	6.66
318	Tufts University	Regular Decision	Outcome Unknown (Waitlisted)	-	1440	6.72
319	Tufts University	Regular Decision	Accepted	-	1500	6.58
320	Tufts University	Regular Decision	Denied	-	1560	6.53
321	Tufts University	Early Decision	Accepted	-	-	6.49
322	Tufts University	Regular Decision	Denied	-	1510	6.41
323	Tufts University	Early Decision	Accepted	-	-	6.37
324	Tufts University	Regular Decision	Denied	-	1310	6.34
325	Tufts University	Regular Decision	Denied	-	-	6.2
326	Tufts University	Early Decision	Denied	-	1280	6.18
327	Tufts University	Early Decision	Denied	-	-	6.18
328	Tufts University	Regular Decision	Denied	-	-	6.15
329	Tufts University	Regular Decision	Denied	-	1330	6.11
330	Tufts University	Early Decision	Accepted	-	-	6.06
331	Tufts University	Early Decision II	Accepted	-	-	5.94
332	Tufts University	Regular Decision	Denied	-	1280	5.81
333	Tufts University	Regular Decision	Denied	-	-	5.55
334	Tufts University	Regular Decision	Denied	-	-	5.1
335	University of Chicago	Early Decision	Denied	-	1370	5.6
336	University of Chicago	Early Decision	Denied	-	1500	6.13
337	University of Chicago	Regular Decision	Denied	-	-	5.62
338	University of Chicago	Regular Decision	Denied	-	1490	6.04
339	University of Chicago	Regular Decision	Outcome Unknown (Waitlisted)	-	1580	6.81
340	University of Chicago	Early Decision II	Accepted	-	1510	6.68
341	University of Chicago	Early Decision II	Denied	-	1470	6.63
342	University of Chicago	Early Action	Denied (Deferred)	-	-	6.55
343	University of Chicago	Early Decision	Accepted	-	1510	6.45
344	University of Chicago	Early Action	Denied	-	1490	6.45
345	University of Chicago	Early Decision II	Denied	-	1450	6.37
346	University of Chicago	Early Decision	Accepted	-	1470	6.17
347	University of Chicago	Early Action	Denied	-	1540	6.13
348	University of Chicago	Early Action	Denied (Deferred)	-	-	5.86
349	University of Pennsylvania	Regular Decision	Denied	-	1370	5.6
350	University of Pennsylvania	Regular Decision	Denied	-	1420	6.47
351	University of Pennsylvania	Early Decision	Denied	-	1400	6.73
352	University of Pennsylvania	Regular Decision	Denied	-	-	5.62
353	University of Pennsylvania	Regular Decision	Denied	-	1500	6.6
354	University of Pennsylvania	Regular Decision	Denied	-	1570	6.59
355	University of Pennsylvania	Regular Decision	Denied	33	1570	6.91
356	University of Pennsylvania	Early Decision	Denied	31	-	6.36
357	University of Pennsylvania	Regular Decision	Denied	22	-	5.9
358	University of Pennsylvania	Regular Decision	Denied	-	1560	6.42
359	University of Pennsylvania	Early Decision	Denied	-	1510	6.41
360	University of Pennsylvania	Regular Decision	Denied	-	1450	6.37
361	University of Pennsylvania	Regular Decision	Denied	-	1540	6.35
362	University of Pennsylvania	Regular Decision	Denied	-	-	6.19
363	University of Pennsylvania	Early Decision	Denied (Deferred)	-	1490	6.18
364	University of Pennsylvania	Regular Decision	Denied	-	1490	6.16
365	University of Pennsylvania	Regular Decision	Denied	-	1370	6.07
366	University of Pennsylvania	Regular Decision	Denied	-	1460	5.9
367	University of Pennsylvania	Regular Decision	Denied	-	1230	5.88
368	University of Pennsylvania	Regular Decision	Denied	-	-	5.78
369	University of Pennsylvania	Early Decision	Denied	-	1280	5.49
370	University of Pennsylvania	Regular Decision	Denied	-	1200	5.44
371	University of Pennsylvania	Early Decision	Denied	-	-	5.1
372	Washington University in St. Louis	Regular Decision	Outcome Unknown (Waitlisted)	-	1570	6.59
373	Washington University in St. Louis	Regular Decision	Outcome Unknown (Waitlisted)	33	1570	6.91
374	Washington University in St. Louis	Early Decision II	Accepted	-	1500	6.13
375	Washington University in St. Louis	Early Decision	Accepted	-	1490	6.05
376	Washington University in St. Louis	Regular Decision	Denied	-	1450	6.34
377	Washington University in St. Louis	Regular Decision	Denied	-	1530	6.23
378	Washington University in St. Louis	Regular Decision	Denied	-	1160	5.76
379	Washington University in St. Louis	Regular Decision	Denied	31	-	6.36
380	Washington University in St. Louis	Regular Decision	Accepted	-	1580	6.66
381	Washington University in St. Louis	Regular Decision	Outcome Unknown (Waitlisted)	-	1440	6.72
382	Washington University in St. Louis	Regular Decision	Outcome Unknown (Waitlisted)	-	1470	6.63
383	Washington University in St. Louis	Regular Decision	Outcome Unknown (Waitlisted)	-	1500	6.58
384	Washington University in St. Louis	Early Decision II	Denied (Deferred)	-	-	6.38
385	Washington University in St. Louis	Regular Decision	Accepted	-	-	6.37
386	Washington University in St. Louis	Regular Decision	Denied	-	-	6.23
387	Washington University in St. Louis	Regular Decision	Accepted	-	-	6.19
388	Washington University in St. Louis	Regular Decision	Denied	-	1490	6.16
389	Washington University in St. Louis	Regular Decision	Accepted	-	1330	5.99
390	Washington University in St. Louis	Early Decision	Accepted	-	1500	5.93
391	Washington University in St. Louis	Early Decision	Denied (Deferred)	-	1460	5.9
392	Washington University in St. Louis	Early Decision	Accepted	-	1550	5.88
393	Washington University in St. Louis	Regular Decision	Denied	-	1470	5.87
394	Washington University in St. Louis	Early Decision	Accepted	-	1340	5.82
395	Williams College	Regular Decision	Denied	-	-	6.54
396	Williams College	Regular Decision	Outcome Unknown (Waitlisted)	-	1540	6.35
397	Yale University	Regular Decision	Denied	-	1570	6.81
398	Yale University	Single-Choice Early Action	Denied	-	-	5.62
399	Yale University	Single-Choice Early Action	Denied	-	1540	6.53
400	Yale University	Regular Decision	Denied	-	1510	5.75
401	Yale University	Regular Decision	Denied	-	1490	6.77
402	Yale University	Single-Choice Early Action	Denied (Deferred)	-	1570	6.59
403	Yale University	Regular Decision	Denied	33	1570	6.91
404	Yale University	Regular Decision	Denied	-	1370	6.31
405	Yale University	Restrictive Early Action	Accepted	-	1580	6.81
406	Yale University	Regular Decision	Accepted	-	1600	6.8
407	Yale University	Restrictive Early Action	Accepted	-	-	6.54
408	Yale University	Regular Decision	Denied	-	1560	6.53
409	Yale University	Regular Decision	Denied	-	-	6.38
410	Yale University	Regular Decision	Accepted	-	1540	6.35
411	Yale University	Regular Decision	Denied	-	1230	5.88
412	Yale University	Regular Decision	Denied	-	-	5.78
\.


--
-- Name: ix_raw_data_index; Type: INDEX; Schema: public; Owner: ibcm
--

CREATE INDEX ix_raw_data_index ON public.raw_data USING btree (index);


--
-- PostgreSQL database dump complete
--

