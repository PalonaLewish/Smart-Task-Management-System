--
-- PostgreSQL database dump
--

\restrict b7fZGWD5A7OEjrHELbRea81LN77afaSwocqyGRbJMWpDAPNU2cAWPfUckvTEDnb

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-05-12 21:34:45

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 222 (class 1259 OID 16402)
-- Name: task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.task (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    description text,
    priority character varying(20),
    status character varying(20),
    created_date timestamp without time zone
);


ALTER TABLE public.task OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16401)
-- Name: task_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.task_id_seq OWNER TO postgres;

--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 221
-- Name: task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.task_id_seq OWNED BY public.task.id;


--
-- TOC entry 220 (class 1259 OID 16390)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    username character varying(100) NOT NULL,
    password character varying(200) NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16389)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_id_seq OWNER TO postgres;

--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 219
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- TOC entry 4862 (class 2604 OID 16405)
-- Name: task id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task ALTER COLUMN id SET DEFAULT nextval('public.task_id_seq'::regclass);


--
-- TOC entry 4861 (class 2604 OID 16393)
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- TOC entry 5019 (class 0 OID 16402)
-- Dependencies: 222
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.task (id, title, description, priority, status, created_date) FROM stdin;
5	Books	Reading chapter 14	Highest	To Do	2026-05-12 15:33:52.13893
6	Study	complete unit 1	Highest	In Progress	2026-05-12 15:34:18.79712
\.


--
-- TOC entry 5017 (class 0 OID 16390)
-- Dependencies: 220
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, username, password) FROM stdin;
1	24BCF10058	scrypt:32768:8:1$jHrsVzGDkUy7y0hK$fafdee5f7dcfa091db5409bc42bc34d54bea70f474b115834c4ce58eb5545c73ec0e6c78b84259422e20d0b3a6cc5ce893fe8a65f6a0870ebb5f34cf614c1ab0
4	24BCF10057	scrypt:32768:8:1$Us79PiyGOjdWY67M$a8a449ff1542fde42a0f25b89bc6e237efe782753d041f88c4b69492c0bab7533b024f6d045ec9a9ad1caea2d32fd95d930bf486f2adc438a48d4b6a7227f4df
5	24BCF10061	scrypt:32768:8:1$ZiwKl7IUzuaGNK4L$304e97bb24011d933d9ed1a21cf2280e36a1c82723e6eb2163f2f5d0f1a0620596e2bf37ee8063366e8e388409f7b66f8aa22b07d83e9d03a3abf5bff5665039
6	hell	scrypt:32768:8:1$WquoNULpgQi0uIDc$0651c730b6e96debe7575a127fa0fb95d5dab1330e61dca76c2d757b7e0aadeb93d381bd548ad20421f7f1c6f83c3fe64ed3fa850ee0d3f4d60f869aad357c81
7	hello	scrypt:32768:8:1$9ZFtYcyCVvGxem43$1d6a486272c74fd13166d59bdc0bfa5eef9ed6176ce058c706a4fe52d768b1e688acd7e304086cbb5090c783e4ad283710aab883c3e9f24489a8b1c8a2e0a064
\.


--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 221
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.task_id_seq', 6, true);


--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 219
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 7, true);


--
-- TOC entry 4868 (class 2606 OID 16411)
-- Name: task task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- TOC entry 4864 (class 2606 OID 16398)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 4866 (class 2606 OID 16400)
-- Name: user user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_username_key UNIQUE (username);


-- Completed on 2026-05-12 21:34:45

--
-- PostgreSQL database dump complete
--

\unrestrict b7fZGWD5A7OEjrHELbRea81LN77afaSwocqyGRbJMWpDAPNU2cAWPfUckvTEDnb

