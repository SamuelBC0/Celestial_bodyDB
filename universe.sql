--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    size integer,
    mass_light_ratio integer,
    type text
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
    name character varying(30) NOT NULL,
    craters integer,
    radius integer,
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
    name character varying(30) NOT NULL,
    moons integer,
    "position" integer,
    category text,
    life_holder boolean,
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
    name character varying(30) NOT NULL,
    radius integer,
    age integer,
    density numeric(6,1),
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
-- Name: useless; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.useless (
    useless_id integer NOT NULL,
    is_useless boolean NOT NULL,
    name character varying(30)
);


ALTER TABLE public.useless OWNER TO freecodecamp;

--
-- Name: useless_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.useless_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.useless_id_seq OWNER TO freecodecamp;

--
-- Name: useless_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.useless_id_seq OWNED BY public.useless.useless_id;


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
-- Name: useless useless_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.useless ALTER COLUMN useless_id SET DEFAULT nextval('public.useless_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 8, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, 4, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Cigar', 37000, 2, 'Starbust');
INSERT INTO public.galaxy VALUES (4, 'Bode', 96000, 6, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Spiderweb', NULL, 100, 'Irregular');
INSERT INTO public.galaxy VALUES (6, 'Little Sombrero', 104500, 65, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, 3474, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, 9372, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, 12, 4);
INSERT INTO public.moon VALUES (4, 'Io', NULL, 3600, 5);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, 3121, 5);
INSERT INTO public.moon VALUES (6, 'Ganimides', NULL, 5238, 5);
INSERT INTO public.moon VALUES (7, 'Calisto', NULL, 4820, 5);
INSERT INTO public.moon VALUES (8, 'Amaltea', NULL, 170, 5);
INSERT INTO public.moon VALUES (9, 'Mimas', NULL, 1982, 6);
INSERT INTO public.moon VALUES (10, 'Encelado', NULL, 2521, 6);
INSERT INTO public.moon VALUES (11, 'Tetis', NULL, 5331, 6);
INSERT INTO public.moon VALUES (12, 'Titan', NULL, 2576, 6);
INSERT INTO public.moon VALUES (13, 'Hiperion', NULL, 135, 6);
INSERT INTO public.moon VALUES (14, 'Rea', NULL, 7638, 6);
INSERT INTO public.moon VALUES (15, 'Ariel', NULL, 5789, 7);
INSERT INTO public.moon VALUES (16, 'Titania', NULL, 7884, 7);
INSERT INTO public.moon VALUES (17, 'Cordelia', NULL, 201, 7);
INSERT INTO public.moon VALUES (18, 'Triton', NULL, 1353, 8);
INSERT INTO public.moon VALUES (19, 'Galatea', NULL, 88, 8);
INSERT INTO public.moon VALUES (20, 'Proteo', NULL, 210, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, 1, NULL, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, 2, NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 3, NULL, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2, 4, NULL, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 80, 5, NULL, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 274, 6, NULL, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 28, 7, NULL, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 16, 8, NULL, false, 1);
INSERT INTO public.planet VALUES (9, '16 Cygni Bb', 0, 1, NULL, false, 3);
INSERT INTO public.planet VALUES (10, 'Banard d', NULL, 0, NULL, false, 2);
INSERT INTO public.planet VALUES (11, 'Banard b', NULL, 1, NULL, false, 2);
INSERT INTO public.planet VALUES (12, 'Banard c', NULL, 2, NULL, false, 2);
INSERT INTO public.planet VALUES (13, 'Banard e', NULL, 3, NULL, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'AZ Cygni', 856000, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 1713000, NULL, 1.7, 1);
INSERT INTO public.star VALUES (5, 'LGGS J004402.38+412114.9', 866000, NULL, NULL, 2);
INSERT INTO public.star VALUES (6, 'Polaris', 46270, NULL, NULL, 1);
INSERT INTO public.star VALUES (1, 'Sol', 696340, 5, 1.4, 1);
INSERT INTO public.star VALUES (2, 'Banard', 1420000, NULL, 8.4, 1);


--
-- Data for Name: useless; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.useless VALUES (1, true, 'Samael');
INSERT INTO public.useless VALUES (2, true, 'Von');
INSERT INTO public.useless VALUES (3, true, 'Drak');


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
-- Name: useless_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.useless_id_seq', 3, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: useless useless_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.useless
    ADD CONSTRAINT useless_id_key UNIQUE (useless_id);


--
-- Name: useless useless_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.useless
    ADD CONSTRAINT useless_pkey PRIMARY KEY (useless_id);


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

