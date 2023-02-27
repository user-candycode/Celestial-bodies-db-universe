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
    name character varying(50) NOT NULL,
    aparture_magnitude numeric(4,1),
    constellation character varying(30),
    distance_from_earth_in_lightyears integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    size character varying(30),
    age character varying(10),
    surface_temp_in_kelvin numeric(7,3),
    mass_in_kg integer,
    planet_id integer
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
    name character varying(50) NOT NULL,
    life_could_exist boolean,
    discription text,
    age character varying(10),
    dist_in_light_years integer,
    size character varying(30),
    temp_in_kelvin numeric(7,3),
    contains_water boolean,
    star_id integer
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
    name character varying(50) NOT NULL,
    surface_temp_in_kelvin numeric(9,3),
    size_in_km integer,
    colour character varying(30),
    age character varying(10),
    galaxy_id integer
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    name character varying(30) NOT NULL,
    distance_km numeric,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    age integer,
    num_sun integer,
    sun_id integer NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 3.2, 'constellation1', 5);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 1.5, 'constellation2', 16);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 1.9, 'constellation3', 13);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 1.2, 'constellation4', 14);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 0.5, 'constellation5', 43);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 1.3, 'constellation6', 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Kepler-62 (KOI-701)', '1.61x Earth', '7 ± 4 Gyr', 4925.000, 5500, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', '1.61x Earth', '5 ± 4 Gyr', 4925.000, 2300, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', '1.21x Earth', '7 ± 4 Gyr', 4925.000, 3400, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', '1.651x Earth', '3 ± 4 Gyr', 425.000, 5700, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', '1.71x Earth', '7 ± 4 Gyr', 4925.000, 1500, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', '1.681x Earth', '4 ± 4 Gyr', 925.000, 2600, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', '1.651x Earth', '7 ± 4 Gyr', 4925.000, 5700, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', '1.621x Earth', '2 ± 4 Gyr', 425.000, 3400, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', '1.761x Earth', '7 ± 4 Gyr', 4925.000, 5700, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', '1.261x Earth', '1 ± 4 Gyr', 495.000, 5500, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', '1.361x Earth', '7 ± 4 Gyr', 4925.000, 6500, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', '1.561x Earth', '5 ± 4 Gyr', 425.000, 5120, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', '1.261x Earth', '7 ± 4 Gyr', 4925.000, 5500, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', '1.461x Earth', '7 ± 4 Gyr', 425.000, 5500, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', '1.261x Earth', '8 ± 4 Gyr', 4925.000, 5320, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', '1.611x Earth', '9 ± 4 Gyr', 425.000, 3500, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', '1.612x Earth', '3 ± 4 Gyr', 4925.000, 5230, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', '1.061x Earth', '2 ± 4 Gyr', 425.000, 550, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', '1.861x Earth', '1 ± 4 Gyr', 425.000, 500, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', '1.961x Earth', '2 ± 4 Gyr', 925.000, 500, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'KEPLER-62F', true, 'Possible water world', '~7B yrs', 1200, '1.4x Earth', 208.150, true, NULL);
INSERT INTO public.planet VALUES (3, 'planet2', true, 'Possible water world', '~3B yrs', 1200, '4.4x Earth', 208.150, true, NULL);
INSERT INTO public.planet VALUES (4, 'planet3', false, 'Barren world', '~2B yrs', 800, '3.4x Earth', 208.150, true, NULL);
INSERT INTO public.planet VALUES (5, 'planet4', true, 'Possible water world', '~9B yrs', 3200, '1.7x Earth', 208.150, true, NULL);
INSERT INTO public.planet VALUES (6, 'planet5', false, 'Arid world', '~5B yrs', 2000, '1.1x Earth', 208.150, true, NULL);
INSERT INTO public.planet VALUES (7, 'planet6', false, 'Zombie planet', '~1B yrs', 400, '2.2x Earth', 208.150, true, NULL);
INSERT INTO public.planet VALUES (8, 'planet7', false, 'Deserted world', '~2B yrs', 800, '4x Earth', 208.150, true, NULL);
INSERT INTO public.planet VALUES (9, 'planet8', false, 'Magma world', '~7B yrs', 2800, '2x Earth', 208.150, true, NULL);
INSERT INTO public.planet VALUES (10, 'planet9', false, 'Crystal world', '~8B yrs', 3200, '5.4x Earth', 208.150, true, NULL);
INSERT INTO public.planet VALUES (11, 'planet10', false, 'Gasious world', '~4B yrs', 1600, '1.7x Earth', 208.150, true, NULL);
INSERT INTO public.planet VALUES (12, 'planet11', true, 'Possible water world', '~19B yrs', 7600, '5x Earth', 208.150, true, NULL);
INSERT INTO public.planet VALUES (13, 'planet12', false, 'Extreme Presure', '~6B yrs', 3200, '1.2x Earth', 208.150, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', -1.500, 56345, 'red', '6B yrs', NULL);
INSERT INTO public.star VALUES (2, 'star2', 4000.000, 1256345, 'white', '8B yrs', NULL);
INSERT INTO public.star VALUES (3, 'star3', 200000.000, 1456345, 'blue', '3B yrs', NULL);
INSERT INTO public.star VALUES (4, 'star4', 170000.000, 4156345, 'yellow', '9B yrs', NULL);
INSERT INTO public.star VALUES (5, 'star5', 160000.000, 5146345, 'pink', '10B yrs', NULL);
INSERT INTO public.star VALUES (6, 'star6', 141000.000, 151645, 'red', '15B yrs', NULL);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES ('sun1', 1000, false, true, 1000, NULL, NULL, NULL, 1);
INSERT INTO public.sun VALUES ('sun2', 1000, false, false, 1000, NULL, NULL, NULL, 2);
INSERT INTO public.sun VALUES ('sun3', 1000, false, false, 1000, NULL, NULL, NULL, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: sun man_const; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT man_const UNIQUE (name);


--
-- Name: galaxy manual_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT manual_constraint UNIQUE (name);


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
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


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

