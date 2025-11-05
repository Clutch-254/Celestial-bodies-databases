--
-- PostgreSQL database dump
--

\restrict rMbjnPLdwVpBCxJl8CKzfsu5zrp7GTTRLkC85CB3giCO7BtUpBed5c40mfdqIAP

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE universe OWNER TO postgres;

\unrestrict rMbjnPLdwVpBCxJl8CKzfsu5zrp7GTTRLkC85CB3giCO7BtUpBed5c40mfdqIAP
\connect universe
\restrict rMbjnPLdwVpBCxJl8CKzfsu5zrp7GTTRLkC85CB3giCO7BtUpBed5c40mfdqIAP

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    galaxy_types character varying(30),
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    is_spherical boolean,
    description text
);


ALTER TABLE public.moon OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.moon_moon_id_seq OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    planet_type character varying(30),
    has_life boolean,
    description text
);


ALTER TABLE public.planet OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.planet_planet_id_seq OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO postgres;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNER TO postgres;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    description text,
    distance_from_earth integer
);


ALTER TABLE public.star OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.star_star_id_seq OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 13600, 'Spiral', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest major galaxy', 10000, 'Spiral', false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third-largest in Local Group', 13000, 'Spiral', false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Classic spiral galaxy', 400, 'Spiral', false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Galaxy with a bright nucleus', 13000, 'Spiral', false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Face-on spiral galaxy', 21, 'Spiral', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, true, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, false, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, false, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 5, true, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 5, true, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, true, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, true, NULL);
INSERT INTO public.moon VALUES (8, 'Mimas', 6, true, NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, true, NULL);
INSERT INTO public.moon VALUES (10, 'Tethys', 6, true, NULL);
INSERT INTO public.moon VALUES (11, 'Dione', 6, true, NULL);
INSERT INTO public.moon VALUES (12, 'Rhea', 6, true, NULL);
INSERT INTO public.moon VALUES (13, 'Titan', 6, true, NULL);
INSERT INTO public.moon VALUES (14, 'Iapetus', 6, true, NULL);
INSERT INTO public.moon VALUES (15, 'Miranda', 7, true, NULL);
INSERT INTO public.moon VALUES (16, 'Ariel', 7, true, NULL);
INSERT INTO public.moon VALUES (17, 'Umbriel', 7, true, NULL);
INSERT INTO public.moon VALUES (18, 'Titania', 7, true, NULL);
INSERT INTO public.moon VALUES (19, 'Oberon', 7, true, NULL);
INSERT INTO public.moon VALUES (20, 'Triton', 8, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Terrestrial', false, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'Terrestrial', false, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'Terrestrial', true, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'Terrestrial', false, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Gas Giant', false, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Gas Giant', false, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'Ice Giant', false, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'Ice Giant', false, NULL);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 2, 'Terrestrial', false, NULL);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1e', 3, 'Terrestrial', false, NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', 4, 'Terrestrial', false, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler-452b', 5, 'Super-Earth', false, NULL);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial', 'A planet composed primarily of silicate rocks or metals.');
INSERT INTO public.planet_types VALUES (2, 'Gas Giant', 'A large planet composed mostly of gases, such as hydrogen and helium.');
INSERT INTO public.planet_types VALUES (3, 'Ice Giant', 'A giant planet composed mainly of elements heavier than hydrogen and helium.');
INSERT INTO public.planet_types VALUES (4, 'Super-Earth', 'An extrasolar planet with a mass higher than Earth''s, but substantially below those of the Solar System''s ice giants.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'Our solar system''s star', 0);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 'Closest star to the Sun', 4);
INSERT INTO public.star VALUES (3, 'TRAPPIST-1', 1, 'Ultra-cool dwarf star', 39);
INSERT INTO public.star VALUES (4, 'Kepler-186', 1, 'Red dwarf star', 500);
INSERT INTO public.star VALUES (5, 'Kepler-452', 1, 'G-type star', 1400);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 1, 'Red supergiant', 642);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

\unrestrict rMbjnPLdwVpBCxJl8CKzfsu5zrp7GTTRLkC85CB3giCO7BtUpBed5c40mfdqIAP

