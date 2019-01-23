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
-- Name: Ordenes_Reparacion; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public."Ordenes_Reparacion" (
    idtablaordenes integer NOT NULL,
    "InfoReparacion" character varying NOT NULL,
    "idtablaEstado" integer NOT NULL,
    "idTablaTecnico" integer NOT NULL,
    "idTablaCliente" integer NOT NULL,
    "idTablaDisponibles" integer NOT NULL,
    "idTablaTienda" integer NOT NULL
);


ALTER TABLE public."Ordenes_Reparacion" OWNER TO usuario;

--
-- Name: Ordenes_Reparacion_idTablaCliente_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Ordenes_Reparacion_idTablaCliente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ordenes_Reparacion_idTablaCliente_seq" OWNER TO usuario;

--
-- Name: Ordenes_Reparacion_idTablaCliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Ordenes_Reparacion_idTablaCliente_seq" OWNED BY public."Ordenes_Reparacion"."idTablaCliente";


--
-- Name: Ordenes_Reparacion_idTablaDisponibles_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Ordenes_Reparacion_idTablaDisponibles_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ordenes_Reparacion_idTablaDisponibles_seq" OWNER TO usuario;

--
-- Name: Ordenes_Reparacion_idTablaDisponibles_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Ordenes_Reparacion_idTablaDisponibles_seq" OWNED BY public."Ordenes_Reparacion"."idTablaDisponibles";


--
-- Name: Ordenes_Reparacion_idTablaTecnico_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Ordenes_Reparacion_idTablaTecnico_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ordenes_Reparacion_idTablaTecnico_seq" OWNER TO usuario;

--
-- Name: Ordenes_Reparacion_idTablaTecnico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Ordenes_Reparacion_idTablaTecnico_seq" OWNED BY public."Ordenes_Reparacion"."idTablaTecnico";


--
-- Name: Ordenes_Reparacion_idTablaTienda_seq; Type: SEQUENCE; Schema: public; Owner: usuario
--

CREATE SEQUENCE public."Ordenes_Reparacion_idTablaTienda_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ordenes_Reparacion_idTablaTienda_seq" OWNER TO usuario;

--
-- Name: Ordenes_Reparacion_idTablaTienda_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario
--

ALTER SEQUENCE public."Ordenes_Reparacion_idTablaTienda_seq" OWNED BY public."Ordenes_Reparacion"."idTablaTienda";


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

ALTER SEQUENCE public."Ordenes_Reparacion_idtabla_seq" OWNED BY public."Ordenes_Reparacion"."idtablaEstado";


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
-- Name: Ordenes_Reparacion idtablaordenes; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion" ALTER COLUMN idtablaordenes SET DEFAULT nextval('public."Ordenes_Reparacion_idtablaordenes_seq"'::regclass);


--
-- Name: Ordenes_Reparacion idtablaEstado; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion" ALTER COLUMN "idtablaEstado" SET DEFAULT nextval('public."Ordenes_Reparacion_idtabla_seq"'::regclass);


--
-- Name: Ordenes_Reparacion idTablaTecnico; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion" ALTER COLUMN "idTablaTecnico" SET DEFAULT nextval('public."Ordenes_Reparacion_idTablaTecnico_seq"'::regclass);


--
-- Name: Ordenes_Reparacion idTablaCliente; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion" ALTER COLUMN "idTablaCliente" SET DEFAULT nextval('public."Ordenes_Reparacion_idTablaCliente_seq"'::regclass);


--
-- Name: Ordenes_Reparacion idTablaDisponibles; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion" ALTER COLUMN "idTablaDisponibles" SET DEFAULT nextval('public."Ordenes_Reparacion_idTablaDisponibles_seq"'::regclass);


--
-- Name: Ordenes_Reparacion idTablaTienda; Type: DEFAULT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion" ALTER COLUMN "idTablaTienda" SET DEFAULT nextval('public."Ordenes_Reparacion_idTablaTienda_seq"'::regclass);


--
-- Data for Name: Ordenes_Reparacion; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- Name: Ordenes_Reparacion_idTablaCliente_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Ordenes_Reparacion_idTablaCliente_seq"', 1, false);


