--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Homebrew)
-- Dumped by pg_dump version 14.5 (Homebrew)

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
-- Name: communities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.communities (
    language_id integer,
    world_region_id integer,
    country_id integer,
    language_family_id integer,
    location_id integer,
    community_size text
);


--
-- Name: community_test; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.community_test (
    id integer NOT NULL,
    language text,
    world_region text,
    country text,
    language_family text,
    location text,
    community_size text
);


--
-- Name: community_test_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.community_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: community_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.community_test_id_seq OWNED BY public.community_test.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countries (
    id integer,
    country text
);


--
-- Name: language_families; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.language_families (
    id integer,
    language_family text
);


--
-- Name: languages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.languages (
    id integer,
    language text
);


--
-- Name: locations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.locations (
    id integer,
    location text
);


--
-- Name: world_regions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.world_regions (
    id integer,
    world_region text
);


--
-- Name: community_test id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.community_test ALTER COLUMN id SET DEFAULT nextval('public.community_test_id_seq'::regclass);


--
-- Data for Name: communities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.communities (language_id, world_region_id, country_id, language_family_id, location_id, community_size) FROM stdin;
1	1	1	1	1	Smallest
2	2	2	2	2	Small
2	2	2	2	3	Small
3	3	3	3	3	Smallest
3	3	3	3	4	Smallest
4	4	4	4	5	Smallest
5	4	4	4	5	Small
6	4	5	4	6	Smallest
7	5	6	4	7	Largest
7	5	6	4	8	Largest
7	5	6	4	9	Largest
7	5	6	4	10	Largest
7	5	6	4	11	Largest
7	5	6	4	12	Largest
7	5	6	4	13	Large
8	6	7	4	14	Small
9	6	8	4	15	Small
9	6	8	4	16	Small
9	6	8	4	17	Large
9	6	8	4	18	Medium
10	6	9	4	19	Smallest
11	7	10	5	20	Medium
11	7	10	5	20	Medium
12	8	11	5	21	Small
13	9	12	6	22	Medium
13	9	12	6	23	Small
14	9	12	7	23	Large
14	9	12	7	24	Large
14	9	12	7	25	Large
14	9	12	7	26	Large
14	9	12	7	27	Large
15	10	13	7	28	Small
15	10	13	7	29	Small
15	10	13	7	30	Small
16	11	14	8	31	Smallest
17	11	14	8	31	Small
18	11	15	8	32	Smallest
19	12	16	8	32	Small
20	13	17	8	33	Smallest
21	13	18	8	33	Smallest
22	13	18	8	34	Small
23	13	18	8	35	Small
23	13	18	8	36	Small
23	13	18	8	37	Small
24	14	19	8	37	Medium
25	14	20	8	38	Small
25	14	20	8	39	Medium
26	14	20	8	39	Medium
26	14	20	8	39	Small
26	14	20	8	39	Small
27	14	20	8	40	Smallest
28	14	21	8	41	Small
29	14	22	8	41	Smallest
30	15	23	8	41	Medium
31	15	24	8	42	Medium
31	15	24	8	43	Small
32	15	25	9	44	Smallest
33	15	26	9	45	Medium
34	15	27	10	45	Smallest
35	15	28	11	45	Small
35	15	28	11	46	Medium
35	15	28	11	47	Medium
36	16	29	11	48	Smallest
37	16	30	11	48	Small
38	16	31	11	48	Smallest
39	16	32	11	48	Smallest
40	16	32	11	48	Small
41	16	33	11	49	Small
42	16	34	11	49	Smallest
43	16	35	11	50	Smallest
43	16	35	11	51	Small
44	16	36	12	52	Small
44	16	36	12	52	Medium
44	16	36	12	53	Large
45	16	37	12	53	Smallest
46	16	38	12	53	Smallest
47	16	39	12	53	Small
48	16	39	12	54	Smallest
48	16	39	12	54	Small
48	16	39	12	55	Smallest
49	16	39	12	56	Smallest
49	16	39	12	57	Small
49	16	39	12	57	Small
50	16	40	12	58	Medium
50	16	40	12	59	Small
51	17	41	12	59	Smallest
52	17	41	12	59	Small
53	17	42	13	59	Small
53	17	42	13	60	Small
53	17	42	13	60	Small
54	17	43	13	61	Small
55	17	43	13	62	Small
56	17	43	13	62	Small
57	17	43	13	62	Small
58	17	44	13	62	Large
58	17	44	13	63	Small
59	17	44	13	63	Smallest
60	18	45	13	64	Smallest
60	18	45	13	65	Small
60	18	45	13	66	Smallest
60	18	45	13	67	Small
61	18	46	13	68	Medium
62	18	47	13	69	Smallest
63	18	47	13	70	Small
64	18	48	13	70	Largest
64	18	48	13	71	Small
64	18	48	13	72	Large
64	18	48	13	72	Largest
64	18	48	13	73	Smallest
64	18	48	13	74	Large
64	18	48	13	74	Large
65	18	48	13	74	Smallest
66	18	49	13	74	Small
66	18	49	13	75	Small
67	18	50	13	76	Medium
67	18	50	13	77	Medium
67	18	50	13	77	Medium
68	18	50	13	77	Small
68	18	50	13	78	Smallest
69	18	51	13	78	Small
70	19	52	13	78	Smallest
71	19	52	14	78	Small
72	19	52	14	78	Medium
72	19	52	14	79	Medium
73	19	53	14	79	Smallest
74	19	53	14	79	Smallest
75	19	54	14	80	Small
75	19	54	14	80	Small
75	19	54	14	80	Small
76	19	55	14	80	Medium
76	19	55	14	81	Medium
76	19	55	14	81	Medium
76	19	55	14	81	Medium
77	19	55	14	82	Smallest
77	19	55	14	82	Small
77	19	55	14	83	Small
78	19	56	15	83	Smallest
79	20	57	15	83	Medium
80	20	57	15	83	Smallest
80	20	57	15	83	Smallest
81	20	58	15	83	Small
81	20	58	15	83	Small
81	20	58	15	84	Large
82	20	59	15	84	Small
82	20	59	15	84	Small
83	20	60	15	85	Smallest
84	20	60	15	85	Smallest
85	20	61	15	86	Smallest
86	20	62	15	86	Smallest
86	20	62	15	87	Small
86	20	62	15	88	Small
86	20	62	15	88	Medium
87	20	63	16	89	Smallest
88	20	64	17	89	Small
89	20	64	17	89	Smallest
90	20	64	17	89	Smallest
91	20	64	17	89	Small
91	20	64	17	89	Small
92	20	64	17	89	Medium
93	20	64	17	89	Medium
94	20	64	17	89	Small
95	20	64	17	89	Small
96	20	65	17	89	Medium
97	20	66	17	90	Large
97	20	66	17	91	Small
97	20	66	17	92	Large
97	20	66	17	93	Largest
97	20	66	17	93	Largest
97	20	66	17	93	Large
98	20	67	17	94	Small
98	20	67	17	94	Smallest
99	20	68	17	95	Smallest
100	20	69	17	96	Small
100	20	69	17	97	Medium
100	20	69	17	97	Medium
101	20	69	17	97	Small
102	20	69	17	97	Medium
102	20	69	17	97	Smallest
103	20	70	17	98	Large
103	20	70	17	99	Medium
103	20	70	17	100	Large
103	20	70	17	100	Large
103	20	70	17	101	Small
103	20	70	17	102	Medium
104	20	70	17	102	Small
105	20	71	17	102	Smallest
106	20	72	17	102	Smallest
107	20	73	17	102	Smallest
108	20	73	17	102	Smallest
109	20	74	17	103	Smallest
110	20	74	17	103	Smallest
111	21	74	17	103	Smallest
112	21	74	17	103	Smallest
113	21	75	17	103	Small
114	21	75	17	103	Smallest
115	21	76	17	103	Smallest
116	21	76	17	103	Smallest
117	21	76	17	103	Smallest
117	21	76	17	103	Smallest
118	21	76	17	104	Smallest
119	21	76	18	104	Smallest
120	21	77	18	104	Smallest
121	21	78	18	104	Smallest
122	21	79	18	105	Small
123	21	79	18	106	Smallest
123	21	79	18	107	Smallest
124	21	79	19	107	Smallest
125	21	80	19	107	Medium
126	21	80	19	107	Smallest
127	21	81	20	107	Smallest
128	21	81	20	107	Smallest
128	21	81	20	107	Medium
129	21	82	20	107	Smallest
130	21	82	20	107	Smallest
131	21	82	20	108	Small
131	21	82	20	109	Small
131	21	82	20	110	Small
132	21	83	20	110	Large
132	21	83	20	110	Medium
132	21	83	20	110	Large
132	21	83	20	110	Large
133	21	84	20	110	Medium
133	21	84	20	111	Medium
134	21	84	20	111	Smallest
135	21	84	20	111	Small
135	21	84	20	111	Medium
136	21	85	20	112	Medium
136	21	85	20	112	Largest
136	21	85	20	112	Medium
137	21	86	20	112	Smallest
138	21	87	20	112	Medium
138	21	87	20	113	Small
138	21	87	20	113	Small
139	21	87	20	113	Medium
140	21	88	20	113	Medium
141	21	89	20	114	Small
141	21	89	20	114	Small
141	21	89	20	114	Medium
142	21	90	20	115	Large
142	21	90	20	115	Medium
142	21	90	20	116	Medium
143	21	90	20	117	Smallest
144	21	91	20	117	Medium
145	21	92	20	118	Small
146	21	93	20	119	Small
146	21	93	20	119	Small
147	21	93	20	120	Smallest
148	21	93	20	121	Smallest
149	21	93	20	122	Small
150	21	94	20	122	Smallest
150	21	94	20	122	Small
151	21	95	20	122	Smallest
152	21	96	20	123	Small
153	21	97	20	124	Medium
153	21	97	20	124	Smallest
153	21	97	20	125	Small
154	21	97	20	125	Smallest
154	21	97	20	125	Smallest
155	21	98	20	125	Smallest
156	21	99	21	125	Small
157	21	99	21	125	Smallest
158	21	100	21	125	Smallest
159	21	100	21	125	Smallest
160	21	101	21	126	Largest
160	21	101	21	127	Largest
160	21	101	21	127	Largest
160	21	101	21	127	Largest
160	21	101	21	127	Largest
160	21	101	21	127	Largest
160	21	101	21	127	Largest
161	21	101	21	127	Smallest
162	21	102	21	127	Smallest
163	21	103	21	127	Large
163	21	103	21	127	Medium
163	21	103	21	128	Large
163	21	103	21	129	Medium
164	21	104	21	129	Medium
164	21	104	21	129	Smallest
164	21	104	21	129	Medium
165	21	105	21	130	Smallest
165	21	105	21	130	Small
166	21	106	21	130	Medium
167	21	106	21	130	Smallest
168	21	107	21	130	Medium
168	21	107	21	131	Medium
169	21	108	21	131	Medium
169	21	108	21	131	Medium
169	21	108	21	132	Medium
170	21	108	21	132	Large
170	21	108	21	133	Medium
170	21	108	21	133	Large
170	21	108	21	133	Medium
170	21	108	21	133	Largest
171	21	108	21	133	Smallest
171	21	108	21	134	Small
171	21	108	21	134	Small
172	21	108	21	134	Medium
173	21	109	21	134	Medium
173	21	109	21	134	Medium
173	21	109	21	134	Large
173	21	109	21	134	Medium
173	21	109	21	134	Small
174	21	110	21	134	Smallest
175	21	110	21	134	Small
175	21	110	21	134	Small
176	21	110	21	134	Small
177	21	111	21	134	Small
178	21	112	22	134	Smallest
178	21	112	22	134	Small
179	21	113	22	134	Medium
179	21	113	22	134	Smallest
180	21	113	22	134	Small
181	21	114	22	134	Smallest
182	21	115	22	134	Smallest
183	21	115	22	134	Medium
184	21	115	22	134	Small
185	21	116	22	134	Smallest
186	21	117	22	134	Small
186	21	117	22	134	Small
186	21	117	22	134	Medium
187	21	118	22	134	Smallest
188	21	119	22	134	Smallest
189	21	120	22	134	Smallest
190	21	121	22	134	Smallest
191	21	122	22	134	Large
191	21	122	22	135	Medium
191	21	122	22	136	Medium
191	21	122	22	137	Large
191	21	122	22	138	Medium
191	21	122	22	138	Medium
191	21	122	22	138	Medium
192	21	123	22	138	Smallest
193	21	124	22	138	Smallest
194	21	124	22	139	Small
194	21	124	22	139	Small
195	21	125	22	139	Largest
195	21	125	22	139	Largest
195	21	125	22	139	Largest
195	21	125	22	139	Largest
196	21	126	22	139	Medium
196	21	126	22	139	Medium
196	21	126	22	139	Medium
197	21	127	23	139	Smallest
198	21	127	23	139	Small
199	21	127	23	139	Small
200	21	127	23	139	Medium
200	21	127	23	139	Medium
200	21	127	23	139	Small
201	21	127	23	139	Smallest
202	21	127	23	139	Small
203	21	128	24	139	Small
203	21	128	24	139	Smallest
203	21	128	24	140	Medium
203	21	128	24	141	Largest
204	21	128	24	142	Smallest
205	21	129	24	142	Medium
205	21	129	24	142	Medium
205	21	129	24	143	Medium
205	21	129	24	143	Large
206	21	130	24	143	Smallest
207	21	131	25	143	Small
207	21	131	25	144	Small
207	21	131	25	144	Medium
208	21	132	25	144	Largest
208	21	132	25	144	Medium
208	21	132	25	144	Small
208	21	132	25	144	Large
208	21	132	25	145	Largest
209	21	133	25	145	Small
209	21	133	25	145	Small
210	21	133	25	145	Smallest
211	21	133	25	145	Large
212	21	133	25	145	Small
213	21	134	25	145	Smallest
213	21	134	25	145	Smallest
214	21	135	25	145	Smallest
215	21	136	25	145	Smallest
216	21	136	25	145	Smallest
217	21	137	25	145	Medium
218	21	138	25	145	Smallest
219	21	139	25	146	Medium
219	21	139	25	146	Medium
219	21	139	25	146	Large
219	21	139	25	146	Medium
219	21	139	25	146	Medium
220	21	140	25	146	Medium
220	21	140	25	147	Medium
221	21	141	25	147	Smallest
222	21	142	26	147	Small
222	21	142	26	148	Small
223	21	142	26	148	Small
224	21	143	26	148	Smallest
225	21	143	26	148	Largest
225	21	143	26	148	Medium
225	21	143	26	148	Largest
225	21	143	26	148	Medium
226	21	144	26	148	Medium
227	21	144	26	148	Smallest
227	21	144	26	148	Smallest
228	21	145	26	148	Smallest
229	21	145	26	148	Smallest
230	21	146	26	148	Smallest
231	21	146	26	148	Smallest
232	21	146	26	148	Smallest
232	21	146	26	148	Small
233	21	147	26	148	Large
233	21	147	26	148	Medium
233	21	147	26	148	Largest
233	21	147	26	148	Large
234	21	147	26	148	Smallest
235	21	147	26	148	Medium
236	21	148	26	148	Largest
236	21	148	26	149	Medium
236	21	148	26	149	Largest
236	21	148	26	149	Largest
236	21	148	26	149	Medium
237	21	149	26	149	Smallest
237	21	149	26	149	Smallest
238	21	149	26	149	Smallest
239	21	149	26	149	Small
239	21	149	26	149	Small
240	21	150	27	149	Medium
241	21	151	27	149	Medium
241	21	151	27	150	Largest
241	21	151	27	150	Largest
241	21	151	27	150	Largest
242	21	152	27	150	Small
242	21	152	27	150	Small
243	21	153	27	150	Small
243	21	153	27	151	Small
243	21	153	27	151	Small
243	21	153	27	151	Small
244	21	153	27	151	Smallest
245	21	153	27	151	Small
246	21	153	27	152	Small
247	21	153	27	152	Small
247	21	153	27	152	Large
247	21	153	27	152	Medium
247	21	153	27	153	Medium
247	21	153	27	153	Large
247	21	153	27	153	Medium
248	21	154	27	153	Small
249	21	154	27	153	Largest
249	21	154	27	153	Medium
249	21	154	27	153	Large
249	21	154	27	153	Medium
249	21	154	27	154	Large
250	21	155	28	154	Smallest
251	21	155	28	154	Medium
252	21	155	29	155	Smallest
253	21	155	29	155	Medium
254	21	155	29	155	Medium
254	21	155	29	156	Large
254	21	155	29	157	Medium
254	21	155	29	157	Medium
255	21	155	29	157	Smallest
255	21	155	29	157	Smallest
256	21	155	29	157	Smallest
257	21	155	29	157	Small
258	21	156	29	157	Smallest
259	21	156	29	157	Medium
259	21	156	29	157	Medium
259	21	156	29	157	Medium
259	21	156	29	157	Medium
259	21	156	29	157	Medium
260	21	156	29	157	Smallest
260	21	156	29	157	Medium
261	21	156	29	157	Smallest
261	21	156	29	157	Smallest
262	21	156	29	158	Largest
263	21	156	29	158	Medium
263	21	156	29	158	Medium
264	21	157	29	158	Smallest
265	21	157	29	158	Smallest
265	21	157	29	158	Smallest
266	21	158	30	158	Smallest
267	21	158	30	158	Smallest
268	21	158	30	158	Small
269	21	159	30	159	Small
269	21	159	30	160	Small
270	21	160	30	160	Small
270	21	160	30	161	Medium
270	21	160	30	162	Small
270	21	160	30	163	Smallest
271	21	161	30	164	Large
271	21	161	30	164	Largest
271	21	161	30	165	Largest
271	21	161	30	166	Largest
271	21	161	30	167	Largest
272	21	161	30	167	Small
273	21	162	31	167	Small
274	21	163	31	167	Smallest
275	21	164	31	167	Smallest
276	21	165	31	167	Smallest
276	21	165	31	167	Small
277	21	165	31	167	Smallest
278	21	165	31	167	Medium
278	21	165	31	167	Large
278	21	165	31	167	Large
278	21	165	31	168	Large
278	21	165	31	168	Large
278	21	165	31	168	Large
279	21	165	31	169	Largest
279	21	165	31	169	Largest
279	21	165	31	170	Largest
279	21	165	31	170	Largest
279	21	165	31	170	Largest
280	21	165	31	170	Smallest
281	21	165	32	170	Smallest
282	21	166	32	171	Largest
282	21	166	32	171	Largest
282	21	166	32	171	Largest
282	21	166	32	171	Largest
282	21	166	32	172	Medium
283	21	167	33	173	Medium
283	21	167	33	173	Smallest
283	21	167	33	173	Medium
283	21	167	33	173	Large
283	21	167	33	174	Medium
284	21	167	33	174	Small
285	21	167	33	175	Medium
286	21	168	33	175	Large
286	21	168	33	175	Large
287	21	168	33	176	Largest
287	21	168	33	176	Largest
287	21	168	33	176	Largest
287	21	168	33	177	Medium
287	21	168	33	178	Largest
288	21	169	33	178	Smallest
289	21	169	33	178	Small
290	21	170	33	178	Largest
291	21	171	33	178	Smallest
292	21	172	33	178	Smallest
293	21	173	33	178	Smallest
294	21	174	33	178	Smallest
295	21	175	33	178	Smallest
296	21	175	33	178	Smallest
297	21	175	33	178	Smallest
297	21	175	33	178	Smallest
298	21	175	33	179	Smallest
299	21	175	33	179	Medium
299	21	175	33	179	Medium
300	21	176	33	179	Medium
300	21	176	33	179	Medium
300	21	176	33	179	Smallest
300	21	176	33	179	Smallest
301	21	177	33	179	Medium
302	21	177	33	180	Smallest
302	21	177	33	180	Smallest
302	21	177	33	180	Small
303	21	178	33	180	Small
304	21	178	33	180	Smallest
305	21	179	33	180	Small
306	21	180	33	180	Smallest
307	21	181	33	180	Smallest
308	21	182	33	181	Smallest
309	21	182	33	181	Smallest
310	21	182	34	181	Smallest
311	21	182	34	181	Smallest
312	21	183	34	181	Medium
313	21	184	34	181	Small
313	21	184	34	182	Small
314	21	184	34	182	Small
315	21	184	34	182	Medium
315	21	184	34	183	Medium
316	21	184	34	184	Smallest
316	21	184	34	184	Small
316	21	184	34	184	Smallest
316	21	184	34	184	Smallest
317	21	184	34	184	Smallest
317	21	184	34	184	Small
318	21	185	34	184	Smallest
319	21	186	34	184	Small
319	21	186	34	184	Smallest
319	21	186	34	184	Smallest
320	21	186	34	184	Smallest
321	21	186	34	184	Smallest
322	21	187	34	184	Smallest
323	21	188	34	184	Small
323	21	188	34	184	Smallest
324	21	188	34	184	Smallest
325	21	189	34	184	Small
326	21	189	34	184	Smallest
327	21	189	34	184	Small
327	21	189	34	184	Small
328	21	190	35	184	Small
328	21	190	35	184	Medium
329	21	190	35	185	Smallest
330	21	191	35	185	Medium
330	21	191	35	185	Smallest
331	21	192	35	185	Small
332	21	192	35	185	Smallest
333	21	193	35	185	Small
333	21	193	35	185	Small
334	21	194	35	185	Smallest
335	21	195	35	185	Smallest
336	21	196	35	186	Smallest
337	21	196	35	186	Small
338	21	196	35	186	Medium
338	21	196	35	186	Medium
339	21	196	35	186	Medium
340	21	196	35	186	Smallest
341	21	197	35	186	Small
342	21	198	35	187	Large
342	21	198	35	188	Largest
342	21	198	35	188	Medium
342	21	198	35	188	Medium
342	21	198	35	188	Largest
343	21	199	35	188	Small
343	21	199	35	188	Small
344	21	200	35	188	Smallest
345	21	201	35	188	Smallest
346	21	201	35	188	Small
347	21	202	35	188	Small
348	21	202	35	188	Small
349	21	202	35	188	Smallest
350	21	203	36	188	Smallest
351	21	204	36	188	Smallest
352	21	205	36	188	Smallest
353	21	206	36	189	Small
353	21	206	36	189	Smallest
354	21	206	36	189	Smallest
355	21	207	36	189	Smallest
356	21	208	36	189	Small
357	21	209	36	189	Small
358	21	209	36	189	Smallest
358	21	209	36	189	Smallest
359	21	210	37	190	Smallest
360	21	210	37	190	Smallest
361	21	211	37	190	Small
361	21	211	37	190	Small
362	21	211	37	191	Smallest
363	21	212	37	191	Smallest
363	21	212	37	191	Small
364	21	213	37	191	Smallest
365	21	214	37	192	Medium
365	21	214	37	192	Smallest
365	21	214	37	192	Medium
366	21	215	38	193	Medium
366	21	215	38	194	Medium
366	21	215	38	195	Medium
366	21	215	38	196	Medium
366	21	215	38	196	Medium
366	21	215	38	196	Medium
366	21	215	38	197	Medium
366	21	215	38	197	Medium
367	21	215	38	198	Large
368	21	215	38	198	Smallest
369	21	215	38	198	Medium
370	21	216	38	198	Small
371	21	217	38	198	Smallest
372	21	218	38	198	Small
373	21	219	38	198	Smallest
374	21	219	38	198	Small
375	21	220	38	198	Smallest
376	21	220	38	198	Smallest
377	21	221	38	198	Small
377	21	221	38	198	Small
377	21	221	38	198	Small
378	21	221	38	198	Medium
378	21	221	38	198	Medium
379	21	221	38	199	Smallest
379	21	221	38	199	Small
379	21	221	38	199	Small
380	21	221	38	199	Smallest
381	21	222	38	199	Small
382	21	222	38	199	Smallest
383	21	223	38	199	Small
384	21	223	38	200	Medium
385	21	224	38	200	Small
386	21	224	38	200	Small
387	21	224	38	200	Small
387	21	224	38	200	Small
388	21	224	38	201	Small
389	21	225	38	201	Medium
389	21	225	38	201	Medium
390	21	225	39	202	Smallest
391	21	225	39	202	Smallest
392	21	226	39	203	Smallest
393	21	227	39	203	Smallest
394	21	228	39	203	Small
394	21	228	39	203	Small
394	21	228	39	204	Small
394	21	228	39	205	Smallest
395	21	229	39	205	Small
396	21	229	39	205	Smallest
396	21	229	39	205	Smallest
397	21	229	39	205	Small
398	21	229	39	205	Smallest
399	21	229	39	205	Smallest
400	21	229	39	205	Small
400	21	229	39	205	Medium
401	21	229	39	205	Smallest
401	21	229	39	205	Smallest
402	21	230	39	205	Smallest
402	21	230	39	205	Smallest
402	21	230	39	205	Small
403	21	231	39	205	Small
403	21	231	39	205	Small
404	21	231	39	205	Medium
404	21	231	39	206	Medium
404	21	231	39	207	Medium
404	21	231	39	208	Medium
405	21	232	39	208	Medium
406	21	233	39	208	Small
406	21	233	39	208	Small
406	21	233	39	208	Small
406	21	233	39	209	Small
406	21	233	39	210	Small
407	21	233	39	210	Smallest
408	21	233	39	210	Small
409	21	233	39	210	Small
410	21	233	39	211	Large
410	21	233	39	212	Large
410	21	233	39	212	Small
410	21	233	39	212	Largest
410	21	233	39	212	Largest
410	21	233	39	212	Largest
410	21	233	39	212	Largest
411	21	233	39	212	Small
412	21	233	39	212	Medium
412	21	233	39	212	Small
412	21	233	39	212	Medium
413	21	233	39	212	Smallest
414	21	233	39	212	Smallest
415	21	234	39	212	Medium
415	21	234	39	212	Medium
415	21	234	39	212	Small
415	21	234	39	212	Medium
416	21	235	39	212	Smallest
417	21	236	40	212	Smallest
418	21	236	40	212	Smallest
418	21	236	40	212	Smallest
419	21	236	40	212	Medium
419	21	236	40	213	Small
419	21	236	40	213	Smallest
420	21	236	40	214	Small
421	21	237	40	214	Smallest
422	21	237	40	214	Smallest
423	21	238	40	214	Smallest
424	21	239	40	214	Smallest
425	21	239	40	214	Medium
426	21	239	41	214	Smallest
427	21	239	41	214	Medium
428	21	240	41	214	Smallest
429	21	240	41	214	Smallest
429	21	240	41	214	Smallest
430	21	240	41	215	Smallest
431	21	240	41	215	Smallest
432	21	240	41	215	Small
433	21	240	41	215	Small
434	21	240	41	216	Small
435	21	241	41	216	Smallest
435	21	241	41	216	Smallest
435	21	241	41	216	Small
436	21	241	41	216	Largest
436	21	241	41	216	Largest
436	21	241	41	216	Largest
436	21	241	41	216	Largest
436	21	241	41	216	Large
436	21	241	41	216	Largest
437	21	242	41	216	Smallest
438	21	242	41	216	Small
439	21	243	41	216	Smallest
440	21	243	41	216	Smallest
441	21	243	41	216	Medium
441	21	243	41	216	Small
441	21	243	41	216	Small
441	21	243	41	216	Small
441	21	243	41	216	Medium
441	21	243	41	216	Small
442	21	243	41	216	Small
443	21	243	41	217	Medium
443	21	243	41	218	Medium
444	21	243	42	218	Smallest
445	21	244	42	218	Smallest
445	21	244	42	218	Small
446	21	244	42	218	Small
446	21	244	42	219	Small
447	21	244	42	219	Smallest
448	21	244	42	219	Smallest
449	21	244	42	219	Smallest
450	21	244	42	220	Medium
451	21	245	42	220	Small
451	21	245	42	220	Small
452	21	246	42	220	Smallest
453	21	247	42	220	Medium
453	21	247	42	220	Medium
453	21	247	42	220	Small
454	21	247	42	220	Small
454	21	247	42	220	Small
454	21	247	42	220	Smallest
455	21	247	42	220	Smallest
455	21	247	42	220	Small
455	21	247	42	221	Small
455	21	247	42	221	Small
456	21	248	42	222	Smallest
457	21	248	42	222	Smallest
458	21	248	42	222	Smallest
459	21	249	42	222	Smallest
460	21	250	42	222	Smallest
461	21	250	42	222	Smallest
462	21	250	42	222	Small
463	21	250	42	222	Medium
463	21	250	42	222	Medium
463	21	250	42	222	Small
463	21	250	42	222	Medium
463	21	250	42	222	Medium
463	21	250	42	222	Small
464	21	250	42	222	Smallest
465	21	251	42	223	Smallest
466	21	251	42	223	Largest
467	21	252	42	223	Smallest
468	21	252	42	223	Smallest
469	21	253	42	223	Smallest
469	21	253	42	223	Smallest
470	21	253	42	223	Medium
470	21	253	42	223	Medium
470	21	253	42	223	Large
470	21	253	42	223	Small
471	21	254	42	223	Smallest
472	21	254	42	223	Medium
472	21	254	42	223	Small
472	21	254	42	223	Small
472	21	254	42	223	Medium
473	21	254	42	223	Medium
474	21	254	42	223	Medium
475	21	254	42	223	Medium
476	21	254	42	223	Large
477	21	254	42	223	Small
478	21	254	42	223	Medium
479	21	254	42	223	Small
479	21	254	42	223	Small
480	21	254	42	223	Smallest
481	21	255	42	223	Medium
481	21	255	42	223	Large
481	21	255	42	223	Medium
481	21	255	42	223	Medium
481	21	255	42	223	Small
482	21	255	42	223	Medium
483	21	255	42	223	Medium
483	21	255	42	223	Medium
484	21	256	42	223	Smallest
485	21	257	42	223	Small
486	21	258	42	224	Small
486	21	258	42	224	Smallest
486	21	258	42	224	Medium
487	21	258	43	224	Smallest
488	21	258	43	224	Small
489	21	259	43	224	Smallest
490	21	260	43	224	Small
491	21	260	43	225	Small
492	21	260	43	225	Smallest
492	21	260	43	225	Smallest
493	21	260	43	225	Smallest
494	21	261	43	225	Small
495	21	262	43	225	Smallest
496	21	263	43	225	Smallest
497	21	263	43	225	Small
497	21	263	43	225	Small
498	21	263	44	225	Smallest
499	21	263	44	225	Smallest
500	21	263	44	225	Large
500	21	263	44	225	Large
501	21	264	44	225	Medium
502	21	265	44	225	Smallest
503	21	265	44	225	Smallest
504	21	266	44	225	Small
504	21	266	44	225	Small
505	21	266	44	225	Small
506	21	266	44	225	Smallest
507	21	267	44	225	Medium
508	21	267	44	225	Medium
509	21	267	44	225	Smallest
509	21	267	44	225	Smallest
510	21	267	45	225	Smallest
511	21	268	45	225	Smallest
512	21	268	45	225	Small
512	21	268	45	225	Small
513	21	269	45	226	Medium
513	21	269	45	226	Small
513	21	269	45	226	Small
514	21	269	45	226	Medium
514	21	269	45	226	Medium
514	21	269	45	226	Small
514	21	269	45	226	Medium
515	21	270	45	226	Small
515	21	270	45	226	Smallest
516	21	270	45	226	Medium
516	21	270	45	226	Medium
517	21	270	45	226	Medium
517	21	270	45	226	Largest
518	21	271	45	226	Smallest
519	21	272	45	226	Smallest
520	21	272	45	227	Smallest
521	21	273	45	227	Large
521	21	273	45	227	Medium
521	21	273	45	228	Large
521	21	273	45	228	Large
521	21	273	45	228	Small
521	21	273	45	228	Medium
522	21	274	45	229	Medium
522	21	274	45	229	Medium
523	21	274	45	229	Smallest
524	21	275	45	229	Medium
524	21	275	45	229	Smallest
524	21	275	45	229	Medium
524	21	275	45	229	Medium
525	21	275	45	229	Smallest
526	21	275	45	229	Smallest
527	21	275	45	229	Largest
527	21	275	45	229	Large
527	21	275	45	229	Largest
527	21	275	45	229	Largest
527	21	275	45	229	Largest
527	21	275	45	229	Large
527	21	275	45	229	Large
528	21	275	45	229	Smallest
529	21	275	45	229	Smallest
530	21	275	45	229	Smallest
531	21	275	45	229	Small
532	21	275	45	229	Medium
533	21	275	45	230	Smallest
534	21	275	45	230	Small
534	21	275	45	231	Small
535	21	275	45	231	Medium
536	21	275	45	232	Smallest
537	21	275	45	232	Medium
537	21	275	45	232	Medium
537	21	275	45	232	Medium
537	21	275	45	232	Large
537	21	275	45	232	Smallest
538	21	275	45	232	Smallest
539	21	275	45	232	Smallest
540	21	276	45	232	Small
541	21	276	45	232	Medium
542	21	276	45	232	Large
543	21	277	45	232	Smallest
543	21	277	45	232	Smallest
544	21	278	45	232	Large
545	21	278	45	232	Small
546	21	278	45	232	Smallest
547	21	279	45	232	Medium
547	21	279	45	232	Small
548	21	280	45	232	Medium
548	21	280	45	232	Medium
548	21	280	45	232	Medium
549	21	281	45	232	Smallest
550	21	281	45	232	Smallest
550	21	281	45	233	Smallest
551	21	281	45	233	Largest
551	21	281	45	234	Large
551	21	281	45	234	Large
551	21	281	45	235	Small
551	21	281	45	235	Large
551	21	281	45	236	Medium
552	21	282	45	236	Small
552	21	282	45	237	Small
552	21	282	45	237	Smallest
552	21	282	45	237	Small
553	21	283	45	237	Smallest
554	22	284	45	237	Smallest
555	22	284	45	237	Smallest
556	22	284	45	237	Medium
557	22	285	45	237	Smallest
558	22	285	45	238	Smallest
559	22	285	45	238	Smallest
560	22	285	45	238	Medium
560	22	285	45	238	Medium
561	22	285	45	238	Smallest
562	22	285	45	238	Small
563	22	286	45	238	Smallest
564	22	286	45	238	Smallest
564	22	286	45	238	Smallest
565	22	286	45	238	Small
565	22	286	45	239	Small
566	22	286	45	239	Smallest
567	22	286	45	239	Smallest
567	22	286	45	239	Small
568	22	286	45	239	Smallest
569	22	287	45	239	Small
569	22	287	45	239	Small
570	22	288	45	239	Medium
570	22	288	45	240	Medium
570	22	288	45	240	Medium
571	22	288	45	240	Medium
571	22	288	45	240	Medium
572	22	289	45	240	Smallest
573	22	289	45	240	Smallest
573	22	289	45	240	Smallest
573	22	289	45	240	Smallest
574	22	289	45	240	Medium
574	22	289	45	240	Medium
575	22	290	45	240	Smallest
576	22	290	45	240	Small
577	22	290	45	241	Smallest
577	22	290	45	241	Medium
577	22	290	45	241	Smallest
578	22	290	45	241	Smallest
578	22	290	45	241	Smallest
579	22	290	45	242	Medium
580	22	291	45	242	Smallest
581	22	291	46	242	Smallest
582	22	291	46	242	Small
582	22	291	46	242	Smallest
583	22	291	46	242	Small
584	22	291	46	242	Medium
585	22	291	46	242	Small
585	22	291	46	242	Medium
585	22	291	46	242	Large
585	22	291	46	243	Medium
585	22	291	46	243	Small
585	22	291	46	243	Small
586	22	291	46	243	Small
586	22	291	46	243	Small
587	22	291	46	243	Smallest
588	22	291	46	243	Smallest
589	22	292	46	243	Smallest
590	22	292	46	243	Small
590	22	292	46	243	Smallest
590	22	292	46	243	Small
591	22	293	46	243	Smallest
592	22	294	46	243	Medium
592	22	294	46	243	Small
592	22	294	46	243	Small
593	22	294	46	243	Smallest
594	22	295	46	243	Small
594	22	295	46	243	Small
594	22	295	46	243	Small
594	22	295	46	243	Small
595	22	295	46	244	Small
595	22	295	46	244	Smallest
595	22	295	46	244	Small
596	22	296	46	244	Small
597	22	297	47	244	Small
597	22	297	47	244	Smallest
598	22	298	47	244	Large
598	22	298	47	244	Small
599	22	298	47	244	Smallest
600	22	299	47	244	Medium
601	22	300	47	244	Large
601	22	300	47	244	Large
602	22	300	47	244	Small
603	22	300	47	244	Largest
603	22	300	47	244	Largest
604	22	300	47	244	Smallest
605	22	300	47	245	Medium
606	22	300	47	245	Smallest
607	22	300	47	246	Small
607	22	300	47	246	Small
608	22	301	47	247	Small
609	22	302	47	247	Medium
610	22	302	47	247	Medium
611	22	302	47	247	Small
612	22	302	47	247	Small
612	22	302	47	247	Medium
613	22	302	47	247	Small
614	22	303	47	247	Small
614	22	303	47	247	Small
615	22	304	47	247	Smallest
616	22	304	47	247	Large
617	22	305	47	247	Small
617	22	305	47	247	Smallest
617	22	305	47	247	Small
618	22	306	47	247	Smallest
619	22	307	47	247	Medium
619	22	307	47	247	Medium
619	22	307	47	247	Smallest
620	22	308	47	247	Medium
621	22	308	47	247	Medium
621	22	308	47	247	Medium
621	22	308	47	247	Small
621	22	308	47	247	Large
621	22	308	47	247	Medium
622	22	308	47	248	Small
622	22	308	47	248	Small
623	22	309	47	248	Medium
623	22	309	47	249	Medium
623	22	309	47	249	Medium
624	22	309	47	249	Small
625	22	309	47	249	Medium
625	22	309	47	249	Medium
625	22	309	47	249	Medium
625	22	309	47	249	Large
625	22	309	47	249	Largest
625	22	309	47	249	Medium
626	22	309	47	249	Large
626	22	309	47	249	Medium
626	22	309	47	249	Medium
627	22	309	47	249	Medium
627	22	309	47	249	Large
628	22	310	47	249	Medium
628	22	310	47	249	Medium
629	22	310	47	249	Smallest
629	22	310	47	249	Medium
630	22	310	47	249	Medium
630	22	310	47	249	Small
630	22	310	47	249	Medium
630	22	310	47	249	Medium
631	22	310	47	249	Smallest
632	22	310	47	249	Smallest
633	22	311	47	249	Smallest
634	22	311	47	249	Small
635	22	311	47	249	Small
635	22	311	47	249	Small
636	22	311	47	249	Smallest
637	22	311	47	249	Smallest
638	22	312	47	250	Small
639	22	312	47	250	Smallest
640	22	312	47	250	Small
640	22	312	47	250	Large
640	22	312	47	251	Medium
641	22	313	47	251	Small
642	22	313	47	251	Small
642	22	313	47	251	Smallest
642	22	313	47	251	Smallest
643	22	314	47	251	Small
643	22	314	47	251	Small
644	22	314	47	251	Smallest
645	22	315	47	251	Smallest
646	22	316	47	252	Small
646	22	316	47	252	Small
646	22	316	47	252	Medium
646	22	316	47	252	Small
647	22	316	47	252	Smallest
647	22	316	47	252	Smallest
648	22	316	47	252	Small
649	22	316	47	252	Medium
649	22	316	47	252	Small
649	22	316	47	252	Medium
649	22	316	47	252	Small
649	22	316	47	252	Smallest
649	22	316	47	253	Small
650	22	317	47	253	Small
651	22	317	47	253	Small
651	22	317	47	253	Small
652	22	317	47	253	Smallest
653	22	317	47	253	Smallest
653	22	317	47	253	Small
654	22	318	47	253	Small
655	22	318	47	253	Smallest
656	22	318	47	253	Smallest
657	22	318	47	253	Smallest
658	22	319	47	253	Smallest
659	22	319	47	253	Smallest
660	22	320	47	253	Medium
660	22	320	47	253	Medium
660	22	320	47	253	Medium
660	22	320	47	253	Small
660	22	320	47	253	Medium
661	22	320	47	253	Large
661	22	320	47	253	Small
661	22	320	47	253	Largest
661	22	320	47	253	Largest
662	22	320	47	253	Smallest
663	22	320	47	253	Small
664	22	320	47	253	Smallest
665	22	321	47	253	Smallest
666	22	321	47	253	Small
667	22	321	47	253	Smallest
668	22	321	47	253	Smallest
669	22	322	47	253	Small
670	22	323	47	253	Smallest
671	22	323	47	253	Medium
671	22	323	47	253	Medium
671	22	323	47	253	Medium
671	22	323	47	253	Small
672	22	324	47	253	Smallest
673	22	325	47	254	Small
674	22	325	47	254	Small
675	22	325	47	254	Smallest
676	22	325	47	254	Small
676	22	325	47	254	Large
676	22	325	47	254	Small
676	22	325	47	254	Medium
677	22	325	47	254	Smallest
677	22	325	47	254	Smallest
678	22	325	47	254	Smallest
679	22	325	47	254	Medium
680	22	326	47	255	Medium
680	22	326	47	255	Smallest
680	22	326	47	255	Small
680	22	326	47	256	Medium
680	22	326	47	256	Medium
680	22	326	47	256	Small
681	22	327	47	256	Medium
682	22	327	47	256	Smallest
683	22	327	47	257	Medium
684	22	327	47	257	Medium
684	22	327	47	257	Large
684	22	327	47	257	Medium
684	22	327	47	257	Large
684	22	327	47	257	Large
684	22	327	47	257	Large
685	22	327	47	257	Small
686	22	328	47	257	Small
687	22	329	47	257	Smallest
687	22	329	47	257	Small
688	22	330	47	258	Medium
688	22	330	47	258	Small
688	22	330	47	258	Large
689	22	330	47	258	Small
690	22	330	47	258	Smallest
691	22	331	47	258	Medium
692	22	332	47	258	Medium
692	22	332	47	258	Medium
692	22	332	47	258	Medium
692	22	332	47	258	Medium
693	22	333	47	258	Medium
694	22	333	47	258	Small
695	22	333	47	258	Smallest
696	22	333	47	258	Smallest
696	22	333	47	258	Smallest
696	22	333	47	258	Smallest
697	22	334	47	258	Smallest
698	22	334	47	258	Smallest
699	22	334	47	258	Smallest
700	22	334	47	258	Smallest
701	22	334	47	258	Smallest
702	22	334	47	258	Smallest
703	22	334	47	258	Medium
703	22	334	47	258	Medium
703	22	334	47	258	Large
704	22	335	47	258	Smallest
705	22	336	47	258	Medium
705	22	336	47	258	Large
705	22	336	47	258	Small
705	22	336	47	258	Smallest
705	22	336	47	258	Small
706	22	336	47	258	Smallest
707	22	336	47	258	Smallest
708	22	337	47	258	Small
708	22	337	47	258	Medium
708	22	337	47	258	Medium
709	22	338	47	258	Smallest
710	22	338	47	258	Smallest
711	22	338	47	259	Smallest
712	22	338	47	259	Small
713	22	339	47	259	Small
713	22	339	47	259	Large
713	22	339	47	259	Medium
714	22	340	47	259	Medium
715	22	340	47	259	Small
715	22	340	47	259	Small
715	22	340	47	259	Largest
715	22	340	47	259	Medium
715	22	340	47	259	Largest
716	22	340	47	259	Smallest
717	22	341	47	259	Medium
717	22	341	47	259	Small
717	22	341	47	259	Medium
717	22	341	47	259	Medium
718	22	341	47	259	Small
719	22	341	47	259	Small
720	22	341	48	259	Smallest
721	22	341	48	259	Small
721	22	341	48	260	Small
721	22	341	48	260	Smallest
721	22	341	48	260	Smallest
721	22	341	48	260	Smallest
722	22	342	48	260	Smallest
723	22	342	48	260	Smallest
724	22	342	48	260	Smallest
725	22	342	48	260	Smallest
726	22	343	48	260	Smallest
727	22	343	48	260	Medium
\.


