--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL,
    round character varying NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (104, 2018, 168, 167, 'Final', 4, 2);
INSERT INTO public.games VALUES (105, 2018, 170, 169, 'Third Place', 2, 0);
INSERT INTO public.games VALUES (106, 2018, 170, 168, 'Semi-Final', 2, 1);
INSERT INTO public.games VALUES (107, 2018, 169, 167, 'Semi-Final', 1, 0);
INSERT INTO public.games VALUES (108, 2018, 171, 168, 'Quarter-Final', 3, 2);
INSERT INTO public.games VALUES (109, 2018, 172, 170, 'Quarter-Final', 2, 0);
INSERT INTO public.games VALUES (110, 2018, 173, 169, 'Quarter-Final', 2, 1);
INSERT INTO public.games VALUES (111, 2018, 174, 167, 'Quarter-Final', 2, 0);
INSERT INTO public.games VALUES (112, 2018, 175, 170, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (113, 2018, 176, 172, 'Eighth-Final', 1, 0);
INSERT INTO public.games VALUES (114, 2018, 177, 169, 'Eighth-Final', 3, 2);
INSERT INTO public.games VALUES (115, 2018, 178, 173, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (116, 2018, 179, 168, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (117, 2018, 180, 171, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (118, 2018, 181, 174, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (119, 2018, 182, 167, 'Eighth-Final', 4, 3);
INSERT INTO public.games VALUES (120, 2014, 182, 183, 'Final', 1, 0);
INSERT INTO public.games VALUES (121, 2014, 173, 184, 'Third Place', 3, 0);
INSERT INTO public.games VALUES (122, 2014, 184, 182, 'Semi-Final', 1, 0);
INSERT INTO public.games VALUES (123, 2014, 173, 183, 'Semi-Final', 7, 1);
INSERT INTO public.games VALUES (124, 2014, 185, 184, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (125, 2014, 169, 182, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (126, 2014, 175, 173, 'Quarter-Final', 2, 1);
INSERT INTO public.games VALUES (127, 2014, 167, 183, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (128, 2014, 186, 173, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (129, 2014, 174, 175, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (130, 2014, 187, 167, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (131, 2014, 188, 183, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (132, 2014, 178, 184, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (133, 2014, 189, 185, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (134, 2014, 176, 182, 'Eighth-Final', 1, 0);
INSERT INTO public.games VALUES (135, 2014, 190, 169, 'Eighth-Final', 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (167, 'France');
INSERT INTO public.teams VALUES (168, 'Croatia');
INSERT INTO public.teams VALUES (169, 'Belgium');
INSERT INTO public.teams VALUES (170, 'England');
INSERT INTO public.teams VALUES (171, 'Russia');
INSERT INTO public.teams VALUES (172, 'Sweden');
INSERT INTO public.teams VALUES (173, 'Brazil');
INSERT INTO public.teams VALUES (174, 'Uruguay');
INSERT INTO public.teams VALUES (175, 'Colombia');
INSERT INTO public.teams VALUES (176, 'Switzerland');
INSERT INTO public.teams VALUES (177, 'Japan');
INSERT INTO public.teams VALUES (178, 'Mexico');
INSERT INTO public.teams VALUES (179, 'Denmark');
INSERT INTO public.teams VALUES (180, 'Spain');
INSERT INTO public.teams VALUES (181, 'Portugal');
INSERT INTO public.teams VALUES (182, 'Argentina');
INSERT INTO public.teams VALUES (183, 'Germany');
INSERT INTO public.teams VALUES (184, 'Netherlands');
INSERT INTO public.teams VALUES (185, 'Costa Rica');
INSERT INTO public.teams VALUES (186, 'Chile');
INSERT INTO public.teams VALUES (187, 'Nigeria');
INSERT INTO public.teams VALUES (188, 'Algeria');
INSERT INTO public.teams VALUES (189, 'Greece');
INSERT INTO public.teams VALUES (190, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 135, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 190, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

