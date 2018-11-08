--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

-- Started on 2017-01-18 15:16:38 EST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Create clients role
--
CREATE ROLE fis WITH
	LOGIN
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'secret';

--
-- DATABASE: fis BEGIN
--

--
-- TOC entry 2130 (class 1262 OID 16385)
-- Name: fis; Type: DATABASE; Schema: -; Owner: fis
--

DROP DATABASE IF EXISTS "fis";

CREATE DATABASE "fis" WITH TEMPLATE = template1 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';

ALTER DATABASE "fis" OWNER TO fis;

\connect "fis"

CREATE EXTENSION "pgcrypto";

CREATE TABLE fis (
    "id" text NOT NULL DEFAULT gen_random_uuid(),
    "name" text NOT NULL
);
ALTER TABLE fis OWNER TO fis;
ALTER TABLE ONLY fis ADD CONSTRAINT fis_pkey PRIMARY KEY (id);

INSERT INTO fis ("name") VALUES ('Hurricanes Federal Savings Bank');
INSERT INTO fis ("name") VALUES ('Bruins Citizens and Trust');
INSERT INTO fis ("name") VALUES ('Red Wings Credit Union');
INSERT INTO fis ("name") VALUES ('Stars Bank & Trust');
INSERT INTO fis ("name") VALUES ('Islanders Financial Corp.');

DROP DATABASE IF EXISTS "postgres";