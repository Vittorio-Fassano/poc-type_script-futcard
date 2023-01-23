--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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

--
-- Name: result_types; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.result_types AS ENUM (
    'vitória',
    'empate',
    'derrota'
);


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.games (
    id integer NOT NULL,
    teams text NOT NULL,
    result public.result_types NOT NULL,
    stadium text NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.games VALUES (1, 'fluminense X nova iguaçu', 'vitória', 'maracanã', '2023-01-23 12:44:27.407247-03');
INSERT INTO public.games VALUES (2, 'fluminense X goiás', 'vitória', 'maracanã', '2023-01-23 13:11:21.254676-03');
INSERT INTO public.games VALUES (3, 'fluminense X bragantino', 'vitória', 'raulino de oliveira', '2023-01-23 13:11:40.5766-03');
INSERT INTO public.games VALUES (6, 'fluminense X botafogo', 'empate', 'maracanã', '2023-01-23 14:43:22.702822-03');
INSERT INTO public.games VALUES (7, 'fluminense X são paulo', 'vitória', 'maracanã', '2023-01-23 14:45:18.956423-03');
INSERT INTO public.games VALUES (8, 'fluminense X américa mineiro', 'derrota', 'maracanã', '2023-01-23 14:45:38.086344-03');
INSERT INTO public.games VALUES (10, 'fluminense X guarani', 'vitória', 'engenhão', '2023-01-23 15:31:01.071363-03');
INSERT INTO public.games VALUES (11, 'fluminense X corinthians', 'vitória', 'maracanã', '2023-01-23 15:32:03.555035-03');
INSERT INTO public.games VALUES (12, 'fluminense X atético paranaense', 'vitória', 'juiz de fora', '2023-01-23 15:33:09.830227-03');
INSERT INTO public.games VALUES (14, 'fluminense X corinthians', 'empate', 'itaquera', '2023-01-23 15:36:26.582146-03');
INSERT INTO public.games VALUES (15, 'fluminense X corinthians', 'empate', 'maracanã', '2023-01-23 15:36:48.623297-03');
INSERT INTO public.games VALUES (16, 'fluminense X américa mineiro', 'empate', 'engenhão', '2023-01-23 15:37:46.04523-03');
INSERT INTO public.games VALUES (17, 'fluminense X boca juniors', 'empate', 'engenhão', '2023-01-23 15:38:11.097205-03');
INSERT INTO public.games VALUES (18, 'tupi X tombense ', 'empate', 'juiz de fora', '2023-01-23 15:39:18.137571-03');


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.games_id_seq', 18, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

