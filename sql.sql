--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-02-22 01:04:16

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
-- TOC entry 202 (class 1259 OID 16394)
-- Name: instructor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor (
    id integer NOT NULL,
    name text NOT NULL,
    difficulty numeric NOT NULL,
    weight real NOT NULL
);


ALTER TABLE public.instructor OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16400)
-- Name: Instructor_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.instructor ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Instructor_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 204 (class 1259 OID 16402)
-- Name: knowledge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.knowledge (
    id integer NOT NULL,
    academic integer DEFAULT 1 NOT NULL,
    subject_weight real NOT NULL,
    instructor_weight real NOT NULL,
    gpax real NOT NULL,
    knowledge real NOT NULL,
    dohomework real NOT NULL,
    takeclass numeric NOT NULL,
    "timestamp" timestamp without time zone NOT NULL
);


ALTER TABLE public.knowledge OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16409)
-- Name: Knowledge_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.knowledge ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Knowledge_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE
);


--
-- TOC entry 206 (class 1259 OID 16411)
-- Name: subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject (
    id integer NOT NULL,
    subject text NOT NULL,
    difficulty smallint NOT NULL,
    weight real NOT NULL
);


ALTER TABLE public.subject OWNER TO postgres;

--
-- TOC entry 2833 (class 0 OID 16394)
-- Dependencies: 202
-- Data for Name: instructor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.instructor (id, name, difficulty, weight) OVERRIDING SYSTEM VALUE VALUES (1, 'อาจารย์ประดิษฐ์ พิทักษ์เสถียรกุล', 3, 1);
INSERT INTO public.instructor (id, name, difficulty, weight) OVERRIDING SYSTEM VALUE VALUES (2, 'อาจารย์สมชัย เชียงพงศ์พันธุ์', 3, 1);
INSERT INTO public.instructor (id, name, difficulty, weight) OVERRIDING SYSTEM VALUE VALUES (3, 'อาจารย์วันทนี ประจวบศุภกิจ', 3, 1);
INSERT INTO public.instructor (id, name, difficulty, weight) OVERRIDING SYSTEM VALUE VALUES (4, 'อาจารย์สุปีติ กุลจันทร์', 2, 2);
INSERT INTO public.instructor (id, name, difficulty, weight) OVERRIDING SYSTEM VALUE VALUES (5, 'อาจารย์ปองพล สพันธุ์พงษ์', 2, 2);
INSERT INTO public.instructor (id, name, difficulty, weight) OVERRIDING SYSTEM VALUE VALUES (6, 'อาจารย์พาฝัน ดวงไพศาล', 2, 2);
INSERT INTO public.instructor (id, name, difficulty, weight) OVERRIDING SYSTEM VALUE VALUES (7, 'อาจารย์นิติการ นาคเจือทอง', 2, 2);
INSERT INTO public.instructor (id, name, difficulty, weight) OVERRIDING SYSTEM VALUE VALUES (8, 'อาจารย์นิมิต ศรีคำทา ', 2, 2);
INSERT INTO public.instructor (id, name, difficulty, weight) OVERRIDING SYSTEM VALUE VALUES (9, 'อาจารย์ศรายุทธ ธเนศสกุลวัฒนา', 1, 3);
INSERT INTO public.instructor (id, name, difficulty, weight) OVERRIDING SYSTEM VALUE VALUES (10, 'อาจารย์สิวาลัย จินเจือ', 1, 3);


