--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: DispDisponibles; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public."DispDisponibles" (
    "idtablaDisponibles" integer NOT NULL,
    marca character varying NOT NULL,
    modelo character varying NOT NULL
);


ALTER TABLE public."DispDisponibles" OWNER TO usuario;

--
-- Name: DispDisponibles_idtablaDisponibles_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."DispDisponibles_idtablaDisponibles_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DispDisponibles_idtablaDisponibles_seq" OWNER TO usuario;

--
-- Name: DispDisponibles_idtablaDisponibles_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."DispDisponibles_idtablaDisponibles_seq" OWNED BY public."DispDisponibles"."idtablaDisponibles";


--
-- Name: DispDisponibles_marca_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."DispDisponibles_marca_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DispDisponibles_marca_seq" OWNER TO usuario;

--
-- Name: DispDisponibles_marca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."DispDisponibles_marca_seq" OWNED BY public."DispDisponibles".marca;


--
-- Name: DispDisponibles_modelo_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."DispDisponibles_modelo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DispDisponibles_modelo_seq" OWNER TO usuario;

--
-- Name: DispDisponibles_modelo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."DispDisponibles_modelo_seq" OWNED BY public."DispDisponibles".modelo;


--
-- Name: EstadoReparación; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public."EstadoReparación" (
    "idEstadoReparación" integer NOT NULL,
    "idOrden" integer NOT NULL,
    "idTecnico" integer NOT NULL,
    "Estado" character varying NOT NULL,
    "Ultima actualizacion" date NOT NULL
);


ALTER TABLE public."EstadoReparación" OWNER TO usuario;

--
-- Name: EstadoReparación_idEstadoReparación_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."EstadoReparación_idEstadoReparación_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EstadoReparación_idEstadoReparación_seq" OWNER TO usuario;

--
-- Name: EstadoReparación_idEstadoReparación_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."EstadoReparación_idEstadoReparación_seq" OWNED BY public."EstadoReparación"."idEstadoReparación";


--
-- Name: EstadoReparación_idOrden_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."EstadoReparación_idOrden_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EstadoReparación_idOrden_seq" OWNER TO usuario;

--
-- Name: EstadoReparación_idOrden_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."EstadoReparación_idOrden_seq" OWNED BY public."EstadoReparación"."idOrden";


--
-- Name: EstadoReparación_idTecnico_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."EstadoReparación_idTecnico_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EstadoReparación_idTecnico_seq" OWNER TO usuario;

--
-- Name: EstadoReparación_idTecnico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."EstadoReparación_idTecnico_seq" OWNED BY public."EstadoReparación"."idTecnico";


--
-- Name: ListadoTiendas; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public."ListadoTiendas" (
    "idTienda" integer NOT NULL,
    "Nombre" character varying(30) NOT NULL,
    telefono character varying NOT NULL
);


ALTER TABLE public."ListadoTiendas" OWNER TO usuario;

--
-- Name: ListadoTiendas_idTienda_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."ListadoTiendas_idTienda_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ListadoTiendas_idTienda_seq" OWNER TO usuario;

--
-- Name: ListadoTiendas_idTienda_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."ListadoTiendas_idTienda_seq" OWNED BY public."ListadoTiendas"."idTienda";


--
-- Name: Ordenes_Reparacion; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public."Ordenes_Reparacion" (
    idtablaordenes integer NOT NULL,
    "InfoReparacion" character varying NOT NULL,
    idtabla integer NOT NULL
);


ALTER TABLE public."Ordenes_Reparacion" OWNER TO usuario;

--
-- Name: Ordenes_Reparacion_idtabla_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Ordenes_Reparacion_idtabla_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ordenes_Reparacion_idtabla_seq" OWNER TO usuario;

--
-- Name: Ordenes_Reparacion_idtabla_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Ordenes_Reparacion_idtabla_seq" OWNED BY public."Ordenes_Reparacion".idtabla;


--
-- Name: Ordenes_Reparacion_idtablaordenes_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Ordenes_Reparacion_idtablaordenes_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ordenes_Reparacion_idtablaordenes_seq" OWNER TO usuario;

--
-- Name: Ordenes_Reparacion_idtablaordenes_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Ordenes_Reparacion_idtablaordenes_seq" OWNED BY public."Ordenes_Reparacion".idtablaordenes;


--
-- Name: Tecnicos; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public."Tecnicos" (
    "idTecnico" integer NOT NULL,
    "Nombre" character varying(20) NOT NULL,
    "Apellidos" character varying(20) NOT NULL
);


ALTER TABLE public."Tecnicos" OWNER TO usuario;

--
-- Name: Tecnicos_idTecnico_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Tecnicos_idTecnico_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Tecnicos_idTecnico_seq" OWNER TO usuario;

--
-- Name: Tecnicos_idTecnico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Tecnicos_idTecnico_seq" OWNED BY public."Tecnicos"."idTecnico";


--
-- Name: DispDisponibles idtablaDisponibles; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."DispDisponibles" ALTER COLUMN "idtablaDisponibles" SET DEFAULT nextval('public."DispDisponibles_idtablaDisponibles_seq"'::regclass);


