--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-02-13 06:54:23

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
-- TOC entry 226 (class 1259 OID 17723)
-- Name: expence_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.expence_products (
    expence_product_id integer NOT NULL,
    family_members_name integer,
    products_name integer,
    product_count integer,
    purchase_date date
);


ALTER TABLE public.expence_products OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 17722)
-- Name: expence_products_expence_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.expence_products_expence_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.expence_products_expence_product_id_seq OWNER TO postgres;

--
-- TOC entry 4889 (class 0 OID 0)
-- Dependencies: 225
-- Name: expence_products_expence_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.expence_products_expence_product_id_seq OWNED BY public.expence_products.expence_product_id;


--
-- TOC entry 218 (class 1259 OID 17685)
-- Name: family_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.family_members (
    family_members_id integer NOT NULL,
    family_members_name character varying(150),
    birthay_date date
);


ALTER TABLE public.family_members OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17684)
-- Name: family_members_family_members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.family_members_family_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.family_members_family_members_id_seq OWNER TO postgres;

--
-- TOC entry 4890 (class 0 OID 0)
-- Dependencies: 217
-- Name: family_members_family_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.family_members_family_members_id_seq OWNED BY public.family_members.family_members_id;


--
-- TOC entry 222 (class 1259 OID 17699)
-- Name: family_members_job; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.family_members_job (
    family_members_job_id integer NOT NULL,
    family_members_name integer,
    post character varying(100),
    company character varying(250),
    salary integer,
    start_date date
);


ALTER TABLE public.family_members_job OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17698)
-- Name: family_members_job_family_members_job_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.family_members_job_family_members_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.family_members_job_family_members_job_id_seq OWNER TO postgres;

--
-- TOC entry 4891 (class 0 OID 0)
-- Dependencies: 221
-- Name: family_members_job_family_members_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.family_members_job_family_members_job_id_seq OWNED BY public.family_members_job.family_members_job_id;


--
-- TOC entry 224 (class 1259 OID 17711)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    products_id integer NOT NULL,
    products_name character varying(250),
    product_category integer,
    price integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17692)
-- Name: products_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_category (
    products_category_id integer NOT NULL,
    products_category character varying(250)
);


ALTER TABLE public.products_category OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17691)
-- Name: products_category_products_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_category_products_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_category_products_category_id_seq OWNER TO postgres;

--
-- TOC entry 4892 (class 0 OID 0)
-- Dependencies: 219
-- Name: products_category_products_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_category_products_category_id_seq OWNED BY public.products_category.products_category_id;


--
-- TOC entry 223 (class 1259 OID 17710)
-- Name: products_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_products_id_seq OWNER TO postgres;

--
-- TOC entry 4893 (class 0 OID 0)
-- Dependencies: 223
-- Name: products_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_products_id_seq OWNED BY public.products.products_id;


--
-- TOC entry 4714 (class 2604 OID 17726)
-- Name: expence_products expence_product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.expence_products ALTER COLUMN expence_product_id SET DEFAULT nextval('public.expence_products_expence_product_id_seq'::regclass);


--
-- TOC entry 4710 (class 2604 OID 17688)
-- Name: family_members family_members_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family_members ALTER COLUMN family_members_id SET DEFAULT nextval('public.family_members_family_members_id_seq'::regclass);


--
-- TOC entry 4712 (class 2604 OID 17702)
-- Name: family_members_job family_members_job_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family_members_job ALTER COLUMN family_members_job_id SET DEFAULT nextval('public.family_members_job_family_members_job_id_seq'::regclass);


--
-- TOC entry 4713 (class 2604 OID 17714)
-- Name: products products_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN products_id SET DEFAULT nextval('public.products_products_id_seq'::regclass);


--
-- TOC entry 4711 (class 2604 OID 17695)
-- Name: products_category products_category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_category ALTER COLUMN products_category_id SET DEFAULT nextval('public.products_category_products_category_id_seq'::regclass);


--
-- TOC entry 4883 (class 0 OID 17723)
-- Dependencies: 226
-- Data for Name: expence_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.expence_products VALUES (1, 1, 1, 2, '2025-02-01');
INSERT INTO public.expence_products VALUES (2, 1, 2, 3, '2025-02-01');
INSERT INTO public.expence_products VALUES (3, 1, 2, 1, '2025-02-01');
INSERT INTO public.expence_products VALUES (4, 2, 5, 1, '2025-02-06');
INSERT INTO public.expence_products VALUES (5, 5, 3, 30, '2025-02-09');
INSERT INTO public.expence_products VALUES (6, 4, 7, 5, '2025-02-12');
INSERT INTO public.expence_products VALUES (7, 1, 8, 1, '2025-02-18');
INSERT INTO public.expence_products VALUES (8, 2, 9, 1, '2025-02-22');
INSERT INTO public.expence_products VALUES (9, 3, 4, 1, '2025-02-22');


--
-- TOC entry 4875 (class 0 OID 17685)
-- Dependencies: 218
-- Data for Name: family_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.family_members VALUES (1, 'Иванов Иван Петрович', '1985-06-15');
INSERT INTO public.family_members VALUES (2, 'Иванова Мария Сергеевна', '1987-09-20');
INSERT INTO public.family_members VALUES (3, 'Иванов Алексей Иванович', '2010-02-05');
INSERT INTO public.family_members VALUES (4, 'Иванова Елена Викторовна', '1959-03-10');
INSERT INTO public.family_members VALUES (5, 'Петров Сергей Александрович', '1982-12-05');