--
-- TOC entry 2835 (class 0 OID 16402)
-- Dependencies: 204
-- Data for Name: knowledge; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (15, 2, 1, 1, 2, 3, 2, 1, '2020-02-21 17:40:41');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (16, 3, 1, 2, 2.21, 3, 2, 2, '2020-02-21 17:43:09');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (17, 1, 2, 3, 2, 3, 2, 3, '2020-02-21 17:44:37');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (18, 1, 2, 1, 2, 3, 2, 1, '2020-02-21 17:45:20');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (19, 1, 2, 1, 2.04, 1, 1, 1, '2020-02-21 17:50:09');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (20, 2, 1, 1, 2.22, 2, 3, 1, '2020-02-21 17:50:11');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (21, 2, 1, 1, 1.67, 3, 3, 1, '2020-02-21 17:50:41');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (22, 1, 2, 1, 2, 1, 1, 1, '2020-02-21 17:50:49');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (23, 2, 1, 1, 1.64, 3, 2, 1, '2020-02-21 17:51:26');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (24, 2, 2, 1, 2, 1, 1, 1, '2020-02-21 17:51:37');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (25, 2, 1, 1, 1.71, 2, 2, 1, '2020-02-21 17:54:41');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (26, 2, 2, 1, 1.56, 1, 2, 1, '2020-02-21 17:55:10');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (27, 2, 1, 1, 1.68, 2, 2, 1, '2020-02-21 17:55:15');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (28, 1, 2, 1, 1.83, 2, 2, 1, '2020-02-21 17:55:42');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (29, 2, 1, 1, 2.22, 3, 3, 1, '2020-02-21 17:57:14');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (30, 2, 1, 1, 1.99, 1, 3, 1, '2020-02-21 17:58:10');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (31, 2, 1, 1, 2, 2, 3, 1, '2020-02-21 17:58:49');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (32, 2, 1, 1, 1.98, 1, 2, 1, '2020-02-21 17:59:33');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (33, 2, 2, 2, 2, 1, 3, 2, '2020-02-21 18:00:23');
INSERT INTO public.knowledge (id, academic, subject_weight, instructor_weight, gpax, knowledge, dohomework, takeclass, "timestamp") OVERRIDING SYSTEM VALUE VALUES (34, 2, 1, 1, 2.08, 2, 3, 1, '2020-02-21 18:03:51');


--
-- TOC entry 2837 (class 0 OID 16411)
-- Dependencies: 206
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213572, 'ELECTRONICS BUSINESS PROCESS', 1, 3);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213190, 'INTRODUCTION TO INFORMATION', 1, 3);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213207, 'SYSTEM ANALYSIS AND DESIGN', 1, 3);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213293, 'INFORMATION TECHNOLOGY PROJE', 1, 3);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213501, 'SOFTWARE ENGINEERING', 1, 3);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213570, 'BUSINESS PROGRAMMING', 2, 2);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213103, 'COMP PROGRAMMING LAB', 2, 2);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (40203123, 'DISCRETE MATHEMATICS AND APP', 2, 2);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213201, 'COMPUTER ARCHITECTURE', 2, 2);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213202, 'DATABASE SYSTEM', 2, 2);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213205, 'COMPUTER OPERATING SYSTEMS', 2, 2);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213292, 'WEB PROGRAMMING', 2, 2);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213511, 'INFORMATION SYSTEM SECURITY', 3, 2);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213512, 'Applied Information Science Laboratory I', 2, 2);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213513, 'APPLIED INFORMATION SCIENCE', 2, 2);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213545, 'INFORMATION SYSTEMS FOR BUSINESS', 2, 2);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213107, 'DATA STRUCTURE AND ALGORITHM', 3, 1);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213290, 'MOBILE APPLICATION DEVELOPM', 3, 1);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213507, 'DECISION SUPPORT SYSTEMS', 3, 1);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213514, 'Applied Information Science Laboratory III', 3, 1);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213543, 'DATA MINING', 3, 1);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213191, 'COMPUTER PROGRAMMING', 3, 1);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213104, 'OBJECT-ORIENTED PROGRAMMING', 3, 1);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213105, 'OBJECT-ORIENTED PROGRAMMING', 3, 1);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (40503011, 'STATISTICS FOR ENGINEER', 3, 1);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213203, 'DATA COMMUNICATION AND COMPUTER', 3, 1);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213291, 'COMPUTER GRAPHICS', 3, 1);
INSERT INTO public.subject (id, subject, difficulty, weight) VALUES (60213508, 'DATABASE DESIGN AND IMPLEMEN', 3, 1);


--
-- TOC entry 2843 (class 0 OID 0)
-- Dependencies: 203
-- Name: Instructor_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Instructor_ID_seq"', 10, true);


--
-- TOC entry 2844 (class 0 OID 0)
-- Dependencies: 205
-- Name: Knowledge_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Knowledge_ID_seq"', 34, true);


--
-- TOC entry 2702 (class 2606 OID 16418)
-- Name: instructor Instructor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT "Instructor_pkey" PRIMARY KEY (id);


--
-- TOC entry 2704 (class 2606 OID 16420)
-- Name: knowledge Knowledge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledge
    ADD CONSTRAINT "Knowledge_pkey" PRIMARY KEY (id);


--
-- TOC entry 2706 (class 2606 OID 16422)
-- Name: subject subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (id);


-- Completed on 2020-02-22 01:04:17

--
-- PostgreSQL database dump complete
--