--
-- Name: DispDisponibles marca; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."DispDisponibles" ALTER COLUMN marca SET DEFAULT nextval('public."DispDisponibles_marca_seq"'::regclass);


--
-- Name: DispDisponibles modelo; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."DispDisponibles" ALTER COLUMN modelo SET DEFAULT nextval('public."DispDisponibles_modelo_seq"'::regclass);


--
-- Name: EstadoReparación idEstadoReparación; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."EstadoReparación" ALTER COLUMN "idEstadoReparación" SET DEFAULT nextval('public."EstadoReparación_idEstadoReparación_seq"'::regclass);


--
-- Name: EstadoReparación idOrden; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."EstadoReparación" ALTER COLUMN "idOrden" SET DEFAULT nextval('public."EstadoReparación_idOrden_seq"'::regclass);


--
-- Name: EstadoReparación idTecnico; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."EstadoReparación" ALTER COLUMN "idTecnico" SET DEFAULT nextval('public."EstadoReparación_idTecnico_seq"'::regclass);


--
-- Name: Ordenes_Reparacion idtablaordenes; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion" ALTER COLUMN idtablaordenes SET DEFAULT nextval('public."Ordenes_Reparacion_idtablaordenes_seq"'::regclass);


--
-- Name: Ordenes_Reparacion idtabla; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion" ALTER COLUMN idtabla SET DEFAULT nextval('public."Ordenes_Reparacion_idtabla_seq"'::regclass);


--
-- Name: Tecnicos idTecnico; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Tecnicos" ALTER COLUMN "idTecnico" SET DEFAULT nextval('public."Tecnicos_idTecnico_seq"'::regclass);


--
-- Data for Name: DispDisponibles; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- Data for Name: EstadoReparación; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- Data for Name: ListadoTiendas; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- Data for Name: Ordenes_Reparacion; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- Data for Name: Tecnicos; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- Name: DispDisponibles_idtablaDisponibles_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."DispDisponibles_idtablaDisponibles_seq"', 1, false);


--
-- Name: DispDisponibles_marca_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."DispDisponibles_marca_seq"', 1, false);


--
-- Name: DispDisponibles_modelo_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."DispDisponibles_modelo_seq"', 1, false);


--
-- Name: EstadoReparación_idEstadoReparación_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."EstadoReparación_idEstadoReparación_seq"', 1, false);


--
-- Name: EstadoReparación_idOrden_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."EstadoReparación_idOrden_seq"', 1, false);


--
-- Name: EstadoReparación_idTecnico_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."EstadoReparación_idTecnico_seq"', 1, false);


--
-- Name: ListadoTiendas_idTienda_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."ListadoTiendas_idTienda_seq"', 1, false);


--
-- Name: Ordenes_Reparacion_idtabla_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Ordenes_Reparacion_idtabla_seq"', 1, false);


--
-- Name: Ordenes_Reparacion_idtablaordenes_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Ordenes_Reparacion_idtablaordenes_seq"', 1, false);


--
-- Name: Tecnicos_idTecnico_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Tecnicos_idTecnico_seq"', 1, false);


--
-- Name: DispDisponibles DispDisponibles_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."DispDisponibles"
    ADD CONSTRAINT "DispDisponibles_pkey" PRIMARY KEY ("idtablaDisponibles");


--
-- Name: EstadoReparación EstadoReparación_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."EstadoReparación"
    ADD CONSTRAINT "EstadoReparación_pkey" PRIMARY KEY ("idEstadoReparación");


--
-- Name: ListadoTiendas ListadoTiendas_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."ListadoTiendas"
    ADD CONSTRAINT "ListadoTiendas_pkey" PRIMARY KEY ("idTienda");


--
-- Name: Ordenes_Reparacion Ordenes_Reparacion_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion"
    ADD CONSTRAINT "Ordenes_Reparacion_pkey" PRIMARY KEY (idtablaordenes);


--
-- Name: Tecnicos Tecnicos_idTecnico_key; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Tecnicos"
    ADD CONSTRAINT "Tecnicos_idTecnico_key" UNIQUE ("idTecnico");


--
-- Name: EstadoReparación uk_id_orden; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."EstadoReparación"
    ADD CONSTRAINT uk_id_orden UNIQUE ("idOrden");


--
-- Name: Ordenes_Reparacion uk_id_tabla; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion"
    ADD CONSTRAINT uk_id_tabla UNIQUE (idtabla);


--
-- Name: EstadoReparación uk_id_tecnico; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."EstadoReparación"
    ADD CONSTRAINT uk_id_tecnico UNIQUE ("idTecnico");


--
-- Name: Tecnicos fk_id_tecnico; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Tecnicos"
    ADD CONSTRAINT fk_id_tecnico FOREIGN KEY ("idTecnico") REFERENCES public."EstadoReparación"("idTecnico") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ListadoTiendas fk_id_tienda; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."ListadoTiendas"
    ADD CONSTRAINT fk_id_tienda FOREIGN KEY ("idTienda") REFERENCES public."Ordenes_Reparacion"(idtabla) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Ordenes_Reparacion fk_orden_reparacion; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion"
    ADD CONSTRAINT fk_orden_reparacion FOREIGN KEY (idtablaordenes) REFERENCES public."EstadoReparación"("idOrden") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

