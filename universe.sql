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
-- Name: civilization; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civilization (
    civilization_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30),
    population_in_millons numeric(10,2)
);


ALTER TABLE public.civilization OWNER TO freecodecamp;

--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.civilization_civilization_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civilization_civilization_id_seq OWNER TO freecodecamp;

--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.civilization_civilization_id_seq OWNED BY public.civilization.civilization_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    age_in_million_of_years integer
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
    name character varying(30),
    planet_id integer NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_million_of_years integer
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
    name character varying(30),
    star_id integer NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_million_of_years integer
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_million_of_years integer
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
-- Name: civilization civilization_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization ALTER COLUMN civilization_id SET DEFAULT nextval('public.civilization_civilization_id_seq'::regclass);


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
-- Data for Name: civilization; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civilization VALUES (1, 3, 'Humanos', 8000.00);
INSERT INTO public.civilization VALUES (2, 4, 'Reptilianos', 90000.00);
INSERT INTO public.civilization VALUES (3, 8, 'Carxax', 8999.98);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via lactea', 'Via lactea donde se encuentra nuestro sistema solar', true, 100);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Tambien conocida como m31', true, 100);
INSERT INTO public.galaxy VALUES (3, 'Galaxia triangulo', 'Tambien conocida como m33', true, 900);
INSERT INTO public.galaxy VALUES (4, 'Galaxia sombrero', 'Tambien conocida como m104', true, 78);
INSERT INTO public.galaxy VALUES (5, 'Galaxia de Bode', 'Tambien conocida como m81', false, 9000);
INSERT INTO public.galaxy VALUES (6, 'Galaxia remolino', 'Tambien conocida como m51', true, 788);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Io', 5, 'Luna jupiter', true, 5);
INSERT INTO public.moon VALUES (2, 'Europa', 5, 'Luna jupiter', true, 3);
INSERT INTO public.moon VALUES (3, 'Ganimedes', 5, 'Luna jupiter', true, 32);
INSERT INTO public.moon VALUES (4, 'Calisto', 5, 'Luna jupiter', true, 4);
INSERT INTO public.moon VALUES (5, 'Titan', 6, 'Luna saturno', true, 6);
INSERT INTO public.moon VALUES (6, 'Encelado', 6, 'Luna saturno', true, 9);
INSERT INTO public.moon VALUES (7, 'Mimas', 6, 'Luna saturno', true, 7);
INSERT INTO public.moon VALUES (8, 'Dione', 6, 'Luna saturno', true, 8);
INSERT INTO public.moon VALUES (9, 'Rea', 6, 'Luna saturno', true, 1);
INSERT INTO public.moon VALUES (10, 'Tethys', 6, 'Luna saturno', true, 8);
INSERT INTO public.moon VALUES (11, 'Japeto', 6, 'Luna saturno', true, 6);
INSERT INTO public.moon VALUES (12, 'Miranda', 7, 'Luna Urano', true, 6);
INSERT INTO public.moon VALUES (13, 'Ariel', 7, 'Luna Urano', true, 12);
INSERT INTO public.moon VALUES (14, 'Umbriel', 7, 'Luna Urano', true, 23);
INSERT INTO public.moon VALUES (15, 'Titania', 7, 'Luna Urano', true, 21);
INSERT INTO public.moon VALUES (16, 'Oberon', 7, 'Luna Urano', true, 18);
INSERT INTO public.moon VALUES (17, 'Triton', 8, 'Luna Neptuno', true, 6);
INSERT INTO public.moon VALUES (18, 'Nereida', 8, 'Luna Neptuno', true, 16);
INSERT INTO public.moon VALUES (19, 'Fobos', 4, 'Luna Marte', true, 23);
INSERT INTO public.moon VALUES (20, 'Luna', 3, 'Luna de la tierra', true, 24);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 1, 'planeta sistema solar', true, 75);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'planeta sistema solar', true, 23);
INSERT INTO public.planet VALUES (3, 'Tierra', 1, 'planeta sistema solar', true, 35);
INSERT INTO public.planet VALUES (4, 'Marte', 1, 'planeta sistema solar', true, 45);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'planeta sistema solar', true, 65);
INSERT INTO public.planet VALUES (6, 'Saturno', 1, 'planeta sistema solar', true, 33);
INSERT INTO public.planet VALUES (7, 'Urano', 1, 'planeta sistema solar', true, 76);
INSERT INTO public.planet VALUES (8, 'Neptuno', 1, 'planeta sistema solar', true, 71);
INSERT INTO public.planet VALUES (9, 'Pluton', 1, 'planeta sistema solar', true, 15);
INSERT INTO public.planet VALUES (10, 'M31b', 2, 'planeta andromeda', true, 86);
INSERT INTO public.planet VALUES (11, 'M31c', 2, 'planeta andromeda', true, 62);
INSERT INTO public.planet VALUES (12, 'M31d', 2, 'planeta andromeda', true, 65);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1, 'Nuestra estrella madre', true, 90);
INSERT INTO public.star VALUES (2, 'Alpheratz', 2, 'Estrella mas brillante de andromeda', true, 89);
INSERT INTO public.star VALUES (3, 'M33-var', 3, 'Luminosa azul', true, 78);
INSERT INTO public.star VALUES (4, 'Hip 65352', 4, 'Estrella individual', true, 67);
INSERT INTO public.star VALUES (5, 'SN 1993J', 5, 'Supernova', false, 677);
INSERT INTO public.star VALUES (6, 'SN 2005cs', 6, 'Supernova', true, 897);


--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.civilization_civilization_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: civilization civilization_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_pkey PRIMARY KEY (civilization_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: civilization unique_name_ci; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT unique_name_ci UNIQUE (name);


--
-- Name: moon unique_name_m; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_m UNIQUE (name);


--
-- Name: planet unique_name_p; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_p UNIQUE (name);


--
-- Name: star unique_name_s; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_s UNIQUE (name);


--
-- Name: civilization civilization_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