--
-- Data for Name: community_test; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.community_test (id, language, world_region, country, language_family, location, community_size) FROM stdin;
1	Abazza	Western Asia	Turkey,Russia	Abkhaz-Adyge	Wayne(NJ)	Smallest
2	Abruzzese	Southern Europe	Italy	Indo-European	Astoria	Small
3	Abruzzese	Southern Europe	Italy	Indo-European	Littly Italy	Small
4	Acehnese	Southeastern Asia	Indonesia	Austronesian	Astoria	Smallest
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.countries (id, country) FROM stdin;
1	Turkey,\nRussia
2	Italy
3	Indonesia
4	Ivory Coast
5	Nigeria
6	United States
7	South Africa,\nZimbabwe
8	Ghana
9	Philippines
10	Algeria,\nEgypt
11	France
12	China,\nIndia
13	Ethiopia
14	Mexico
15	Greece
16	Antigua and Barbuda
17	India
18	Ghana,\nIvory Coast
19	Argentina
20	Romania,\nGreece,\nAlbania
21	Iraq,\nSyria
22	Spain,\nPortugal
23	Australia
24	Austria
25	Russia,\nAzerbaijan
26	India,\nIran
27	Bolivia
28	Azerbaijan,\nRussia
29	Cameroon
30	Bahamas
31	Nepal
32	Senegal
33	North Macedonia,\nSerbia
34	Pakistan,\nIran
35	Pakistan,\nIndia
36	Mali,\nIvory Coast
37	Philippines,\nMalaysia
38	Indonesia,\nMalaysia
39	Nepal,\nIndia
40	Barbados
41	Tajikistan,\nAfghanistan
42	Spain,\nFrance
43	Liberia,\nSierra Leone
44	Austria,\nGermany
45	Belarus,\nPoland
46	Belize
47	Zambia,\nD.R. Congo
48	Bangladesh,\nIndia
49	India,\nNepal
50	Israel
51	India,\nBangladesh
52	Vanuatu,\nNew Caledonia
53	Mali,\nBurkina Faso
54	Bosnia and Herzegovina,\nSerbia
55	Brazil
56	Costa Rica
57	United Kingdom
58	Israel,\nUnited States,\nUzbekistan
59	Bulgaria,\nTurkey
60	Turkey,\nBulgaria
61	Bhutan
62	Myanmar
63	Pakistan
64	Russia
65	Canada
66	China,\nHong Kong
67	Cape Verde Islands
68	Suriname,\nTrinidad and Tobago,\nGuyana
69	Spain
70	Honduras,\nGuatemala,\nEl Salvador,\nNicaragua,\nCosta Rica
71	Chad
72	Bangladesh,\nMyanmar
73	China,\nMongolia
74	Iraq
75	China
76	Algeria,\nTunisia
77	Malawi,\nZambia
78	Uganda
79	Chile
80	Bangladesh
81	Guatemala
82	Micronesia
83	Egypt,\nYemen
84	Armenia
85	Colombia
86	Comoros
87	Egypt,\nSudan
88	Ukraine,\nTurkey,\nUzbekistan
89	Croatia,\nSlovenia
90	Cuba
91	Cyprus,\nGreece
92	Cyprus,\nTurkey
93	Czech Republic,\nSlovakia
94	Denmark,\nSweden
95	Hungary,\nRomania
96	Sudan
97	Afghanistan,\nPakistan
98	Maldives,\nIndia
99	Sudan,\nSouth Sudan
100	Dominica
101	Dominican Republic
102	Kyrgyzstan,\nKazakhstan
103	Netherlands,\nBelgium
104	Ivory Coast,\nBurkina Faso
105	Bhutan,\nIndia
106	Armenia,\nRussia
107	Vatican City
108	Ecuador
109	Egypt
110	Egypt,\nIsrael
111	Brazil,\nFrance
112	Estonia
113	Ghana,\nTogo
114	Myanmar,\nIndia
115	Equatorial Guinea,\nGabon
116	Fiji
117	Finland,\nSweden
118	Belgium
119	Benin,\nTogo
120	Ghana,\nBurkina Faso
121	Germany
122	France,\nSenegal
123	French Guiana
124	Netherlands
125	China,\nTaiwan
126	Guinea,\nSenegal
127	Sudan,\nChad
128	Honduras,\nBelize,\nGuatemala
129	Albania,\nKosovo,\nMontenegro,\nNorth Macedonia
130	Togo,\nBenin
131	Georgia,\nTurkey
132	Germany,\nAustria,\nSwitzerland
133	Ethiopia,\nEritrea
134	Kenya,\nTanzania
135	Kiribati
136	Ivory Coast,\nLiberia
137	Slovenia
138	Burkina Faso,\nTogo
139	Greece,\nCyprus
140	Grenada
141	Guadeloupe,\nFrance
142	Paraguay
143	Guinea-Bissau,\nSenegal
144	Kuwait,\nUnited Arab Emirates,\nSaudi Arabia
145	Benin,\nNigeria
146	India,\nPakistan
147	Guyana
148	Haiti,\nDominican Republic
149	Morocco,\nIsrael
150	China,\nSouth Korea,\nNorth Korea
151	United States,\nIsrael
152	Mauritania
153	Nigeria,\nNiger
154	Namibia,\nBotswana
155	Vietnam,\nChina
156	Iceland
157	Russia,\nKazakhstan
158	Canada,\nGreenland
159	Iraq,\nIsrael
160	Ireland,\nUnited Kingdom
161	Ireland,\nUnited States
162	Thailand
163	Afghanistan,\nTajikistan
164	Croatia,\nItaly
165	Croatia
166	Jamaica
167	Japan
168	Israel,\nUnited States
169	Iran,\nIsrael
170	Russia,\nUkraine
171	Senegal,\nGambia
172	South Sudan
173	Ukraine,\nRussia
174	Georgia,\nIsrael
175	Greece,\nIsrael
176	Turkey,\nIsrael
177	Azerbaijan,\nRussia,\nIsrael
178	Russia,\nTurkey
179	Afghanistan
180	Algeria
181	Myanmar,\nChina
182	Malaysia
183	Romania,\nUkraine
184	Russia,\nMongolia
185	Uzbekistan
186	Myanmar,\nThailand
187	Mali,\nSenegal
188	Kazakhstan,\nChina
189	Mongolia,\nRussia
190	Cambodia,\nVietnam
191	D.R. Congo,\nCongo (Brazzaville)
192	Angola
193	Rwanda,\nUganda
194	Burundi
195	Liberia
196	Congo (Brazzaville)
197	Guinea,\nLiberia
198	South Korea,\nNorth Korea
199	Uzbekistan,\nRussia
200	Gabon,\nCongo (Brazzaville)
201	Guinea
202	Liberia,\nIvory Coast
203	Mexico,\nUnited States
204	Panama,\nColombia
205	Sierra Leone,\nGuinea
206	Syria,\nTurkey
207	China,\nNepal
208	Kyrgyzstan,\nChina
209	India,\nChina
210	United States,\nCanada
211	Laos,\nCambodia
212	Latvia
213	Turkey,\nGeorgia
214	Ukraine,\nPoland
215	Canada,\nUnited States
216	Libya,\nEgypt
217	Libya,\nIsrael
218	Italy,\nMonaco
219	Sierra Leone
220	Nepal,\nChina
221	Lithuania,\nPoland
222	Italy,\nSwitzerland
223	Romania
224	D.R. Congo
225	Cuba,\nDominican Republic
226	Iran
227	Luxembourg,\nFrance
228	North Macedonia,\nAlbania
229	Serbia
230	Madagascar
231	Malaysia,\nBrunei,\nSingapore
232	Malta
233	Guatemala,\nMexico
234	Guinea,\nIvory Coast
235	Liberia,\nGuinea
236	Chile,\nArgentina
237	Burkina Faso,\nMali
238	Marshall Islands
239	Martinique,\nFrance
240	Mauritius
241	Sierra Leone,\nLiberia
242	China,\nVietnam
243	Georgia
244	Moldova,\nRomania
245	Montenegro,\nSerbia
246	Montserrat
247	Morocco
248	Papua New Guinea
249	Gabon
250	New Zealand
251	Panama,\nCosta Rica
252	Nauru
253	Zimbabwe,\nBotswana
254	Iran,\nIraq
255	Syria,\nLebanon
256	Lesotho,\nSouth Africa
257	Thailand,\nLaos
258	Norway
259	South Sudan,\nEthiopia
260	Italy,\nFrance
261	Ethiopia,\nKenya
262	Angola,\nNamibia
263	Russia,\nSyria
264	Germany,\nFrance
265	Palau
266	Sri Lanka,\nThailand
267	Panama
268	Curaçao,\nAruba
269	Pakistan,\nAfghanistan
270	Peru
271	Italy,\nArgentina
272	Solomon Islands
273	Poland
274	Greece,\nTurkey
275	Portugal,\nBrazil
276	Guatemala,\nBelize
277	Myanmar,\nBangladesh
278	Nepal,\nIndia,\nChina
279	Hungary,\nRomania,\nUkraine
280	Romania,\nMoldova
281	Switzerland
282	Ukraine,\nSlovakia
283	Norway,\nSweden
284	Samoa,\nUnited States
285	Central African Republic
286	Suriname
287	Ivory Coast,\nMali
288	Serbia,\nBosnia and Herzegovina
289	Seychelles
290	Turkey
291	Zimbabwe,\nZambia
292	Poland,\nCzech Republic
293	Singapore
294	Sri Lanka
295	Slovakia,\nCzech Republic
296	Somalia,\nEthiopia
297	Mali,\nNiger
298	Mali,\nSenegal,\nGambia
299	South Africa
300	Israel,\nJordan
301	Saint Kitts and Nevis
302	Saint Lucia
303	Guinea,\nSierra Leone
304	Georgia,\nRussia
305	Tanzania,\nKenya
306	Eswatini,\nSouth Africa
307	Sweden,\nFinland
308	Switzerland,\nFrance
309	United States,\nIsrael,\nSyria
310	Tajikistan,\nUzbekistan
311	Morocco,\nAlgeria
312	United States,\nDominican Republic
313	Togo,\nGhana
314	China,\nThailand
315	Timor-Leste,\nIndonesia
316	Thailand,\nCambodia
317	Eritrea,\nSudan
318	Trinidad and Tobago
319	Tonga
320	Albania
321	Botswana,\nSouth Africa
322	Tunisia
323	Tunisia,\nIsrael
324	Turkmenistan,\nAfghanistan
325	Turkey,\nSweden
326	Ukraine
327	United Kingdom,\nIreland
328	Uruguay
329	China,\nKazakhstan
330	Uzbekistan,\nTajikistan
331	Venezuela
332	Vietnam,\nCambodia
333	Saint Vincent and the Grenadines
334	Pakistan,\nTajikistan
335	Vanuatu
336	Armenia,\nTurkey,\nLebanon
337	Senegal,\nMauritania
338	South Africa,\nLesotho
339	Yemen
340	Yemen,\nIsrael
341	Nigeria,\nBenin
342	Niger,\nNigeria
343	Libya
\.