--
-- TOC entry 4879 (class 0 OID 17699)
-- Dependencies: 222
-- Data for Name: family_members_job; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.family_members_job VALUES (1, 1, 'Инженер', 'ООО ТехноСервис', 85000, '2015-03-01');
INSERT INTO public.family_members_job VALUES (2, 2, 'Бухгалтер', 'АО ФинансГрупп', 75000, '2012-04-15');
INSERT INTO public.family_members_job VALUES (3, 4, 'Репетитор', 'Частная практика', 15000, '2020-01-10');
INSERT INTO public.family_members_job VALUES (4, 5, 'Таксист', 'Индивидуальная работа', 30000, '2020-09-01');


--
-- TOC entry 4881 (class 0 OID 17711)
-- Dependencies: 224
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products VALUES (1, 'Хлеб', 1, 50);
INSERT INTO public.products VALUES (2, 'Молоко', 1, 80);
INSERT INTO public.products VALUES (3, 'Бензин', 2, 80);
INSERT INTO public.products VALUES (4, 'Билет в кино', 3, 300);
INSERT INTO public.products VALUES (5, 'Зимнее пальто', 4, 8500);
INSERT INTO public.products VALUES (6, 'Учебники', 5, 400);
INSERT INTO public.products VALUES (7, 'Лекарства', 6, 25000);
INSERT INTO public.products VALUES (8, 'Погашение кредита', 7, 89000);
INSERT INTO public.products VALUES (9, 'Смартфон в подарок', 8, 99900);


--
-- TOC entry 4877 (class 0 OID 17692)
-- Dependencies: 220
-- Data for Name: products_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products_category VALUES (1, 'Продукты');
INSERT INTO public.products_category VALUES (2, 'Транспорт');
INSERT INTO public.products_category VALUES (3, 'Развлечения');
INSERT INTO public.products_category VALUES (4, 'Одежда');
INSERT INTO public.products_category VALUES (5, 'Образование');
INSERT INTO public.products_category VALUES (6, 'Здоровье');
INSERT INTO public.products_category VALUES (7, 'Кредиты');
INSERT INTO public.products_category VALUES (8, 'Подарки');


--
-- TOC entry 4894 (class 0 OID 0)
-- Dependencies: 225
-- Name: expence_products_expence_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.expence_products_expence_product_id_seq', 1, false);


--
-- TOC entry 4895 (class 0 OID 0)
-- Dependencies: 217
-- Name: family_members_family_members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.family_members_family_members_id_seq', 1, false);


--
-- TOC entry 4896 (class 0 OID 0)
-- Dependencies: 221
-- Name: family_members_job_family_members_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.family_members_job_family_members_job_id_seq', 1, false);


--
-- TOC entry 4897 (class 0 OID 0)
-- Dependencies: 219
-- Name: products_category_products_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_category_products_category_id_seq', 1, false);


--
-- TOC entry 4898 (class 0 OID 0)
-- Dependencies: 223
-- Name: products_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_products_id_seq', 1, false);


--
-- TOC entry 4724 (class 2606 OID 17728)
-- Name: expence_products expence_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.expence_products
    ADD CONSTRAINT expence_products_pkey PRIMARY KEY (expence_product_id);


--
-- TOC entry 4720 (class 2606 OID 17704)
-- Name: family_members_job family_members_job_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family_members_job
    ADD CONSTRAINT family_members_job_pkey PRIMARY KEY (family_members_job_id);


--
-- TOC entry 4716 (class 2606 OID 17690)
-- Name: family_members family_members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family_members
    ADD CONSTRAINT family_members_pkey PRIMARY KEY (family_members_id);


--
-- TOC entry 4718 (class 2606 OID 17697)
-- Name: products_category products_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_category
    ADD CONSTRAINT products_category_pkey PRIMARY KEY (products_category_id);


--
-- TOC entry 4722 (class 2606 OID 17716)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (products_id);


--
-- TOC entry 4727 (class 2606 OID 17729)
-- Name: expence_products expence_products_family_members_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.expence_products
    ADD CONSTRAINT expence_products_family_members_name_fkey FOREIGN KEY (family_members_name) REFERENCES public.family_members(family_members_id);


--
-- TOC entry 4728 (class 2606 OID 17734)
-- Name: expence_products expence_products_products_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.expence_products
    ADD CONSTRAINT expence_products_products_name_fkey FOREIGN KEY (products_name) REFERENCES public.products(products_id);


--
-- TOC entry 4725 (class 2606 OID 17705)
-- Name: family_members_job family_members_job_family_members_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.family_members_job
    ADD CONSTRAINT family_members_job_family_members_name_fkey FOREIGN KEY (family_members_name) REFERENCES public.family_members(family_members_id);


--
-- TOC entry 4726 (class 2606 OID 17717)
-- Name: products products_product_category_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_category_fkey FOREIGN KEY (product_category) REFERENCES public.products_category(products_category_id);


-- Completed on 2025-02-13 06:54:24

--
-- PostgreSQL database dump complete
--