--
-- Name: Ordenes_Reparacion_idTablaDisponibles_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Ordenes_Reparacion_idTablaDisponibles_seq"', 1, false);


--
-- Name: Ordenes_Reparacion_idTablaTecnico_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Ordenes_Reparacion_idTablaTecnico_seq"', 1, false);


--
-- Name: Ordenes_Reparacion_idTablaTienda_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Ordenes_Reparacion_idTablaTienda_seq"', 1, false);


--
-- Name: Ordenes_Reparacion_idtabla_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Ordenes_Reparacion_idtabla_seq"', 1, false);


--
-- Name: Ordenes_Reparacion_idtablaordenes_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario
--

SELECT pg_catalog.setval('public."Ordenes_Reparacion_idtablaordenes_seq"', 1, false);


--
-- Name: Ordenes_Reparacion Ordenes_Reparacion_InfoReparacion_idtablaEstado_idTablaTecn_key; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion"
    ADD CONSTRAINT "Ordenes_Reparacion_InfoReparacion_idtablaEstado_idTablaTecn_key" UNIQUE ("InfoReparacion", "idtablaEstado", "idTablaTecnico", "idTablaCliente", "idTablaDisponibles", "idTablaTienda");


--
-- Name: Ordenes_Reparacion Ordenes_Reparacion_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion"
    ADD CONSTRAINT "Ordenes_Reparacion_pkey" PRIMARY KEY (idtablaordenes);


--
-- Name: uk_disponibles; Type: INDEX; Schema: public; Owner: usuario
--

CREATE UNIQUE INDEX uk_disponibles ON public."Ordenes_Reparacion" USING btree ("idTablaDisponibles");


--
-- Name: uk_estado; Type: INDEX; Schema: public; Owner: usuario
--

CREATE UNIQUE INDEX uk_estado ON public."Ordenes_Reparacion" USING btree ("idtablaEstado");


--
-- Name: uk_id_Disponibles; Type: INDEX; Schema: public; Owner: usuario
--

CREATE UNIQUE INDEX "uk_id_Disponibles" ON public."Ordenes_Reparacion" USING btree ("idTablaDisponibles");


--
-- Name: uk_id_cliente; Type: INDEX; Schema: public; Owner: usuario
--

CREATE UNIQUE INDEX uk_id_cliente ON public."Ordenes_Reparacion" USING btree ("idTablaCliente");


--
-- Name: uk_id_tecnico; Type: INDEX; Schema: public; Owner: usuario
--

CREATE UNIQUE INDEX uk_id_tecnico ON public."Ordenes_Reparacion" USING btree ("idTablaTecnico");


--
-- Name: uk_id_tienda; Type: INDEX; Schema: public; Owner: usuario
--

CREATE UNIQUE INDEX uk_id_tienda ON public."Ordenes_Reparacion" USING btree ("idTablaTienda");


--
-- Name: Ordenes_Reparacion fk_disponibles; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion"
    ADD CONSTRAINT fk_disponibles FOREIGN KEY ("idTablaDisponibles") REFERENCES public."DispDisponibles"("idtablaDisponibles") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Ordenes_Reparacion fk_estado; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion"
    ADD CONSTRAINT fk_estado FOREIGN KEY ("idtablaEstado") REFERENCES public."EstadoReparación"("idEstadoReparación") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Ordenes_Reparacion fk_id_clientes; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion"
    ADD CONSTRAINT fk_id_clientes FOREIGN KEY ("idTablaCliente") REFERENCES public."Clientes"("idCliente") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Ordenes_Reparacion fk_tecnico; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion"
    ADD CONSTRAINT fk_tecnico FOREIGN KEY ("idTablaTecnico") REFERENCES public."Tecnicos"("idTecnico") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Ordenes_Reparacion fk_tienda; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Ordenes_Reparacion"
    ADD CONSTRAINT fk_tienda FOREIGN KEY ("idTablaTienda") REFERENCES public."ListadoTiendas"("idTienda") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

