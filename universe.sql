--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    worth_visiting boolean,
    validates_parking boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    planet_id integer,
    color character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    number_of_moons integer,
    position_from_sun integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_thousands_miles numeric(10,2),
    galaxy_id integer,
    color character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: universes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universes (
    universes_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    "real" boolean,
    energy_type character varying(20)
);


ALTER TABLE public.universes OWNER TO freecodecamp;

--
-- Name: universes_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universes_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universes_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universes_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universes_universe_id_seq OWNED BY public.universes.universes_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: universes universes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universes ALTER COLUMN universes_id SET DEFAULT nextval('public.universes_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', true, 'This a big ol galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', true, 'This is our galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', false, 'No life here, but there is free chips and salsa', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', false, 'Home of the Hot Tub', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', false, 'Just a boring galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cigar', false, 'cough cough', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, 11, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, 11, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, 11, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, 11, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, 11, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, 11, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, 11, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, 11, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, 11, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, 11, NULL);
INSERT INTO public.moon VALUES (13, 'moon11', NULL, 10, NULL);
INSERT INTO public.moon VALUES (14, 'moon12', NULL, 10, NULL);
INSERT INTO public.moon VALUES (15, 'moon13', NULL, 10, NULL);
INSERT INTO public.moon VALUES (16, 'moon14', NULL, 10, NULL);
INSERT INTO public.moon VALUES (17, 'moon15', NULL, 10, NULL);
INSERT INTO public.moon VALUES (18, 'moon16', NULL, 8, NULL);
INSERT INTO public.moon VALUES (19, 'moon17', NULL, 8, NULL);
INSERT INTO public.moon VALUES (20, 'moon19', NULL, 8, NULL);
INSERT INTO public.moon VALUES (21, 'moon20', NULL, 3, NULL);
INSERT INTO public.moon VALUES (22, 'moon21', NULL, 3, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', true, 1, 3, 1);
INSERT INTO public.planet VALUES (2, 'mars', false, 0, 4, 1);
INSERT INTO public.planet VALUES (3, 'venus', false, 3, 1, 1);
INSERT INTO public.planet VALUES (4, 'mercury', false, 0, 2, 1);
INSERT INTO public.planet VALUES (5, 'tomato', false, 5, 1, 5);
INSERT INTO public.planet VALUES (6, 'onion', false, 2, 2, 5);
INSERT INTO public.planet VALUES (7, 'guac', false, 0, 3, 5);
INSERT INTO public.planet VALUES (8, 'cheese', false, 4, 4, 5);
INSERT INTO public.planet VALUES (9, 'arth', false, 3, 1, 2);
INSERT INTO public.planet VALUES (10, 'nars', true, 5, 2, 2);
INSERT INTO public.planet VALUES (11, 'urectum', true, 10, 4, 2);
INSERT INTO public.planet VALUES (12, 'penus', false, 2, 5, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 200.40, 2, 'yellow');
INSERT INTO public.star VALUES (2, 'othersun', 300.40, 2, 'red');
INSERT INTO public.star VALUES (3, 'deathstar', 103.50, 1, 'silver');
INSERT INTO public.star VALUES (4, 'tortilla', 10.00, 3, 'brown');
INSERT INTO public.star VALUES (5, 'quesadilla', 232.30, 3, 'green');
INSERT INTO public.star VALUES (6, 'otherothersun', 400.00, 1, 'purple');


--
-- Data for Name: universes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universes VALUES (1, 'normal', NULL, true, 'calm');
INSERT INTO public.universes VALUES (2, 'bizarro', NULL, false, 'upsidedown');
INSERT INTO public.universes VALUES (3, 'anti', NULL, false, 'evil');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: universes_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universes_universe_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: universes pk_universes; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universes
    ADD CONSTRAINT pk_universes PRIMARY KEY (universes_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: universes universes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universes
    ADD CONSTRAINT universes_name_key UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

