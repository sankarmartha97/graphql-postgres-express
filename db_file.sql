--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: emails; Type: TABLE; Schema: public; Owner: sankar
--

CREATE TABLE public.emails (
    id integer NOT NULL,
    email character varying(256) NOT NULL,
    person integer,
    "primary" boolean DEFAULT false
);


ALTER TABLE public.emails OWNER TO sankar;

--
-- Name: emails_id_seq; Type: SEQUENCE; Schema: public; Owner: sankar
--

CREATE SEQUENCE public.emails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.emails_id_seq OWNER TO sankar;

--
-- Name: emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sankar
--

ALTER SEQUENCE public.emails_id_seq OWNED BY public.emails.id;


--
-- Name: people; Type: TABLE; Schema: public; Owner: sankar
--

CREATE TABLE public.people (
    id integer NOT NULL,
    firstname character varying(40) NOT NULL,
    lastname character varying(40) NOT NULL
);


ALTER TABLE public.people OWNER TO sankar;

--
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: sankar
--

CREATE SEQUENCE public.people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_id_seq OWNER TO sankar;

--
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sankar
--

ALTER SEQUENCE public.people_id_seq OWNED BY public.people.id;


--
-- Name: emails id; Type: DEFAULT; Schema: public; Owner: sankar
--

ALTER TABLE ONLY public.emails ALTER COLUMN id SET DEFAULT nextval('public.emails_id_seq'::regclass);


--
-- Name: people id; Type: DEFAULT; Schema: public; Owner: sankar
--

ALTER TABLE ONLY public.people ALTER COLUMN id SET DEFAULT nextval('public.people_id_seq'::regclass);


--
-- Data for Name: emails; Type: TABLE DATA; Schema: public; Owner: sankar
--

COPY public.emails (id, email, person, "primary") FROM stdin;
1	sank*******@gmail.com	1	f
2	sank***********1@gmail.com	1	f
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: sankar
--

COPY public.people (id, firstname, lastname) FROM stdin;
1	sankar	martha
2	mona	martha
\.


--
-- Name: emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sankar
--

SELECT pg_catalog.setval('public.emails_id_seq', 2, true);


--
-- Name: people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sankar
--

SELECT pg_catalog.setval('public.people_id_seq', 2, true);


--
-- Name: emails emails_pkey; Type: CONSTRAINT; Schema: public; Owner: sankar
--

ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_pkey PRIMARY KEY (id);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: sankar
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- Name: emails emails_person_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sankar
--

ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_person_fkey FOREIGN KEY (person) REFERENCES public.people(id);


--
-- PostgreSQL database dump complete
--

