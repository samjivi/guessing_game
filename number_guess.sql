--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    guesses integer NOT NULL,
    player_id integer NOT NULL
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 27);
INSERT INTO public.games VALUES (2, 1, 27);
INSERT INTO public.games VALUES (3, 1, 27);
INSERT INTO public.games VALUES (4, 403, 35);
INSERT INTO public.games VALUES (5, 280, 35);
INSERT INTO public.games VALUES (6, 199, 36);
INSERT INTO public.games VALUES (7, 554, 36);
INSERT INTO public.games VALUES (8, 323, 35);
INSERT INTO public.games VALUES (9, 494, 35);
INSERT INTO public.games VALUES (10, 785, 35);
INSERT INTO public.games VALUES (11, 359, 37);
INSERT INTO public.games VALUES (12, 956, 37);
INSERT INTO public.games VALUES (13, 653, 38);
INSERT INTO public.games VALUES (14, 617, 38);
INSERT INTO public.games VALUES (15, 243, 37);
INSERT INTO public.games VALUES (16, 531, 37);
INSERT INTO public.games VALUES (17, 458, 37);
INSERT INTO public.games VALUES (18, 881, 39);
INSERT INTO public.games VALUES (19, 187, 39);
INSERT INTO public.games VALUES (20, 113, 40);
INSERT INTO public.games VALUES (21, 772, 40);
INSERT INTO public.games VALUES (22, 813, 39);
INSERT INTO public.games VALUES (23, 210, 39);
INSERT INTO public.games VALUES (24, 388, 39);
INSERT INTO public.games VALUES (25, 3, 41);
INSERT INTO public.games VALUES (26, 239, 41);
INSERT INTO public.games VALUES (27, 842, 42);
INSERT INTO public.games VALUES (28, 864, 42);
INSERT INTO public.games VALUES (29, 251, 41);
INSERT INTO public.games VALUES (30, 475, 41);
INSERT INTO public.games VALUES (31, 173, 41);
INSERT INTO public.games VALUES (32, 114, 43);
INSERT INTO public.games VALUES (33, 567, 43);
INSERT INTO public.games VALUES (34, 152, 44);
INSERT INTO public.games VALUES (35, 199, 44);
INSERT INTO public.games VALUES (36, 449, 43);
INSERT INTO public.games VALUES (37, 789, 43);
INSERT INTO public.games VALUES (38, 228, 43);
INSERT INTO public.games VALUES (39, 625, 45);
INSERT INTO public.games VALUES (40, 378, 46);
INSERT INTO public.games VALUES (41, 810, 46);
INSERT INTO public.games VALUES (42, 126, 45);
INSERT INTO public.games VALUES (43, 606, 45);
INSERT INTO public.games VALUES (44, 149, 45);
INSERT INTO public.games VALUES (45, 549, 47);
INSERT INTO public.games VALUES (46, 606, 47);
INSERT INTO public.games VALUES (47, 798, 48);
INSERT INTO public.games VALUES (48, 167, 48);
INSERT INTO public.games VALUES (49, 731, 47);
INSERT INTO public.games VALUES (50, 284, 47);
INSERT INTO public.games VALUES (51, 594, 47);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (27, 'Diana');
INSERT INTO public.players VALUES (28, 'Diaa');
INSERT INTO public.players VALUES (29, 'user_1790516347712');
INSERT INTO public.players VALUES (30, 'user_1790516347711');
INSERT INTO public.players VALUES (31, 'user_1790516388028');
INSERT INTO public.players VALUES (32, 'user_1790516388027');
INSERT INTO public.players VALUES (33, 'user_1790516526194');
INSERT INTO public.players VALUES (34, 'user_1790516526193');
INSERT INTO public.players VALUES (35, 'user_1790516667165');
INSERT INTO public.players VALUES (36, 'user_1790516667164');
INSERT INTO public.players VALUES (37, 'user_1790516709360');
INSERT INTO public.players VALUES (38, 'user_1790516709359');
INSERT INTO public.players VALUES (39, 'user_1790516748286');
INSERT INTO public.players VALUES (40, 'user_1790516748285');
INSERT INTO public.players VALUES (41, 'user_1790517391674');
INSERT INTO public.players VALUES (42, 'user_1790517391673');
INSERT INTO public.players VALUES (43, 'user_1790517483847');
INSERT INTO public.players VALUES (44, 'user_1790517483846');
INSERT INTO public.players VALUES (45, 'user_1790517524028');
INSERT INTO public.players VALUES (46, 'user_1790517524027');
INSERT INTO public.players VALUES (47, 'user_1790517537093');
INSERT INTO public.players VALUES (48, 'user_1790517537092');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 51, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 48, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games games_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