--
-- Data for Name: language_families; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.language_families (id, language_family) FROM stdin;
1	Abkhaz-Adyge
2	Indo-European
3	Austronesian
4	Atlantic-Congo
5	Afro-Asiatic
6	Sino-Tibetan
7	
8	Otomanguean
9	Nakh-Daghestanian
10	Aymaran
11	Turkic
12	Mande
13	Basque
14	Quechuan
15	Chibchan
16	Burushaski
17	Mongolic
18	Iroquoian
19	Athabaskan-Eyak-Tlingit
20	Mayan
21	Nilotic
22	Uralic
23	Furan
24	Arawakan
25	Kartvelian
26	Tupian
27	Koreanic
28	Hmong-Mien
29	Uto-Aztecan
30	Eskimo-Aleut
31	Tai-Kadai
32	Dravidian
33	Japonic
34	Ijoid
35	Austroasiatic
36	Yuman
37	Siouan
38	Algic
39	Salish
40	Araucanian
41	Maban
42	Cochimi-Yuman
43	Nubian
44	Tarascan
45	Totonacan
46	Chicham
47	Songhay
48	Saharan
\.


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.languages (id, language) FROM stdin;
1	Abaza
2	Abruzzese
3	Acehnese
4	Adjoukrou
5	Adyghe
6	Afenmai
7	African-American English
8	Afrikaans
9	Akan
10	Aklanon
11	Algerian Arabic
12	Alsatian
13	Amdo Tibetan
14	American Sign Language
15	Amharic
16	Amuzgo
17	Anaang
18	Ancient Greek
19	Antigua and Barbuda Creole
20	Ao
21	Appolo
22	Apulo-Lucano
23	Arbëresh
24	Argentine Spanish
25	Aromanian
26	Ashanti
27	Assamese
28	Assyrian Neo-Aramaic
29	Asturian
30	Australian English
31	Austrian German
32	Avar
33	Avestan
34	Aymara
35	Azeri
36	Bafut
37	Bahamian Creole
38	Bahing
39	Balanta-Ganja
40	Balinese
41	Balkan Romani
42	Balochi
43	Balti
44	Bambara
45	Banguingui
46	Banjarese
47	Bantawa
48	Baoulé
49	Baragaun
50	Barbadian Creole
51	Bartangi
52	Basaa
53	Basque
54	Bassa
55	Batak
56	Batak (Karo)
57	Batak (Toba)
58	Bavarian
59	Baïnounk
60	Belarusian
61	Belizean Creole
62	Bemba
63	Beneventano
64	Bengali
65	Betawi Malay
66	Bhojpuri
67	Biblical Hebrew
68	Bicolano
69	Bishnupriya Manipuri
70	Bislama
71	Bolivian Quechua
72	Bolivian Spanish
73	Bomu
74	Bontoc
75	Bosnian
76	Brazilian Portuguese
77	Breton
78	Bribri
79	British English
80	Buginese
81	Bukhori
82	Bulgarian
83	Bulgarian Turkish
84	Buli
85	Bumthang
86	Burmese
87	Burushaski
88	Buryat
89	Bzedukh
90	Bété
91	Calabrese
92	Calabrese (Gioiosano)
93	Calabrese (Sanfilese)
94	Cameroonian Pidgin English
95	Camfranglais
96	Canadian English
97	Cantonese
98	Cape Verdean Creole
99	Caribbean Hindustani
100	Castilian Spanish
101	Catalan
102	Cebuano
103	Central American Spanish
104	Central Malay
105	Chadian Arabic
106	Chak
107	Chakhar Mongolian
108	Chakma
109	Chaldean Neo-Aramaic
110	Chamling
111	Chamorro
112	Changki
113	Changzhounese
114	Chantyal
115	Chaouia
116	Chavacano
117	Chechen
118	Cherepon
119	Cherokee
120	Chewa
121	Chiga
122	Chilean Spanish
123	Chinantec
124	Chiricahua Apache
125	Chittagonian
126	Chocha-ngacha
127	Chuj
128	Church Slavonic
129	Chuukese
130	Chuvash
131	Cilentano
132	Classical Arabic
133	Classical Armenian
134	Classical Latin
135	Classical Tibetan
136	Colombian Spanish
137	Comorian
138	Coptic
139	Cretan Greek
140	Crimean Tatar
141	Croatian
142	Cuban Spanish
143	Cuicatec
144	Cypriot Greek
145	Cypriot Turkish
146	Czech
147	Dagaare
148	Dagbani
149	Dangme
150	Danish
151	Danube Swabian
152	Darfurian Arabic
153	Dari
154	Dawei Burmese
155	Dhivehi
156	Dinka
157	Dolpo
158	Dominican Creole (English)
159	Dominican Creole (French)
160	Dominican Spanish
161	Duala
162	Dungan
163	Dutch
164	Dyula
165	Dzongkha
166	Eastern Armenian
167	Ebrié
168	Ecclesiastical Latin
169	Ecuadorian Kichwa
170	Ecuadorian Spanish
171	Edo
172	Efik
173	Egyptian Arabic
174	Egyptian Judeo-Arabic
175	Emiliano
176	Esan
177	Esperanto
178	Estonian
179	Ewe
180	Ewondo
181	Falam Chin
182	Fang
183	Fante
184	Fe'fe'
185	Fijian
186	Finnish
187	Flemish
188	Fon
189	Frafra
190	Franconian
191	French
192	French Guianese Creole
193	Frisian
194	Friulian
195	Fujianese
196	Fulani
197	Fur
198	Ga
199	Gagnoa Bété
200	Galician
201	Gallo-Italic
202	Gan
203	Garifuna
204	Garo
205	Geg Albanian
206	Gen-Gbe
207	Georgian
208	German
209	Geʽez
210	Ghale
211	Ghanaian English
212	Ghomala
213	Gikuyu
214	Gilbertese
215	Gio
216	Gola
217	Gottscheerisch
218	Gourmanché
219	Greek
220	Grenadian Creole
221	Guadeloupean Creole
222	Guarani
223	Guiberoua Bété
224	Guinea-Bissau Creole
225	Gujarati
226	Gulf Arabic
227	Gullah
228	Gun-Gbe
229	Gurage
230	Gurjar
231	Guro
232	Gurung
233	Guyanese Creole
234	Gyalsumdo
235	Hainanese (Southern Min)
236	Haitian Creole
237	Haketia
238	Hakha Chin
239	Hakka
240	Hamgyŏng Korean (Joseonjok)
241	Hasidic Yiddish
242	Hassaniya Arabic
243	Hausa
244	Hawaiian
245	Hawaiian English
246	Hazara
247	Hebrew
248	Herero
249	Hindi
250	Hmong
251	Hokkien
252	Hopi
253	Hunanese
254	Hungarian
255	Ibaloy
256	Ibanag
257	Ibibio
258	Icelandic
259	Igbo
260	Ilocano
261	Ilonggo
262	Indian English
263	Indonesian
264	Ingush
265	Intha Burmese
266	Inuktun
267	Iranun
268	Iraqi Arabic
269	Iraqi Judeo-Arabic
270	Irish
271	Irish English
272	Irpino
273	Isan
274	Ishkashimi
275	Istrioto
276	Istro-Romanian
277	Istro-Veneto
278	Italian
279	Italian English
280	Ixil
281	Iyengar Tamil
282	Jamaican Patois
283	Japanese
284	Javanese
285	Jersey Dutch
286	Jewish Babylonian Aramaic
287	Jewish English
288	Jewish Neo-Aramaic (Bijar)
289	Jewish Neo-Aramaic (Urmia)
290	Jewish Russian
291	Jola
292	Juba Arabic
293	Judeo-Crimean Tatar
294	Judeo-Georgian
295	Judeo-Greek
296	Judeo-Hamadani
297	Judeo-Isfahani
298	Judeo-Kashani
299	Judeo-Shirazi
300	Judeo-Spanish
301	Juhuri
302	K'iche'
303	Kabardian
304	Kabiye
305	Kabli
306	Kabyle
307	Kachin
308	Kadazan Dusun
309	Kaike
310	Kalabari
311	Kalasha
312	Kalderash Romani
313	Kalmyk
314	Kandhari
315	Kannada
316	Kaqchikel
317	Karachay-Balkar
318	Karakalpak
319	Karen
320	Kariu
321	Kashmiri
322	Kassonke
323	Kazakh
324	Khaling
325	Khalkha Mongolian
326	Kham Magar
327	Kham Tibetan
328	Khmer
329	Khowar
330	Kikongo
331	Kimbundu
332	Kinaray-a
333	Kinyarwanda
334	Kirundi
335	Kissi
336	Kituba
337	Kodava
338	Koine Greek
339	Konkani
340	Konyak
341	Konyanka
342	Korean
343	Koryo-Mar
344	Kota
345	Koulounkalan
346	Kpelle
347	Krahn
348	Kru
349	Kulung
350	Kumeyaay
351	Kuna
352	Kuranko
353	Kurdish
354	Kurtöp
355	Kyirong
356	Kyrgyz
357	Ladakhi
358	Lahu
359	Lakota
360	Lamnso
361	Lao
362	Larteh
363	Latvian
364	Lazuri
365	Lemko
366	Lenape (Munsee)
367	Lenape (Unami)
368	Lezgi
369	Liberian English
370	Libyan Arabic
371	Libyan Judeo-Arabic
372	Ligurian
373	Limba
374	Limbu
375	Limi
376	Lingala
377	Lithuanian
378	Litvish Yiddish
379	Loke
380	Loma
381	Lombard
382	Lotha
383	Lovari Romani
384	Low German
385	Luba-Kasai
386	Luba-Katanga
387	Lucano
388	Luganda
389	Lukumí
390	Lummi
391	Luo
392	Luri
393	Luxembourgish
394	Macedonian
395	Machvaya Romani
396	Madurese
397	Magar
398	Maguindanao
399	Mahouka
400	Maithili
401	Makassarese
402	Malagasy
403	Malay
404	Malayalam
405	Maltese
406	Mam
407	Mamuju
408	Manado Malay
409	Manang
410	Mandarin Chinese
411	Mandingo
412	Mandinka
413	Mandjak
414	Manggarai
415	Maninka
416	Mano
417	Mapuche
418	Maranao
419	Marathi
420	Marchigiano
421	Marka
422	Marma
423	Marshallese
424	Martinican Creole
425	Marwari
426	Masalit
427	Matinecock
428	Mauritian Creole
429	Mazahua
430	Mazanderani
431	Mazatec
432	Medumba
433	Meitei
434	Memoni
435	Mende
436	Mexican Spanish
437	Mien
438	Minangkabau
439	Mingrelian
440	Mixe
441	Mixtec
442	Mohawk
443	Mohican
444	Mojave
445	Moldovan
446	Molisan
447	Mon
448	Mongo
449	Monguor
450	Montaukett
451	Montenegrin
452	Montserrat Creole
453	Moroccan Arabic
454	Moroccan Judeo-Arabic
455	Mossi
456	Motu
457	Mugu
458	Munda
459	Myene
460	Māori
461	Nachhiring
462	Nagamese
463	Nahuatl
464	Nar-Phu
465	Naso
466	Native American English
467	Nauruan
468	Navajo
469	Ndebele
470	Neapolitan
471	Neo-Mandaic
472	Nepali
473	New Zealand English
474	Newari
475	Newfoundland English
476	Nigerian English
477	Ningbo
478	Noakhailla
479	Nones
480	North Frisian
481	North Levantine Arabic
482	Northeastern Mandarin Chinese
483	Northern Fujianese
484	Northern Sotho
485	Northern Thai
486	Norwegian
487	Nubian
488	Nubri
489	Nuer
490	Occitan
491	Odia
492	Ojibwe
493	Okinawan
494	Oromo
495	Oshiwambo
496	Ossetian
497	Otomi
498	P'urhépecha
499	Pa'O
500	Pakistani English
501	Palatine German
502	Palauan
503	Palembang
504	Pali
505	Pampangan
506	Pana
507	Panamanian English
508	Panamanian Spanish
509	Pangasinan
510	Papantla Totonac
511	Papiamento
512	Paraguayan Spanish
513	Pashto
514	Persian
515	Peruvian Quechua
516	Peruvian Spanish
517	Philippine English
518	Piedmontese
519	Pijin
520	Pochury
521	Polish
522	Pontic Greek
523	Poqomchi'
524	Portuguese
525	Pothwari
526	Puerto Rican Sign Language
527	Puerto Rican Spanish
528	Pugliese (Barese)
529	Pugliese (Bitettese)
530	Pugliese (Casamassimese)
531	Pugliese (Conversanese)
532	Pugliese (Garganico)
533	Pugliese (Grumese)
534	Pugliese (Molese)
535	Pugliese (Molfettese)
536	Pugliese (Palese)
537	Punjabi
538	Purgi
539	Q'anjob'al
540	Q'eqchi'
541	Quebec French
542	Quiripi
543	Rakhine
544	Ramaluk
545	Rangpuri
546	Rashti
547	Romani
548	Romanian
549	Romansh
550	Rushani
551	Russian
552	Rusyn
553	Sami
554	Samoan
555	Sampang
556	Sandwippa
557	Sango
558	Sangsari
559	Sangtam
560	Sanskrit
561	Santali
562	Saraiki
563	Saramaccan Creole
564	Sasak
565	Scots
566	Scottish Gaelic
567	Seke
568	Sema
569	Senoufo
570	Serbian
571	Serer
572	Seychellois Creole
573	Shan
574	Shanghainese
575	Shapsug
576	Sharchop
577	Sherpa
578	Shina
579	Shinnecock
580	Shona
581	Shuar
582	Shughni
583	Shupamem
584	Sichuanese
585	Sicilian
586	Sierra Leone Creole
587	Sierra Totonac
588	Sikkimese
589	Silesian
590	Sindhi
591	Singlish
592	Sinhalese
593	Siwi
594	Slovak
595	Slovenian
596	Somali
597	Songhay
598	Soninke
599	Sorani Kurdish
600	South African English
601	South Levantine Arabic
602	Southern Lazio
603	Spanglish
604	Sranan Tongo
605	Sri Lankan English
606	Sri Lankan Malay
607	Sri Lankan Tamil
608	St. Kitts Creole
609	St. Lucian Creole (English)
610	St. Lucian Creole (French)
611	Sudanese Arabic
612	Sundanese
613	Sunwar
614	Susu
615	Svan
616	Swabian
617	Swahili
618	Swati
619	Swedish
620	Swiss German
621	Sylheti
622	Syriac
623	Syrian Judeo-Arabic
624	Syro-Malankara Syriac
625	Tagalog
626	Taishanese
627	Taiwanese
628	Tajik
629	Tamang
630	Tamil
631	Tanchangya
632	Tangkhul
633	Tarifit
634	Tashelhyt
635	Tatar
636	Tausug
637	Tawala
638	Taíno
639	Tedim Chin
640	Telugu
641	Tem
642	Temne
643	Teochew
644	Tepehua
645	Tetum
646	Thai
647	Thakali
648	Tharu
649	Tibetan
650	Tigre
651	Tigrinya
652	Tiv
653	Tlapanec
654	Tobagonian Creole
655	Tok Pisin
656	Tokpe Gola
657	Tonga
658	Tongan
659	Tontemboan
660	Tosk Albanian
661	Trinidadian Creole
662	Tripuri
663	Triqui
664	Tsum
665	Tswana
666	Tuareg
667	Tulu
668	Tumbuka
669	Tunisian Arabic
670	Tunisian Judeo-Arabic
671	Turkish
672	Turkmen
673	Turoyo Neo-Aramaic
674	Tuscan
675	Tuvan
676	Twi
677	Tz'utujil
678	Tzotzil
679	Tö Tibetan
680	Ukrainian
681	Ulster Scots
682	Umbundu
683	Unkechaug
684	Urdu
685	Urhobo
686	Uruguayan Spanish
687	Uyghur
688	Uzbek
689	Vai
690	Venetian
691	Venezuelan Spanish
692	Vietnamese
693	Vincentian Creole
694	Virgin Islands Creole
695	Volga Tatar
696	Wa
697	Wakhi
698	Wali
699	Walloon
700	Walung
701	Waray-Waray
702	Welsh
703	Wenzhounese
704	West Ambae
705	Western Armenian
706	Western Yiddish
707	Winnebago
708	Wolof
709	Xhosa
710	Yakan
711	Yakut
712	Yemba
713	Yemeni Arabic
714	Yemenite Judeo-Arabic
715	Yiddish
716	Yolmo
717	Yoruba
718	Yunnanese
719	Zacaptec Mixtec
720	Zaghawa
721	Zapotec
722	Zarma
723	Zaza
724	Zoroastrian Dari
725	Zulu
726	Zuwara
727	Ü-Tsang Tibetan
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.locations (id, location) FROM stdin;
1	Wayne (NJ)
2	Astoria
3	Little Italy
4	Elmhurst
5	Concourse
6	Castle Hill
7	Bedford-Stuyvesant
8	Newark (NJ)
9	Clifton
10	Hollis
11	Edenwald
12	Central Harlem
13	Hempstead (NY)
14	Murray Hill
15	Flatbush
16	Shore Acres
17	University Heights
18	TriBeCa
19	Woodside
20	Bath Beach
21	Roosevelt Island
22	Jackson Heights
23	DUMBO
24	Tompkinsville
25	Midwood
26	Upper East Side
27	Pelham Bay
28	East Orange (NJ)
29	Norwood
30	Hamilton Heights
31	Corona
32	SoHo
33	Edison (NJ)
34	Chinatown
35	Great Kills
36	Lower East Side
37	Mott Haven
38	Ridgewood
39	Trumbull (CT)
40	Plainsboro (NJ)
41	Yonkers (NY)
42	Midtown
43	College Point
44	Brighton Beach
45	Pomona (NY)
46	Kensington
47	Homecrest
48	Tremont
49	Belmont
50	Yorkville
51	South Jamaica
52	St. Albans
53	Kingsbridge
54	East New York
55	Jamaica
56	Richmond Hill
57	Jersey City (NJ)
58	East Flatbush
59	Cambria Heights
60	Greenpoint
61	Park Hill
62	Gramercy
63	Glendale
64	Boerum Hill
65	Sheepshead Bay
66	Jamaica Hills
67	South River (NJ)
68	Crown Heights
69	East Midtown
70	Waterbury (CT)
71	East Village
72	Parkchester
73	East Harlem
74	Paterson (NJ)
75	Toms River (NJ)
76	Washington Heights
77	Lakewood (NJ)
78	Governors Island
79	Port Chester (NY)
80	Hackettstown (NJ)
81	Mt. Vernon (NY)
82	Hell's Kitchen
83	Milltown (NJ)
84	Forest Hills
85	Bensonhurst
86	Sunnyside
87	Manalapan Township (NJ)
88	Prospect Heights
89	Floral Park (NY)
90	Flushing
91	New Springville
92	Glen Rock (NJ)
93	Sunset Park
94	Bridgeport (CT)
95	South Ozone Park
96	Brooklyn Heights
97	West Village
98	Brentwood (NY)
99	Bushwick
100	Hunts Point
101	Brewster (NY)
102	Far Rockaway
103	Bay Ridge
104	Mount Hope
105	East Elmhurst
106	Elm Park
107	Borough Park
108	Whitestone
109	Williamsburg
110	Gravesend
111	Douglaston-Little Neck
112	Elizabeth (NJ)
113	Dyker Heights
114	Boonton (NJ)
115	Union City (NJ)
116	Financial District
117	Clifton (NJ)
118	Van Nest
119	Lenox Hill
120	Claremont
121	Morris Heights
122	Morrisania
123	Prospect Lefferts Gardens
124	Kew Gardens Hills
125	Hicksville (NY)
126	Perth Amboy (NJ)
127	Cypress Hills
128	Kingston (NY)
129	Park Slope
130	Fordham
131	Gowanus
132	Spring Valley (NY)
133	Ossining (NY)
134	Soundview
135	Cobble Hill
136	Larchmont (NY)
137	Chelsea
138	Queens Village
139	Kips Bay
140	Ocean Hill-Brownsville
141	Charlotte Gardens
142	Ozone Park
143	Pelham Parkway
144	Manville (NJ)
145	Hoboken (NJ)
146	Auburndale
147	Canarsie
148	White Plains (NY)
149	Upper West Side
150	Kiryas Joel (NY)
151	Fort Greene
152	Pomonok
153	Fair Lawn (NJ)
154	Utopia
155	Lincoln Square
156	Passaic (NJ)
157	New Brunswick (NJ)
158	Bellerose
159	Great Neck (NY)
160	Jamaica Estates
161	Long Island City
162	Woodlawn
163	Red Hook
164	Pearl River (NY)
165	Breezy Point
166	Middle Village
167	Gerritsen Beach
168	Silver Lake
169	Morris Park
170	Tuckahoe (NY)
171	Wakefield
172	New Rochelle (NY)
173	East Williamsburg
174	Fort Lee (NJ)
175	Suffern (NY)
176	Monticello (NY)
177	Riverdale
178	Hewlett (NY)
179	Roslyn (NY)
180	Fairview (NJ)
181	Morningside Heights
182	Howell (NJ)
183	Plainview (NY)
184	Riverhead (NY)
185	Rego Park
186	Carroll Gardens
187	NoMad
188	Palisades Park (NJ)
189	New Milford (NJ)
190	Greenwich Village
191	Highbridge
192	Terryville (CT)
193	Maspeth
194	Walpack (NJ)
195	Mahwah (NJ)
196	Flemington (NJ)
197	City Island
198	Trenton (NJ)
199	Allerton
200	Franklin Square (NY)
201	Plainfield (NJ)
202	St. George
203	Briarwood
204	Garfield (NJ)
205	Battery Park City
206	Hillsborough (NJ)
207	Williamsbridge
208	Manor Heights
209	Morristown (NJ)
210	Port Richmond
211	Jericho (NY)
212	Princeton (NJ)
213	Laurence Harbor (NJ)
214	New Haven (CT)
215	Highland Park (NJ)
216	North New Hyde Park (NY)
217	Kent (CT)
218	Red Hook (NY)
219	Westerleigh
220	Montauk (NY)
221	Melrose
222	Valley Stream (NY)
223	Flatlands
224	Eltingville
225	Murray Hill-QNS
226	Hillcrest
227	Bridgewater (NJ)
228	Linden (NJ)
229	Norwalk (CT)
230	Throgs Neck
231	Oakwood
232	Howard Beach
233	Mapleton
234	Midland Beach
235	Sea Cliff (NY)
236	North Riverdale
237	Woodland Park (NJ)
238	Kew Gardens
239	Kearny (NJ)
240	Flatiron
241	Walkill (NY)
242	Shinnecock Reservation - Southampton (NY)
243	Bayonne (NJ)
244	Fairfield (CT)
245	Stapleton
246	Grymes Hill
247	Co-op City
248	Paramus (NJ)
249	Deal (NJ)
250	Inwood
251	Bayside
252	Centereach (NY)
253	Walden (NY)
254	Haworth (NJ)
255	South Bound Brook (NJ)
256	Kerhonkson (NY)
257	Poospatuck Reservation - Mastic (NY)
258	Dover (NJ)
259	Manhattan Beach
260	Poughkeepsie (NY)
\.


--
-- Data for Name: world_regions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.world_regions (id, world_region) FROM stdin;
1	Western Asia
2	Southern Europe
3	Southeastern Asia
4	Western Africa
5	Northern America
6	Southern Africa
7	Northern Africa
8	Western Europe
9	Eastern Asia
10	Eastern Africa
11	Central America
12	Caribbean
13	Southern Asia
14	South America
15	Australia and New Zealand
16	Middle Africa
17	Central Asia
18	Eastern Europe
19	Melanesia
20	Northern Europe
21	Micronesia
22	Polynesia
\.


--
-- Name: community_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.community_test_id_seq', 4, true);


--
-- PostgreSQL database dump complete
--

