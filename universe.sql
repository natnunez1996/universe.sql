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
    description text,
    name character varying(20),
    galaxy_types character varying(30) NOT NULL,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: living_beings; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.living_beings (
    living_beings_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer
);


ALTER TABLE public.living_beings OWNER TO freecodecamp;

--
-- Name: living_beings_living_beings_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.living_beings_living_beings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.living_beings_living_beings_id_seq OWNER TO freecodecamp;

--
-- Name: living_beings_living_beings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.living_beings_living_beings_id_seq OWNED BY public.living_beings.living_beings_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20),
    is_spherical boolean,
    size integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(30),
    age_in_million_of_years numeric,
    distance_from_earth integer,
    planet_types character varying(30),
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(20),
    description text,
    is_spherical boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: living_beings living_beings_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_beings ALTER COLUMN living_beings_id SET DEFAULT nextval('public.living_beings_living_beings_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, 'Solar System', 'Main', true);
INSERT INTO public.galaxy VALUES (2, NULL, 'Not Solar System', 'Secondary', false);
INSERT INTO public.galaxy VALUES (4, NULL, '2nd Not Solar System', 'Secondary', false);
INSERT INTO public.galaxy VALUES (5, NULL, '3rd Not Solar System', 'Secondary', false);
INSERT INTO public.galaxy VALUES (6, NULL, '4th Not Solar System', 'Secondary', false);
INSERT INTO public.galaxy VALUES (7, NULL, '5th Not Solar System', 'Secondary', false);


--
-- Data for Name: living_beings; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.living_beings VALUES (1, 'Humans', 3);
INSERT INTO public.living_beings VALUES (2, 'Animals', 3);
INSERT INTO public.living_beings VALUES (3, 'Plants', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Moon', NULL, NULL);
INSERT INTO public.moon VALUES (2, 4, 'Phobos', NULL, NULL);
INSERT INTO public.moon VALUES (3, 4, 'Deimos', NULL, NULL);
INSERT INTO public.moon VALUES (4, 5, 'Amalthea', NULL, NULL);
INSERT INTO public.moon VALUES (5, 5, 'Thebe', NULL, NULL);
INSERT INTO public.moon VALUES (6, 5, 'Io', NULL, NULL);
INSERT INTO public.moon VALUES (7, 5, 'Europa', NULL, NULL);
INSERT INTO public.moon VALUES (8, 5, 'Ganymede', NULL, NULL);
INSERT INTO public.moon VALUES (9, 5, 'Callisto', NULL, NULL);
INSERT INTO public.moon VALUES (10, 5, 'Himalia', NULL, NULL);
INSERT INTO public.moon VALUES (11, 6, 'Mimas', NULL, NULL);
INSERT INTO public.moon VALUES (12, 6, 'Pandora', NULL, NULL);
INSERT INTO public.moon VALUES (13, 6, 'Janus', NULL, NULL);
INSERT INTO public.moon VALUES (14, 6, 'Prometheus', NULL, NULL);
INSERT INTO public.moon VALUES (15, 6, 'Tethys', NULL, NULL);
INSERT INTO public.moon VALUES (16, 6, 'Dones', NULL, NULL);
INSERT INTO public.moon VALUES (17, 6, 'Rhea', NULL, NULL);
INSERT INTO public.moon VALUES (18, 9, 'Nix', NULL, NULL);
INSERT INTO public.moon VALUES (19, 9, 'Kerberos', NULL, NULL);
INSERT INTO public.moon VALUES (20, 9, 'Hydra', NULL, NULL);
INSERT INTO public.moon VALUES (21, 9, 'Styx', NULL, NULL);
INSERT INTO public.moon VALUES (22, 9, 'Charon', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', NULL, NULL, NULL, false, true);
INSERT INTO public.planet VALUES (2, 1, 'Venus', NULL, NULL, NULL, false, true);
INSERT INTO public.planet VALUES (3, 1, 'Earth', NULL, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (4, 1, 'Mars', NULL, NULL, NULL, false, true);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', NULL, NULL, NULL, false, true);
INSERT INTO public.planet VALUES (6, 1, 'Saturn', NULL, NULL, NULL, false, true);
INSERT INTO public.planet VALUES (7, 1, 'Uranus', NULL, NULL, NULL, false, true);
INSERT INTO public.planet VALUES (8, 1, 'Neptune', NULL, NULL, NULL, false, true);
INSERT INTO public.planet VALUES (9, 1, 'Pluto', NULL, NULL, NULL, false, true);
INSERT INTO public.planet VALUES (10, 2, 'Unknown Planet 1', NULL, NULL, NULL, false, false);
INSERT INTO public.planet VALUES (11, 2, 'Unknown Planet 2', NULL, NULL, NULL, false, false);
INSERT INTO public.planet VALUES (12, 2, 'Unknown Planet 3', NULL, NULL, NULL, false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun
', 'Main source of heat', true);
INSERT INTO public.star VALUES (2, 2, 'Star2', 'Main source of heat', true);
INSERT INTO public.star VALUES (4, 4, 'Star3', 'Main source of heat', true);
INSERT INTO public.star VALUES (5, 5, 'Star4', 'Main source of heat', true);
INSERT INTO public.star VALUES (6, 6, 'Star5', 'Main source of heat', true);
INSERT INTO public.star VALUES (7, 7, 'Star6', 'Main source of heat', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: living_beings_living_beings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.living_beings_living_beings_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: living_beings living_beings_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_beings
    ADD CONSTRAINT living_beings_name_key UNIQUE (name);


--
-- Name: living_beings living_beings_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_beings
    ADD CONSTRAINT living_beings_pkey PRIMARY KEY (living_beings_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: living_beings living_beings_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.living_beings
    ADD CONSTRAINT living_beings_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

