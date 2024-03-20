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
    name character varying(40) NOT NULL,
    nb_celestial_bodies integer,
    description text,
    diameter integer
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
-- Name: lifeform; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lifeform (
    lifeform_id integer NOT NULL,
    name character varying(40) NOT NULL,
    type character varying(40)
);


ALTER TABLE public.lifeform OWNER TO freecodecamp;

--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lifeform_lifeform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lifeform_lifeform_id_seq OWNER TO freecodecamp;

--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lifeform_lifeform_id_seq OWNED BY public.lifeform.lifeform_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    liveable boolean NOT NULL,
    planet_id integer NOT NULL,
    diameter integer
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
    name character varying(40),
    liveable boolean NOT NULL,
    nb_moons integer NOT NULL,
    radius numeric(6,1),
    star_id integer NOT NULL
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
    name character varying(40),
    galaxy_id integer NOT NULL,
    nb_celestial_bodies integer,
    diameter integer
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
-- Name: lifeform lifeform_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform ALTER COLUMN lifeform_id SET DEFAULT nextval('public.lifeform_lifeform_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Nebuleuse dEmeraude', 0, '', 10);
INSERT INTO public.galaxy VALUES (2, 'Voie Lactee Etheree', 0, '', 10);
INSERT INTO public.galaxy VALUES (3, 'Amas dEtoiles Astral', 0, '', 10);
INSERT INTO public.galaxy VALUES (4, 'Galaxie Crepuscule Celeste', 0, '', 10);
INSERT INTO public.galaxy VALUES (5, 'Constellation dArgent', 0, '', 10);
INSERT INTO public.galaxy VALUES (6, 'Nebuleuse lAube Mystique', 0, '', 10);


--
-- Data for Name: lifeform; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lifeform VALUES (1, 'Plante Lumineuse', 'Végétal');
INSERT INTO public.lifeform VALUES (2, 'Cristal Vivant', 'Minéral');
INSERT INTO public.lifeform VALUES (3, 'Spectre Astral', 'Energétique');
INSERT INTO public.lifeform VALUES (4, 'Flore Abyssale', 'Aquatique');
INSERT INTO public.lifeform VALUES (5, 'Forme de Vie Élémentaire', 'Primordiale');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lunaire Rouge', true, 1, 3840);
INSERT INTO public.moon VALUES (2, 'Satellite Bleu', false, 1, 2800);
INSERT INTO public.moon VALUES (3, 'Etoile des Neiges', false, 2, 4600);
INSERT INTO public.moon VALUES (4, 'Lune dArgent', false, 2, 3600);
INSERT INTO public.moon VALUES (5, 'Lune de Cristal', true, 3, 4100);
INSERT INTO public.moon VALUES (6, 'Nuit Noire', false, 3, 3200);
INSERT INTO public.moon VALUES (7, 'Froid Eclat', false, 4, 3900);
INSERT INTO public.moon VALUES (8, 'Lune de Saphir', true, 4, 3400);
INSERT INTO public.moon VALUES (9, 'Soleil Rouge', false, 5, 4200);
INSERT INTO public.moon VALUES (10, 'Astre dOr', true, 5, 3800);
INSERT INTO public.moon VALUES (11, 'Lune Argentée', false, 6, 3200);
INSERT INTO public.moon VALUES (12, 'Galaxie Bleue', false, 6, 2900);
INSERT INTO public.moon VALUES (13, 'Lune des Etoiles', true, 7, 3500);
INSERT INTO public.moon VALUES (14, 'Lune dEmeraude', false, 7, 3300);
INSERT INTO public.moon VALUES (15, 'Planète Rouge', false, 8, 4100);
INSERT INTO public.moon VALUES (16, 'Lune du Crépuscule', true, 8, 3700);
INSERT INTO public.moon VALUES (17, 'Soleil dArgent', false, 9, 3900);
INSERT INTO public.moon VALUES (18, 'Lune de Jade', false, 9, 3200);
INSERT INTO public.moon VALUES (19, 'Etoile Noire', true, 10, 3800);
INSERT INTO public.moon VALUES (20, 'Lune dIvoire', false, 10, 3400);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terra', true, 1, 6371.0, 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, 2, 3389.5, 2);
INSERT INTO public.planet VALUES (3, 'Venus', false, 0, 6051.8, 3);
INSERT INTO public.planet VALUES (4, 'Jupiter', false, 79, 69911.0, 4);
INSERT INTO public.planet VALUES (5, 'Saturn', false, 82, 58232.0, 5);
INSERT INTO public.planet VALUES (6, 'Uranus', false, 27, 25362.0, 6);
INSERT INTO public.planet VALUES (7, 'Neptune', false, 14, 24622.0, 1);
INSERT INTO public.planet VALUES (8, 'Pluto', false, 5, 1188.3, 2);
INSERT INTO public.planet VALUES (9, 'Mercury', false, 0, 2439.7, 3);
INSERT INTO public.planet VALUES (10, 'Ceres', false, 0, 473.0, 4);
INSERT INTO public.planet VALUES (11, 'Haumea', false, 2, 816.3, 5);
INSERT INTO public.planet VALUES (12, 'Eris', false, 1, 1163.0, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Solstice Dore', 1, 0, 10);
INSERT INTO public.star VALUES (2, 'Nova Ecarlate', 2, 0, 10);
INSERT INTO public.star VALUES (3, 'Astre de Minuit', 3, 0, 10);
INSERT INTO public.star VALUES (4, 'Etoile Brillante Saphir', 4, 0, 10);
INSERT INTO public.star VALUES (5, 'Sirius Ardente', 5, 0, 10);
INSERT INTO public.star VALUES (6, 'Eclat Lunaire', 6, 0, 10);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: lifeform_lifeform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lifeform_lifeform_id_seq', 5, true);


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
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lifeform lifeform_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_pkey PRIMARY KEY (lifeform_id);


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
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: lifeform unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: galaxy uniquegalaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uniquegalaxy_name UNIQUE (name);


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

