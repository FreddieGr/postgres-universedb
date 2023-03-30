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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(50),
    radius integer NOT NULL,
    description text,
    distance_earth integer,
    code integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    speed integer,
    galaxy_code integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_water boolean,
    planet_id integer,
    radius integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(50),
    radius integer NOT NULL,
    has_life boolean,
    description text,
    weight numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    radius integer NOT NULL,
    color character varying(50),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Phoenix', 22231333, 'Description of the black hole', 1233333333, 123);
INSERT INTO public.black_hole VALUES (2, 'VRT-29', 122254, 'This is a black hole ...', 902371, 228);
INSERT INTO public.black_hole VALUES (3, 'ICG-233', 333200, 'This is a black hole ......', 33190148, 7212);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Virgo', 'This is a description of this galaxy nhj.....', 340, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'This is a description of this galaxy vfd.....', 210, NULL);
INSERT INTO public.galaxy VALUES (3, 'Canis', 'This is a description of this galaxy rea...', 190, NULL);
INSERT INTO public.galaxy VALUES (4, 'Maffei', 'This is a description of this galaxy ee..', 140, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cygnus', 'This is description of this galaxy as...', 110, NULL);
INSERT INTO public.galaxy VALUES (6, 'Magellanic', 'This is description of this galaxy ds...', 55, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 1, 40039);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 4, 44139);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4, 66139);
INSERT INTO public.moon VALUES (4, 'Himalia', false, 5, 93119);
INSERT INTO public.moon VALUES (5, 'Callisto', false, 6, 55303);
INSERT INTO public.moon VALUES (6, 'Europa', false, 3, 7876);
INSERT INTO public.moon VALUES (7, 'Metis', false, 4, 29903);
INSERT INTO public.moon VALUES (8, 'Titan', false, 7, 22311113);
INSERT INTO public.moon VALUES (9, 'Veru', false, 2, 22000);
INSERT INTO public.moon VALUES (10, 'Pan', false, 8, 180220);
INSERT INTO public.moon VALUES (11, 'Gorge', false, 9, 9220);
INSERT INTO public.moon VALUES (12, 'Portia', false, 10, 32120);
INSERT INTO public.moon VALUES (13, 'Gusmus', false, 11, 88860);
INSERT INTO public.moon VALUES (14, 'Perdita', false, 12, 848860);
INSERT INTO public.moon VALUES (15, 'Boris', false, 8, 110000);
INSERT INTO public.moon VALUES (16, 'Anna', false, 9, 110880);
INSERT INTO public.moon VALUES (17, 'Despina', false, 5, 212280);
INSERT INTO public.moon VALUES (18, 'Derus', false, 4, 244320);
INSERT INTO public.moon VALUES (19, 'Gigi', false, 5, 2443350);
INSERT INTO public.moon VALUES (20, 'Yama', false, 10, 43250);
INSERT INTO public.moon VALUES (21, 'Urus', false, 11, 400000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 5, 'Earth', 40000, true, 'This is our planet .....', 56654654);
INSERT INTO public.planet VALUES (3, 2, 'Yoolo', 2120000, false, 'This is a  planet .....', 98654);
INSERT INTO public.planet VALUES (4, 2, 'Mars', 8820000, false, 'This is a  planet .....', 1238654);
INSERT INTO public.planet VALUES (2, 1, 'Goti', 2220000, true, 'This is a  planet .....', 654654);
INSERT INTO public.planet VALUES (6, 4, 'Alena', 11132, false, 'This is a planet .....', 355521);
INSERT INTO public.planet VALUES (7, 6, 'Altair', 444132, true, 'This is a planet .....', 3553221);
INSERT INTO public.planet VALUES (5, 3, 'Izusu', 1243432, false, 'This is a planet .....', 21321);
INSERT INTO public.planet VALUES (8, 7, 'Pegasus', 900132, false, 'This is a planet .....', 90001);
INSERT INTO public.planet VALUES (9, 7, 'Amadeus', 555532, false, 'This is a planet .....', 933301);
INSERT INTO public.planet VALUES (10, 4, 'Venigra', 777732, false, 'This is a planet .....', 669234301);
INSERT INTO public.planet VALUES (11, 2, 'Jupiter', 43732, false, 'This is a planet .....', 70001);
INSERT INTO public.planet VALUES (12, 2, 'Saturn', 888842, false, 'This is a planet .....', 45001);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Acrab', 340, 'Red', 1);
INSERT INTO public.star VALUES (2, 'Ain', 123, 'Yellow', 2);
INSERT INTO public.star VALUES (3, 'Diya', 500, 'Red', 3);
INSERT INTO public.star VALUES (4, 'Irena', 3321, 'Yellow', 4);
INSERT INTO public.star VALUES (5, 'Sun', 69033, 'Yellow', 2);
INSERT INTO public.star VALUES (6, 'Meisssa', 4390, 'Red', 6);
INSERT INTO public.star VALUES (7, 'Alexa', 243333, 'Red', 5);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: black_hole black_hole_radius_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_radius_key UNIQUE (radius);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


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
-- Name: moon moon_radius_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_radius_key UNIQUE (radius);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_radius_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_radius_key UNIQUE (radius);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

