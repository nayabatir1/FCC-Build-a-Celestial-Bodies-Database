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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    has_life boolean DEFAULT false,
    age_in_million_years integer,
    distance_from_earth numeric(6,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy2; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy2 (
    name character varying(30) NOT NULL,
    galaxy2_id integer NOT NULL,
    description text,
    has_life boolean DEFAULT false,
    age_in_million_years integer,
    distance_from_earth numeric(6,2)
);


ALTER TABLE public.galaxy2 OWNER TO freecodecamp;

--
-- Name: galaxy2_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy2_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy2_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy2_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy2_galaxy_id_seq OWNED BY public.galaxy2.galaxy2_id;


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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    description text,
    has_life boolean DEFAULT false,
    age_in_million_years integer,
    distance_from_earth numeric(6,2),
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    description text,
    has_life boolean DEFAULT false,
    age_in_million_years integer,
    distance_from_earth numeric(6,2),
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    description text,
    has_life boolean DEFAULT false,
    age_in_million_years integer,
    distance_from_earth numeric(6,2),
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy2 galaxy2_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy2 ALTER COLUMN galaxy2_id SET DEFAULT nextval('public.galaxy2_galaxy_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES ('Milky Way', 1, NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Triangulam', 3, NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Whirlpool', 4, NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Sombrero', 5, NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Centaurus A', 6, NULL, false, NULL, NULL);


--
-- Data for Name: galaxy2; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy2 VALUES ('Milky Way', 1, NULL, false, NULL, NULL);
INSERT INTO public.galaxy2 VALUES ('Andromeda', 2, NULL, false, NULL, NULL);
INSERT INTO public.galaxy2 VALUES ('Triangulam', 3, NULL, false, NULL, NULL);
INSERT INTO public.galaxy2 VALUES ('Whirlpool', 4, NULL, false, NULL, NULL);
INSERT INTO public.galaxy2 VALUES ('Sombrero', 5, NULL, false, NULL, NULL);
INSERT INTO public.galaxy2 VALUES ('Centaurus A', 6, NULL, false, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Luna', 1, NULL, false, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Phobos', 2, NULL, false, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('Diemos', 3, NULL, false, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('Garymede', 4, NULL, false, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('Europa', 5, NULL, false, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('Callisto', 6, NULL, false, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('Titan', 7, NULL, false, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('Enceladus', 8, NULL, false, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('Rhea', 9, NULL, false, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('Dione', 10, NULL, false, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('Miranda', 11, NULL, false, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('Ariel', 12, NULL, false, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('Titania', 13, NULL, false, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('Obenon', 14, NULL, false, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('Triton', 15, NULL, false, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Proteus', 16, NULL, false, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Nereid', 17, NULL, false, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Charon', 18, NULL, false, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('Hydra', 19, NULL, false, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('Nix', 20, NULL, false, NULL, NULL, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, NULL, false, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Mars', 2, NULL, false, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Jupiter', 3, NULL, false, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Saturn', 4, NULL, false, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Uranus', 5, NULL, false, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Neptune', 6, NULL, false, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Mercury', 7, NULL, false, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Venus', 8, NULL, false, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Pluto', 9, NULL, false, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Kepler 22b', 10, NULL, false, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Kepler 16b', 11, NULL, false, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('HD 209458 b', 12, NULL, false, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, NULL, false, NULL, NULL, 1);
INSERT INTO public.star VALUES ('Alpha Centauri', 2, NULL, false, NULL, NULL, 1);
INSERT INTO public.star VALUES ('Sirius', 3, NULL, false, NULL, NULL, 1);
INSERT INTO public.star VALUES ('Proxima Centauri', 4, NULL, false, NULL, NULL, 1);
INSERT INTO public.star VALUES ('Vega', 5, NULL, false, NULL, NULL, 1);
INSERT INTO public.star VALUES ('Betel Guese', 6, NULL, false, NULL, NULL, 1);
INSERT INTO public.star VALUES ('RX J0042.6+4115', 7, NULL, false, NULL, NULL, 2);
INSERT INTO public.star VALUES ('CY Andromeda', 8, NULL, false, NULL, NULL, 2);
INSERT INTO public.star VALUES ('Upsitoy Andromeda', 9, NULL, false, NULL, NULL, 2);
INSERT INTO public.star VALUES ('HD 99994', 10, NULL, false, NULL, NULL, 2);
INSERT INTO public.star VALUES ('TYC 2789-2057-1', 11, NULL, false, NULL, NULL, 2);
INSERT INTO public.star VALUES ('Nu Andromeda', 12, NULL, false, NULL, NULL, 2);


--
-- Name: galaxy2_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy2_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy2 galaxy2_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy2
    ADD CONSTRAINT galaxy2_name_key UNIQUE (name);


--
-- Name: galaxy2 galaxy2_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy2
    ADD CONSTRAINT galaxy2_pkey PRIMARY KEY (galaxy2_id);


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

