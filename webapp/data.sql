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
\.


--
-- Data for Name: language_families; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.language_families (id, language_family) FROM stdin;
\.


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.languages (id, language) FROM stdin;
\.


--
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.locations (id, location) FROM stdin;
\.


--
-- Data for Name: world_regions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.world_regions (id, world_region) FROM stdin;
\.


--
-- Name: community_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.community_test_id_seq', 4, true);


--
-- PostgreSQL database dump complete
--

