--
-- PostgreSQL database cluster dump
--

-- Started on 2025-03-11 23:31:57

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-03-11 23:31:57

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

-- Completed on 2025-03-11 23:31:58

--
-- PostgreSQL database dump complete
--

--
-- Database "joyeria_celestial" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-03-11 23:31:58

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

--
-- TOC entry 4946 (class 1262 OID 33216)
-- Name: joyeria_celestial; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE joyeria_celestial WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Venezuela.1252';


ALTER DATABASE joyeria_celestial OWNER TO postgres;

\connect joyeria_celestial

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
-- TOC entry 217 (class 1259 OID 33521)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    numero_cliente integer NOT NULL,
    nombre_razon_social character varying(100),
    informacion_contacto text,
    historial_compras text,
    preferencias_diseno text
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 33526)
-- Name: clientes_numero_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_numero_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientes_numero_cliente_seq OWNER TO postgres;

--
-- TOC entry 4947 (class 0 OID 0)
-- Dependencies: 218
-- Name: clientes_numero_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_numero_cliente_seq OWNED BY public.clientes.numero_cliente;


--
-- TOC entry 219 (class 1259 OID 33527)
-- Name: comunicacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comunicacion (
    id integer NOT NULL,
    tipo_comunicacion character varying(50),
    mensaje text,
    destinatario text
);


ALTER TABLE public.comunicacion OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 33532)
-- Name: comunicacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comunicacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comunicacion_id_seq OWNER TO postgres;

--
-- TOC entry 4948 (class 0 OID 0)
-- Dependencies: 220
-- Name: comunicacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comunicacion_id_seq OWNED BY public.comunicacion.id;


--
-- TOC entry 221 (class 1259 OID 33533)
-- Name: diseno_gema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.diseno_gema (
    diseno_id integer NOT NULL,
    gema_id integer NOT NULL
);


ALTER TABLE public.diseno_gema OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 33536)
-- Name: diseno_metal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.diseno_metal (
    diseno_id integer NOT NULL,
    metal_id integer NOT NULL
);


ALTER TABLE public.diseno_metal OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 33539)
-- Name: disenos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.disenos (
    codigo_diseno integer NOT NULL,
    descripcion text,
    tipo_joya character varying(50),
    metal_principal character varying(50),
    gemas_utilizadas text,
    dimensiones character varying(50),
    peso_estimado numeric,
    bocetos text,
    renders_3d text,
    planos_tecnicos text,
    estado_diseno character varying(50),
    fecha_creacion date DEFAULT CURRENT_DATE
);


ALTER TABLE public.disenos OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 33545)
-- Name: disenos_codigo_diseno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.disenos_codigo_diseno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.disenos_codigo_diseno_seq OWNER TO postgres;

--
-- TOC entry 4949 (class 0 OID 0)
-- Dependencies: 224
-- Name: disenos_codigo_diseno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.disenos_codigo_diseno_seq OWNED BY public.disenos.codigo_diseno;


--
-- TOC entry 225 (class 1259 OID 33546)
-- Name: facturacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facturacion (
    pedido_tasacion integer NOT NULL,
    fecha_factura date NOT NULL,
    importe numeric,
    estado_factura character varying(50)
);


ALTER TABLE public.facturacion OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 33551)
-- Name: gemas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gemas (
    codigo_gema integer NOT NULL,
    tipo character varying(50),
    talla character varying(50),
    color character varying(50),
    claridad character varying(50),
    quilates numeric,
    origen character varying(50),
    certificado_autenticidad text,
    precio_unitario numeric
);


ALTER TABLE public.gemas OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 33556)
-- Name: gemas_codigo_gema_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gemas_codigo_gema_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gemas_codigo_gema_seq OWNER TO postgres;

--
-- TOC entry 4950 (class 0 OID 0)
-- Dependencies: 227
-- Name: gemas_codigo_gema_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gemas_codigo_gema_seq OWNED BY public.gemas.codigo_gema;


--
-- TOC entry 228 (class 1259 OID 33557)
-- Name: informes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.informes (
    tipo_informe character varying(50) NOT NULL,
    contenido_informe text
);


ALTER TABLE public.informes OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 33562)
-- Name: marketing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marketing (
    campania integer NOT NULL,
    presencia_redes_sociales text
);


ALTER TABLE public.marketing OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 33567)
-- Name: marketing_campania_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marketing_campania_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.marketing_campania_seq OWNER TO postgres;

--
-- TOC entry 4951 (class 0 OID 0)
-- Dependencies: 230
-- Name: marketing_campania_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marketing_campania_seq OWNED BY public.marketing.campania;


--
-- TOC entry 231 (class 1259 OID 33568)
-- Name: metales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.metales (
    codigo_metal integer NOT NULL,
    tipo character varying(50),
    pureza numeric,
    peso_stock numeric,
    precio_gramo numeric
);


ALTER TABLE public.metales OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 33573)
-- Name: metales_codigo_metal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.metales_codigo_metal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.metales_codigo_metal_seq OWNER TO postgres;

--
-- TOC entry 4952 (class 0 OID 0)
-- Dependencies: 232
-- Name: metales_codigo_metal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.metales_codigo_metal_seq OWNED BY public.metales.codigo_metal;


--
-- TOC entry 233 (class 1259 OID 33574)
-- Name: pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedidos (
    numero_pedido integer NOT NULL,
    cliente integer,
    tipo_pedido character varying(50),
    diseno_solicitado integer,
    materiales_utilizados text,
    fecha_pedido date,
    fecha_entrega date,
    estado_pedido character varying(50)
);


ALTER TABLE public.pedidos OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 33579)
-- Name: pedidos_numero_pedido_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedidos_numero_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pedidos_numero_pedido_seq OWNER TO postgres;

--
-- TOC entry 4953 (class 0 OID 0)
-- Dependencies: 234
-- Name: pedidos_numero_pedido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedidos_numero_pedido_seq OWNED BY public.pedidos.numero_pedido;


--
-- TOC entry 235 (class 1259 OID 33580)
-- Name: produccion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produccion (
    orden_produccion integer NOT NULL,
    pedido integer,
    diseno integer,
    materiales_utilizados text,
    fecha_inicio date,
    fecha_fin date,
    operarios_asignados text,
    etapas_produccion text
);


ALTER TABLE public.produccion OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 33585)
-- Name: produccion_orden_produccion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produccion_orden_produccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produccion_orden_produccion_seq OWNER TO postgres;

--
-- TOC entry 4954 (class 0 OID 0)
-- Dependencies: 236
-- Name: produccion_orden_produccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produccion_orden_produccion_seq OWNED BY public.produccion.orden_produccion;


--
-- TOC entry 237 (class 1259 OID 33586)
-- Name: proveedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedores (
    numero_proveedor integer NOT NULL,
    nombre_razon_social character varying(100),
    tipo_materiales character varying(50),
    informacion_contacto text,
    certificaciones text
);


ALTER TABLE public.proveedores OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 33591)
-- Name: proveedores_numero_proveedor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proveedores_numero_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proveedores_numero_proveedor_seq OWNER TO postgres;

--
-- TOC entry 4955 (class 0 OID 0)
-- Dependencies: 238
-- Name: proveedores_numero_proveedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proveedores_numero_proveedor_seq OWNED BY public.proveedores.numero_proveedor;


--
-- TOC entry 239 (class 1259 OID 33592)
-- Name: tasaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tasaciones (
    joya integer NOT NULL,
    fecha_tasacion date NOT NULL,
    tasador character varying(50),
    valor_joya numeric,
    criterios_tasacion text
);


ALTER TABLE public.tasaciones OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 33597)
-- Name: transacciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transacciones (
    id_transaccion integer NOT NULL,
    fecha date,
    tipo_transaccion character varying(50),
    importe numeric,
    estado_transaccion character varying(50),
    descripcion text
);


ALTER TABLE public.transacciones OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 33602)
-- Name: transacciones_id_transaccion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transacciones_id_transaccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transacciones_id_transaccion_seq OWNER TO postgres;

--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 241
-- Name: transacciones_id_transaccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transacciones_id_transaccion_seq OWNED BY public.transacciones.id_transaccion;


--
-- TOC entry 242 (class 1259 OID 33603)
-- Name: vista_pedidos_resumen; Type: MATERIALIZED VIEW; Schema: public; Owner: postgres
--

CREATE MATERIALIZED VIEW public.vista_pedidos_resumen AS
 SELECT p.numero_pedido,
    c.nombre_razon_social AS cliente_nombre,
    p.fecha_pedido,
    p.estado_pedido
   FROM (public.pedidos p
     JOIN public.clientes c ON ((p.cliente = c.numero_cliente)))
  WITH NO DATA;


ALTER MATERIALIZED VIEW public.vista_pedidos_resumen OWNER TO postgres;

--
-- TOC entry 4710 (class 2604 OID 33746)
-- Name: clientes numero_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN numero_cliente SET DEFAULT nextval('public.clientes_numero_cliente_seq'::regclass);


--
-- TOC entry 4711 (class 2604 OID 33747)
-- Name: comunicacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comunicacion ALTER COLUMN id SET DEFAULT nextval('public.comunicacion_id_seq'::regclass);


--
-- TOC entry 4712 (class 2604 OID 33748)
-- Name: disenos codigo_diseno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disenos ALTER COLUMN codigo_diseno SET DEFAULT nextval('public.disenos_codigo_diseno_seq'::regclass);


--
-- TOC entry 4714 (class 2604 OID 33749)
-- Name: gemas codigo_gema; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gemas ALTER COLUMN codigo_gema SET DEFAULT nextval('public.gemas_codigo_gema_seq'::regclass);


--
-- TOC entry 4715 (class 2604 OID 33750)
-- Name: marketing campania; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marketing ALTER COLUMN campania SET DEFAULT nextval('public.marketing_campania_seq'::regclass);


--
-- TOC entry 4716 (class 2604 OID 33751)
-- Name: metales codigo_metal; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metales ALTER COLUMN codigo_metal SET DEFAULT nextval('public.metales_codigo_metal_seq'::regclass);


--
-- TOC entry 4717 (class 2604 OID 33752)
-- Name: pedidos numero_pedido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos ALTER COLUMN numero_pedido SET DEFAULT nextval('public.pedidos_numero_pedido_seq'::regclass);


--
-- TOC entry 4718 (class 2604 OID 33753)
-- Name: produccion orden_produccion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produccion ALTER COLUMN orden_produccion SET DEFAULT nextval('public.produccion_orden_produccion_seq'::regclass);


--
-- TOC entry 4719 (class 2604 OID 33754)
-- Name: proveedores numero_proveedor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedores ALTER COLUMN numero_proveedor SET DEFAULT nextval('public.proveedores_numero_proveedor_seq'::regclass);


--
-- TOC entry 4720 (class 2604 OID 33755)
-- Name: transacciones id_transaccion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacciones ALTER COLUMN id_transaccion SET DEFAULT nextval('public.transacciones_id_transaccion_seq'::regclass);


--
-- TOC entry 4915 (class 0 OID 33521)
-- Dependencies: 217
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (numero_cliente, nombre_razon_social, informacion_contacto, historial_compras, preferencias_diseno) FROM stdin;
2	Cliente 1	contacto@cliente1.com	Compra1, Compra2	Anillos de oro
3	Cliente 2	contacto@cliente2.com	Compra3, Compra4	Collares de plata
4	Cliente 3	contacto@cliente3.com	Compra5, Compra6	Pendientes de platino
5	Cliente 1	contacto@cliente1.com	Compra1, Compra2	Anillos de oro
6	Cliente 2	contacto@cliente2.com	Compra3, Compra4	Collares de plata
7	Cliente 3	contacto@cliente3.com	Compra5, Compra6	Pendientes de platino
8	Cliente 1	contacto@cliente1.com	Compra1, Compra2	Anillos de oro
9	Cliente 2	contacto@cliente2.com	Compra3, Compra4	Collares de plata
10	Cliente 3	contacto@cliente3.com	Compra5, Compra6	Pendientes de platino
11	Cliente 1	contacto@cliente1.com	Compra1, Compra2	Anillos de oro
12	Cliente 2	contacto@cliente2.com	Compra3, Compra4	Collares de plata
13	Cliente 3	contacto@cliente3.com	Compra5, Compra6	Pendientes de platino
14	Cliente 1	contacto@cliente1.com	Compra1, Compra2	Anillos de oro
15	Cliente 2	contacto@cliente2.com	Compra3, Compra4	Collares de plata
16	Cliente 3	contacto@cliente3.com	Compra5, Compra6	Pendientes de platino
17	Cliente 1	contacto@cliente1.com	Compra1, Compra2	Anillos de oro
18	Cliente 2	contacto@cliente2.com	Compra3, Compra4	Collares de plata
19	Cliente 3	contacto@cliente3.com	Compra5, Compra6	Pendientes de platino
\.


--
-- TOC entry 4917 (class 0 OID 33527)
-- Dependencies: 219
-- Data for Name: comunicacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comunicacion (id, tipo_comunicacion, mensaje, destinatario) FROM stdin;
1	Email	Mensaje de prueba	cliente1@example.com
2	SMS	Mensaje de prueba 2	cliente2@example.com
3	Email	Mensaje de prueba	cliente1@example.com
4	SMS	Mensaje de prueba 2	cliente2@example.com
5	Email	Mensaje de prueba	cliente1@example.com
6	SMS	Mensaje de prueba 2	cliente2@example.com
7	Email	Mensaje de prueba	cliente1@example.com
8	SMS	Mensaje de prueba 2	cliente2@example.com
\.


--
-- TOC entry 4919 (class 0 OID 33533)
-- Dependencies: 221
-- Data for Name: diseno_gema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.diseno_gema (diseno_id, gema_id) FROM stdin;
\.


--
-- TOC entry 4920 (class 0 OID 33536)
-- Dependencies: 222
-- Data for Name: diseno_metal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.diseno_metal (diseno_id, metal_id) FROM stdin;
\.


--
-- TOC entry 4921 (class 0 OID 33539)
-- Dependencies: 223
-- Data for Name: disenos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.disenos (codigo_diseno, descripcion, tipo_joya, metal_principal, gemas_utilizadas, dimensiones, peso_estimado, bocetos, renders_3d, planos_tecnicos, estado_diseno, fecha_creacion) FROM stdin;
1	Anillo de compromiso	Anillo	Oro	Diamante	10x10x5	5.0	URL_boceto	URL_render	URL_plano	En desarrollo	2025-03-11
2	Anillo de compromiso	Anillo	Oro	Diamante	10x10x5	5.0	URL_boceto	URL_render	URL_plano	En desarrollo	2025-03-11
3	Collar de perlas	Collar	Plata	Perla	15x10x5	8.0	URL_boceto	URL_render	URL_plano	Aprobado	2025-03-11
4	Pendientes de rubí	Pendientes	Platino	Rubí	5x5x5	3.0	URL_boceto	URL_render	URL_plano	En producción	2025-03-11
5	Anillo de compromiso	Anillo	Oro	Diamante	10x10x5	5.0	URL_boceto	URL_render	URL_plano	En desarrollo	2025-03-11
6	Collar de perlas	Collar	Plata	Perla	15x10x5	8.0	URL_boceto	URL_render	URL_plano	Aprobado	2025-03-11
7	Pendientes de rubí	Pendientes	Platino	Rubí	5x5x5	3.0	URL_boceto	URL_render	URL_plano	En producción	2025-03-11
8	Anillo de compromiso	Anillo	Oro	Diamante	10x10x5	5.0	URL_boceto	URL_render	URL_plano	En desarrollo	2025-03-11
9	Collar de perlas	Collar	Plata	Perla	15x10x5	8.0	URL_boceto	URL_render	URL_plano	Aprobado	2025-03-11
10	Pendientes de rubí	Pendientes	Platino	Rubí	5x5x5	3.0	URL_boceto	URL_render	URL_plano	En producción	2025-03-11
11	Anillo de compromiso	Anillo	Oro	Diamante	10x10x5	5.0	URL_boceto	URL_render	URL_plano	En desarrollo	2025-03-11
12	Collar de perlas	Collar	Plata	Perla	15x10x5	8.0	URL_boceto	URL_render	URL_plano	Aprobado	2025-03-11
13	Pendientes de rubí	Pendientes	Platino	Rubí	5x5x5	3.0	URL_boceto	URL_render	URL_plano	En producción	2025-03-11
14	Anillo de compromiso	Anillo	Oro	Diamante	10x10x5	5.0	URL_boceto	URL_render	URL_plano	En desarrollo	2025-03-11
15	Collar de perlas	Collar	Plata	Perla	15x10x5	8.0	URL_boceto	URL_render	URL_plano	Aprobado	2025-03-11
16	Pendientes de rubí	Pendientes	Platino	Rubí	5x5x5	3.0	URL_boceto	URL_render	URL_plano	En producción	2025-03-11
17	Anillo de compromiso	Anillo	Oro	Diamante	10x10x5	5.0	URL_boceto	URL_render	URL_plano	En desarrollo	2025-03-11
18	Collar de perlas	Collar	Plata	Perla	15x10x5	8.0	URL_boceto	URL_render	URL_plano	Aprobado	2025-03-11
19	Pendientes de rubí	Pendientes	Platino	Rubí	5x5x5	3.0	URL_boceto	URL_render	URL_plano	En producción	2025-03-11
\.


--
-- TOC entry 4923 (class 0 OID 33546)
-- Dependencies: 225
-- Data for Name: facturacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facturacion (pedido_tasacion, fecha_factura, importe, estado_factura) FROM stdin;
\.


--
-- TOC entry 4924 (class 0 OID 33551)
-- Dependencies: 226
-- Data for Name: gemas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gemas (codigo_gema, tipo, talla, color, claridad, quilates, origen, certificado_autenticidad, precio_unitario) FROM stdin;
1	Diamante	Brillante	Blanco	VS1	1.0	Sudáfrica	Certificado_URL	5000.0
2	Diamante	Brillante	Blanco	VS1	1.0	Sudáfrica	Certificado_URL	5000.0
3	Rubí	Oval	Rojo	VVS1	1.5	Birmania	Certificado_URL	3000.0
4	Perla	Redonda	Blanco	AAA	1.0	Japón	Certificado_URL	2000.0
5	Diamante	Brillante	Blanco	VS1	1.0	Sudáfrica	Certificado_URL	5000.0
6	Rubí	Oval	Rojo	VVS1	1.5	Birmania	Certificado_URL	3000.0
7	Perla	Redonda	Blanco	AAA	1.0	Japón	Certificado_URL	2000.0
8	Diamante	Brillante	Blanco	VS1	1.0	Sudáfrica	Certificado_URL	5000.0
9	Rubí	Oval	Rojo	VVS1	1.5	Birmania	Certificado_URL	3000.0
10	Perla	Redonda	Blanco	AAA	1.0	Japón	Certificado_URL	2000.0
11	Diamante	Brillante	Blanco	VS1	1.0	Sudáfrica	Certificado_URL	5000.0
12	Rubí	Oval	Rojo	VVS1	1.5	Birmania	Certificado_URL	3000.0
13	Perla	Redonda	Blanco	AAA	1.0	Japón	Certificado_URL	2000.0
14	Diamante	Brillante	Blanco	VS1	1.0	Sudáfrica	Certificado_URL	5000.0
15	Rubí	Oval	Rojo	VVS1	1.5	Birmania	Certificado_URL	3000.0
16	Perla	Redonda	Blanco	AAA	1.0	Japón	Certificado_URL	2000.0
17	Diamante	Brillante	Blanco	VS1	1.0	Sudáfrica	Certificado_URL	5000.0
18	Rubí	Oval	Rojo	VVS1	1.5	Birmania	Certificado_URL	3000.0
19	Perla	Redonda	Blanco	AAA	1.0	Japón	Certificado_URL	2000.0
\.


--
-- TOC entry 4926 (class 0 OID 33557)
-- Dependencies: 228
-- Data for Name: informes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.informes (tipo_informe, contenido_informe) FROM stdin;
Informe de ventas 2023	Contenido del informe de ventas
Informe de producción 2023	Contenido del informe de producción
\.


--
-- TOC entry 4927 (class 0 OID 33562)
-- Dependencies: 229
-- Data for Name: marketing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marketing (campania, presencia_redes_sociales) FROM stdin;
1	Facebook, Instagram, Twitter
2	Facebook, Instagram, Twitter
3	Facebook, Instagram, Twitter
4	Facebook, Instagram, Twitter
\.


--
-- TOC entry 4929 (class 0 OID 33568)
-- Dependencies: 231
-- Data for Name: metales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.metales (codigo_metal, tipo, pureza, peso_stock, precio_gramo) FROM stdin;
1	Oro	24	1000	50.0
2	Oro	24	1000	50.0
3	Plata	22	5000	0.80
4	Platino	20	300	30.0
5	Oro	24	1000	50.0
6	Plata	22	5000	0.80
7	Platino	20	300	30.0
8	Oro	24	1000	50.0
9	Plata	22	5000	0.80
10	Platino	20	300	30.0
11	Oro	24	1000	50.0
12	Plata	22	5000	0.80
13	Platino	20	300	30.0
14	Oro	24	1000	50.0
15	Plata	22	5000	0.80
16	Platino	20	300	30.0
17	Oro	24	1000	50.0
18	Plata	22	5000	0.80
19	Platino	20	300	30.0
\.


--
-- TOC entry 4931 (class 0 OID 33574)
-- Dependencies: 233
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedidos (numero_pedido, cliente, tipo_pedido, diseno_solicitado, materiales_utilizados, fecha_pedido, fecha_entrega, estado_pedido) FROM stdin;
3	2	Catálogo	2	Plata, Perla	2023-03-02	2023-03-12	En producción
5	2	Catálogo	2	Plata, Perla	2023-03-02	2023-03-12	En producción
7	2	Catálogo	2	Plata, Perla	2023-03-02	2023-03-12	En producción
9	2	Catálogo	2	Plata, Perla	2023-03-02	2023-03-12	En producción
11	2	Catálogo	2	Plata, Perla	2023-03-02	2023-03-12	En producción
13	2	Catálogo	2	Plata, Perla	2023-03-02	2023-03-12	En producción
\.


--
-- TOC entry 4933 (class 0 OID 33580)
-- Dependencies: 235
-- Data for Name: produccion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produccion (orden_produccion, pedido, diseno, materiales_utilizados, fecha_inicio, fecha_fin, operarios_asignados, etapas_produccion) FROM stdin;
\.


--
-- TOC entry 4935 (class 0 OID 33586)
-- Dependencies: 237
-- Data for Name: proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedores (numero_proveedor, nombre_razon_social, tipo_materiales, informacion_contacto, certificaciones) FROM stdin;
1	Proveedor 1	Metales	contacto@proveedor1.com	Certificación 1
2	Proveedor 1	Metales	contacto@proveedor1.com	Certificación 1
3	Proveedor 2	Gemas	contacto@proveedor2.com	Certificación 2
4	Proveedor 1	Metales	contacto@proveedor1.com	Certificación 1
5	Proveedor 2	Gemas	contacto@proveedor2.com	Certificación 2
6	Proveedor 1	Metales	contacto@proveedor1.com	Certificación 1
7	Proveedor 2	Gemas	contacto@proveedor2.com	Certificación 2
8	Proveedor 1	Metales	contacto@proveedor1.com	Certificación 1
9	Proveedor 2	Gemas	contacto@proveedor2.com	Certificación 2
10	Proveedor 1	Metales	contacto@proveedor1.com	Certificación 1
11	Proveedor 2	Gemas	contacto@proveedor2.com	Certificación 2
12	Proveedor 1	Metales	contacto@proveedor1.com	Certificación 1
13	Proveedor 2	Gemas	contacto@proveedor2.com	Certificación 2
\.


--
-- TOC entry 4937 (class 0 OID 33592)
-- Dependencies: 239
-- Data for Name: tasaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tasaciones (joya, fecha_tasacion, tasador, valor_joya, criterios_tasacion) FROM stdin;
1	2023-03-06	Tasador 1	1000.0	Valor del metal, Valor de las gemas, Mano de obra
2	2023-03-07	Tasador 2	1200.0	Valor del metal, Valor de las gemas, Mano de obra
\.


--
-- TOC entry 4938 (class 0 OID 33597)
-- Dependencies: 240
-- Data for Name: transacciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transacciones (id_transaccion, fecha, tipo_transaccion, importe, estado_transaccion, descripcion) FROM stdin;
1	2023-03-07	Pago	1200.0	Completo	Pago del pedido 1
2	2023-03-08	Pago	1200.0	Completo	Pago del pedido 1
3	2023-03-09	Pago	1500.0	Completo	Pago del pedido 2
4	2023-03-08	Pago	1200.0	Completo	Pago del pedido 1
5	2023-03-09	Pago	1500.0	Completo	Pago del pedido 2
6	2023-03-08	Pago	1200.0	Completo	Pago del pedido 1
7	2023-03-09	Pago	1500.0	Completo	Pago del pedido 2
8	2023-03-08	Pago	1200.0	Completo	Pago del pedido 1
9	2023-03-09	Pago	1500.0	Completo	Pago del pedido 2
\.


--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 218
-- Name: clientes_numero_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_numero_cliente_seq', 19, true);


--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 220
-- Name: comunicacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comunicacion_id_seq', 8, true);


--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 224
-- Name: disenos_codigo_diseno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.disenos_codigo_diseno_seq', 19, true);


--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 227
-- Name: gemas_codigo_gema_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gemas_codigo_gema_seq', 19, true);


--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 230
-- Name: marketing_campania_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marketing_campania_seq', 4, true);


--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 232
-- Name: metales_codigo_metal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.metales_codigo_metal_seq', 19, true);


--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 234
-- Name: pedidos_numero_pedido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedidos_numero_pedido_seq', 13, true);


--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 236
-- Name: produccion_orden_produccion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produccion_orden_produccion_seq', 13, true);


--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 238
-- Name: proveedores_numero_proveedor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proveedores_numero_proveedor_seq', 13, true);


--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 241
-- Name: transacciones_id_transaccion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transacciones_id_transaccion_seq', 9, true);


--
-- TOC entry 4722 (class 2606 OID 33618)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (numero_cliente);


--
-- TOC entry 4725 (class 2606 OID 33757)
-- Name: comunicacion comunicacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comunicacion
    ADD CONSTRAINT comunicacion_pkey PRIMARY KEY (id);


--
-- TOC entry 4727 (class 2606 OID 33622)
-- Name: diseno_gema diseno_gema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseno_gema
    ADD CONSTRAINT diseno_gema_pkey PRIMARY KEY (diseno_id, gema_id);


--
-- TOC entry 4729 (class 2606 OID 33624)
-- Name: diseno_metal diseno_metal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseno_metal
    ADD CONSTRAINT diseno_metal_pkey PRIMARY KEY (diseno_id, metal_id);


--
-- TOC entry 4731 (class 2606 OID 33626)
-- Name: disenos disenos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disenos
    ADD CONSTRAINT disenos_pkey PRIMARY KEY (codigo_diseno);


--
-- TOC entry 4733 (class 2606 OID 33628)
-- Name: facturacion facturacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturacion
    ADD CONSTRAINT facturacion_pkey PRIMARY KEY (pedido_tasacion, fecha_factura);


--
-- TOC entry 4735 (class 2606 OID 33630)
-- Name: gemas gemas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gemas
    ADD CONSTRAINT gemas_pkey PRIMARY KEY (codigo_gema);


--
-- TOC entry 4737 (class 2606 OID 33759)
-- Name: informes informes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.informes
    ADD CONSTRAINT informes_pkey PRIMARY KEY (tipo_informe);


--
-- TOC entry 4739 (class 2606 OID 33761)
-- Name: marketing marketing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marketing
    ADD CONSTRAINT marketing_pkey PRIMARY KEY (campania);


--
-- TOC entry 4741 (class 2606 OID 33636)
-- Name: metales metales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metales
    ADD CONSTRAINT metales_pkey PRIMARY KEY (codigo_metal);


--
-- TOC entry 4744 (class 2606 OID 33638)
-- Name: pedidos pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (numero_pedido);


--
-- TOC entry 4746 (class 2606 OID 33640)
-- Name: produccion produccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT produccion_pkey PRIMARY KEY (orden_produccion);


--
-- TOC entry 4748 (class 2606 OID 33763)
-- Name: proveedores proveedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (numero_proveedor);


--
-- TOC entry 4750 (class 2606 OID 33765)
-- Name: tasaciones tasaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasaciones
    ADD CONSTRAINT tasaciones_pkey PRIMARY KEY (joya, fecha_tasacion);


--
-- TOC entry 4752 (class 2606 OID 33767)
-- Name: transacciones transacciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacciones
    ADD CONSTRAINT transacciones_pkey PRIMARY KEY (id_transaccion);


--
-- TOC entry 4723 (class 1259 OID 33647)
-- Name: idx_cliente_nombre; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_cliente_nombre ON public.clientes USING btree (nombre_razon_social);


--
-- TOC entry 4742 (class 1259 OID 33648)
-- Name: idx_pedido_fecha; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_pedido_fecha ON public.pedidos USING btree (fecha_pedido);


--
-- TOC entry 4753 (class 2606 OID 33649)
-- Name: diseno_gema diseno_gema_diseno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseno_gema
    ADD CONSTRAINT diseno_gema_diseno_id_fkey FOREIGN KEY (diseno_id) REFERENCES public.disenos(codigo_diseno);


--
-- TOC entry 4754 (class 2606 OID 33654)
-- Name: diseno_gema diseno_gema_gema_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseno_gema
    ADD CONSTRAINT diseno_gema_gema_id_fkey FOREIGN KEY (gema_id) REFERENCES public.gemas(codigo_gema);


--
-- TOC entry 4755 (class 2606 OID 33659)
-- Name: diseno_metal diseno_metal_diseno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseno_metal
    ADD CONSTRAINT diseno_metal_diseno_id_fkey FOREIGN KEY (diseno_id) REFERENCES public.disenos(codigo_diseno);


--
-- TOC entry 4756 (class 2606 OID 33664)
-- Name: diseno_metal diseno_metal_metal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseno_metal
    ADD CONSTRAINT diseno_metal_metal_id_fkey FOREIGN KEY (metal_id) REFERENCES public.metales(codigo_metal);


--
-- TOC entry 4759 (class 2606 OID 33669)
-- Name: facturacion facturacion_pedido_tasacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturacion
    ADD CONSTRAINT facturacion_pedido_tasacion_fkey FOREIGN KEY (pedido_tasacion) REFERENCES public.pedidos(numero_pedido);


--
-- TOC entry 4760 (class 2606 OID 33674)
-- Name: pedidos fk_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_cliente FOREIGN KEY (cliente) REFERENCES public.clientes(numero_cliente);


--
-- TOC entry 4764 (class 2606 OID 33679)
-- Name: produccion fk_diseno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT fk_diseno FOREIGN KEY (diseno) REFERENCES public.disenos(codigo_diseno);


--
-- TOC entry 4757 (class 2606 OID 33684)
-- Name: diseno_metal fk_diseno_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseno_metal
    ADD CONSTRAINT fk_diseno_id FOREIGN KEY (diseno_id) REFERENCES public.disenos(codigo_diseno);


--
-- TOC entry 4761 (class 2606 OID 33689)
-- Name: pedidos fk_diseno_solicitado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_diseno_solicitado FOREIGN KEY (diseno_solicitado) REFERENCES public.disenos(codigo_diseno);


--
-- TOC entry 4758 (class 2606 OID 33694)
-- Name: diseno_metal fk_metal_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseno_metal
    ADD CONSTRAINT fk_metal_id FOREIGN KEY (metal_id) REFERENCES public.metales(codigo_metal);


--
-- TOC entry 4765 (class 2606 OID 33699)
-- Name: produccion fk_pedido; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT fk_pedido FOREIGN KEY (pedido) REFERENCES public.pedidos(numero_pedido);


--
-- TOC entry 4762 (class 2606 OID 33704)
-- Name: pedidos pedidos_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_cliente_fkey FOREIGN KEY (cliente) REFERENCES public.clientes(numero_cliente);


--
-- TOC entry 4763 (class 2606 OID 33709)
-- Name: pedidos pedidos_diseno_solicitado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_diseno_solicitado_fkey FOREIGN KEY (diseno_solicitado) REFERENCES public.disenos(codigo_diseno);


--
-- TOC entry 4766 (class 2606 OID 33714)
-- Name: produccion produccion_diseno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT produccion_diseno_fkey FOREIGN KEY (diseno) REFERENCES public.disenos(codigo_diseno);


--
-- TOC entry 4767 (class 2606 OID 33719)
-- Name: produccion produccion_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT produccion_pedido_fkey FOREIGN KEY (pedido) REFERENCES public.pedidos(numero_pedido);


--
-- TOC entry 4768 (class 2606 OID 33724)
-- Name: tasaciones tasaciones_joya_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasaciones
    ADD CONSTRAINT tasaciones_joya_fkey FOREIGN KEY (joya) REFERENCES public.disenos(codigo_diseno);


--
-- TOC entry 4940 (class 0 OID 33603)
-- Dependencies: 242 4942
-- Name: vista_pedidos_resumen; Type: MATERIALIZED VIEW DATA; Schema: public; Owner: postgres
--

REFRESH MATERIALIZED VIEW public.vista_pedidos_resumen;


-- Completed on 2025-03-11 23:31:58

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-03-11 23:31:58

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

--
-- TOC entry 865 (class 1247 OID 24787)
-- Name: calidad_nube; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.calidad_nube AS ENUM (
    'Alta',
    'Media',
    'Baja'
);


ALTER TYPE public.calidad_nube OWNER TO postgres;

--
-- TOC entry 871 (class 1247 OID 24822)
-- Name: control_calidad_estado; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.control_calidad_estado AS ENUM (
    'Aprobado',
    'No Aprobado',
    'En Revisión'
);


ALTER TYPE public.control_calidad_estado OWNER TO postgres;

--
-- TOC entry 874 (class 1247 OID 24830)
-- Name: gestion_residuo_estado; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.gestion_residuo_estado AS ENUM (
    'Sin Residuos',
    'Residuos Gestionados',
    'Residuos Pendientes'
);


ALTER TYPE public.gestion_residuo_estado OWNER TO postgres;

--
-- TOC entry 868 (class 1247 OID 24815)
-- Name: planificacion_estado; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.planificacion_estado AS ENUM (
    'Pendiente',
    'En Proceso',
    'Finalizado'
);


ALTER TYPE public.planificacion_estado OWNER TO postgres;

--
-- TOC entry 877 (class 1247 OID 24838)
-- Name: produccion_estado; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.produccion_estado AS ENUM (
    'En Proceso',
    'Finalizado',
    'Pendiente'
);


ALTER TYPE public.produccion_estado OWNER TO postgres;

--
-- TOC entry 247 (class 1255 OID 24784)
-- Name: actualizar_puntos_y_nivel(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.actualizar_puntos_y_nivel() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    puntos_actuales INT;
    nuevo_nivel INT;
BEGIN
    -- Obtener los puntos actuales del cliente
    SELECT puntos INTO puntos_actuales FROM Fidelizacion WHERE cliente_id = NEW.cliente_id;

    -- Actualizar los puntos
    UPDATE Fidelizacion
    SET puntos = puntos_actuales + 2
    WHERE cliente_id = NEW.cliente_id;

    -- Calcular el nuevo nivel basado en los puntos
    IF puntos_actuales + 2 < 20 THEN
        nuevo_nivel := 1;
    ELSIF puntos_actuales + 2 < 40 THEN
        nuevo_nivel := 2;
    ELSIF puntos_actuales + 2 < 60 THEN
        nuevo_nivel := 3;
    ELSIF puntos_actuales + 2 < 80 THEN
        nuevo_nivel := 4;
    ELSE
        nuevo_nivel := 5;
    END IF;

    -- Actualizar el nivel
    UPDATE Fidelizacion
    SET nivel = nuevo_nivel
    WHERE cliente_id = NEW.cliente_id;

    RETURN NEW;
END;
$$;


ALTER FUNCTION public.actualizar_puntos_y_nivel() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 33085)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    numero_cliente integer NOT NULL,
    nombre_razon_social character varying(100),
    informacion_contacto text,
    historial_compras text,
    preferencias_diseno text
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 33084)
-- Name: clientes_numero_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_numero_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientes_numero_cliente_seq OWNER TO postgres;

--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 219
-- Name: clientes_numero_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_numero_cliente_seq OWNED BY public.clientes.numero_cliente;


--
-- TOC entry 235 (class 1259 OID 33200)
-- Name: diseno_gema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.diseno_gema (
    diseno_id integer NOT NULL,
    gema_id integer NOT NULL
);


ALTER TABLE public.diseno_gema OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 33185)
-- Name: diseno_metal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.diseno_metal (
    diseno_id integer NOT NULL,
    metal_id integer NOT NULL
);


ALTER TABLE public.diseno_metal OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 33095)
-- Name: disenos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.disenos (
    codigo_diseno integer NOT NULL,
    descripcion text,
    tipo_joya character varying(50),
    metal_principal character varying(50),
    gemas_utilizadas text,
    dimensiones character varying(50),
    peso_estimado numeric,
    bocetos text,
    renders_3d text,
    planos_tecnicos text,
    estado_diseno character varying(50)
);


ALTER TABLE public.disenos OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 33094)
-- Name: disenos_codigo_diseno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.disenos_codigo_diseno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.disenos_codigo_diseno_seq OWNER TO postgres;

--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 221
-- Name: disenos_codigo_diseno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.disenos_codigo_diseno_seq OWNED BY public.disenos.codigo_diseno;


--
-- TOC entry 233 (class 1259 OID 33172)
-- Name: facturacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facturacion (
    pedido_tasacion integer NOT NULL,
    fecha_factura date NOT NULL,
    importe numeric,
    estado_factura character varying(50)
);


ALTER TABLE public.facturacion OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 33117)
-- Name: gemas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gemas (
    codigo_gema integer NOT NULL,
    tipo character varying(50),
    talla character varying(50),
    color character varying(50),
    claridad character varying(50),
    quilates numeric,
    origen character varying(50),
    certificado_autenticidad text,
    precio_unitario numeric
);


ALTER TABLE public.gemas OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 33116)
-- Name: gemas_codigo_gema_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gemas_codigo_gema_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gemas_codigo_gema_seq OWNER TO postgres;

--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 225
-- Name: gemas_codigo_gema_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gemas_codigo_gema_seq OWNED BY public.gemas.codigo_gema;


--
-- TOC entry 224 (class 1259 OID 33108)
-- Name: metales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.metales (
    codigo_metal integer NOT NULL,
    tipo character varying(50),
    pureza numeric,
    peso_stock numeric,
    precio_gramo numeric
);


ALTER TABLE public.metales OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 33107)
-- Name: metales_codigo_metal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.metales_codigo_metal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.metales_codigo_metal_seq OWNER TO postgres;

--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 223
-- Name: metales_codigo_metal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.metales_codigo_metal_seq OWNED BY public.metales.codigo_metal;


--
-- TOC entry 230 (class 1259 OID 33135)
-- Name: pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedidos (
    numero_pedido integer NOT NULL,
    cliente integer,
    tipo_pedido character varying(50),
    diseno_solicitado integer,
    materiales_utilizados text,
    fecha_pedido date,
    fecha_entrega date,
    estado_pedido character varying(50)
);


ALTER TABLE public.pedidos OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 33134)
-- Name: pedidos_numero_pedido_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedidos_numero_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pedidos_numero_pedido_seq OWNER TO postgres;

--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 229
-- Name: pedidos_numero_pedido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedidos_numero_pedido_seq OWNED BY public.pedidos.numero_pedido;


--
-- TOC entry 232 (class 1259 OID 33154)
-- Name: produccion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produccion (
    orden_produccion integer NOT NULL,
    pedido integer,
    diseno integer,
    materiales_utilizados text,
    fecha_inicio date,
    fecha_fin date,
    operarios_asignados text,
    etapas_produccion text
);


ALTER TABLE public.produccion OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 33153)
-- Name: produccion_orden_produccion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produccion_orden_produccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produccion_orden_produccion_seq OWNER TO postgres;

--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 231
-- Name: produccion_orden_produccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produccion_orden_produccion_seq OWNED BY public.produccion.orden_produccion;


--
-- TOC entry 228 (class 1259 OID 33126)
-- Name: proveedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedores (
    numero_proveedor integer NOT NULL,
    nombre_razon_social character varying(100),
    tipo_materiales character varying(50),
    informacion_contacto text,
    certificaciones text
);


ALTER TABLE public.proveedores OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 33125)
-- Name: proveedores_numero_proveedor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proveedores_numero_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proveedores_numero_proveedor_seq OWNER TO postgres;

--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 227
-- Name: proveedores_numero_proveedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proveedores_numero_proveedor_seq OWNED BY public.proveedores.numero_proveedor;


--
-- TOC entry 218 (class 1259 OID 33076)
-- Name: transacciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transacciones (
    id_transaccion integer NOT NULL,
    fecha date,
    tipo_transaccion character varying(50),
    importe numeric,
    estado_transaccion character varying(50),
    descripcion text
);


ALTER TABLE public.transacciones OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 33075)
-- Name: transacciones_id_transaccion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transacciones_id_transaccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transacciones_id_transaccion_seq OWNER TO postgres;

--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 217
-- Name: transacciones_id_transaccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transacciones_id_transaccion_seq OWNED BY public.transacciones.id_transaccion;


--
-- TOC entry 4705 (class 2604 OID 33088)
-- Name: clientes numero_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN numero_cliente SET DEFAULT nextval('public.clientes_numero_cliente_seq'::regclass);


--
-- TOC entry 4706 (class 2604 OID 33098)
-- Name: disenos codigo_diseno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disenos ALTER COLUMN codigo_diseno SET DEFAULT nextval('public.disenos_codigo_diseno_seq'::regclass);


--
-- TOC entry 4708 (class 2604 OID 33120)
-- Name: gemas codigo_gema; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gemas ALTER COLUMN codigo_gema SET DEFAULT nextval('public.gemas_codigo_gema_seq'::regclass);


--
-- TOC entry 4707 (class 2604 OID 33111)
-- Name: metales codigo_metal; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metales ALTER COLUMN codigo_metal SET DEFAULT nextval('public.metales_codigo_metal_seq'::regclass);


--
-- TOC entry 4710 (class 2604 OID 33138)
-- Name: pedidos numero_pedido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos ALTER COLUMN numero_pedido SET DEFAULT nextval('public.pedidos_numero_pedido_seq'::regclass);


--
-- TOC entry 4711 (class 2604 OID 33157)
-- Name: produccion orden_produccion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produccion ALTER COLUMN orden_produccion SET DEFAULT nextval('public.produccion_orden_produccion_seq'::regclass);


--
-- TOC entry 4709 (class 2604 OID 33129)
-- Name: proveedores numero_proveedor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedores ALTER COLUMN numero_proveedor SET DEFAULT nextval('public.proveedores_numero_proveedor_seq'::regclass);


--
-- TOC entry 4704 (class 2604 OID 33079)
-- Name: transacciones id_transaccion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacciones ALTER COLUMN id_transaccion SET DEFAULT nextval('public.transacciones_id_transaccion_seq'::regclass);


--
-- TOC entry 4891 (class 0 OID 33085)
-- Dependencies: 220
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (numero_cliente, nombre_razon_social, informacion_contacto, historial_compras, preferencias_diseno) FROM stdin;
\.


--
-- TOC entry 4906 (class 0 OID 33200)
-- Dependencies: 235
-- Data for Name: diseno_gema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.diseno_gema (diseno_id, gema_id) FROM stdin;
\.


--
-- TOC entry 4905 (class 0 OID 33185)
-- Dependencies: 234
-- Data for Name: diseno_metal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.diseno_metal (diseno_id, metal_id) FROM stdin;
\.


--
-- TOC entry 4893 (class 0 OID 33095)
-- Dependencies: 222
-- Data for Name: disenos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.disenos (codigo_diseno, descripcion, tipo_joya, metal_principal, gemas_utilizadas, dimensiones, peso_estimado, bocetos, renders_3d, planos_tecnicos, estado_diseno) FROM stdin;
\.


--
-- TOC entry 4904 (class 0 OID 33172)
-- Dependencies: 233
-- Data for Name: facturacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facturacion (pedido_tasacion, fecha_factura, importe, estado_factura) FROM stdin;
\.


--
-- TOC entry 4897 (class 0 OID 33117)
-- Dependencies: 226
-- Data for Name: gemas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gemas (codigo_gema, tipo, talla, color, claridad, quilates, origen, certificado_autenticidad, precio_unitario) FROM stdin;
\.


--
-- TOC entry 4895 (class 0 OID 33108)
-- Dependencies: 224
-- Data for Name: metales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.metales (codigo_metal, tipo, pureza, peso_stock, precio_gramo) FROM stdin;
\.


--
-- TOC entry 4901 (class 0 OID 33135)
-- Dependencies: 230
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedidos (numero_pedido, cliente, tipo_pedido, diseno_solicitado, materiales_utilizados, fecha_pedido, fecha_entrega, estado_pedido) FROM stdin;
\.


--
-- TOC entry 4903 (class 0 OID 33154)
-- Dependencies: 232
-- Data for Name: produccion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produccion (orden_produccion, pedido, diseno, materiales_utilizados, fecha_inicio, fecha_fin, operarios_asignados, etapas_produccion) FROM stdin;
\.


--
-- TOC entry 4899 (class 0 OID 33126)
-- Dependencies: 228
-- Data for Name: proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedores (numero_proveedor, nombre_razon_social, tipo_materiales, informacion_contacto, certificaciones) FROM stdin;
\.


--
-- TOC entry 4889 (class 0 OID 33076)
-- Dependencies: 218
-- Data for Name: transacciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transacciones (id_transaccion, fecha, tipo_transaccion, importe, estado_transaccion, descripcion) FROM stdin;
\.


--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 219
-- Name: clientes_numero_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_numero_cliente_seq', 1, false);


--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 221
-- Name: disenos_codigo_diseno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.disenos_codigo_diseno_seq', 1, false);


--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 225
-- Name: gemas_codigo_gema_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gemas_codigo_gema_seq', 1, false);


--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 223
-- Name: metales_codigo_metal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.metales_codigo_metal_seq', 1, false);


--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 229
-- Name: pedidos_numero_pedido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedidos_numero_pedido_seq', 1, false);


--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 231
-- Name: produccion_orden_produccion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produccion_orden_produccion_seq', 1, false);


--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 227
-- Name: proveedores_numero_proveedor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proveedores_numero_proveedor_seq', 1, false);


--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 217
-- Name: transacciones_id_transaccion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transacciones_id_transaccion_seq', 1, false);


--
-- TOC entry 4715 (class 2606 OID 33092)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (numero_cliente);


--
-- TOC entry 4733 (class 2606 OID 33204)
-- Name: diseno_gema diseno_gema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseno_gema
    ADD CONSTRAINT diseno_gema_pkey PRIMARY KEY (diseno_id, gema_id);


--
-- TOC entry 4731 (class 2606 OID 33189)
-- Name: diseno_metal diseno_metal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseno_metal
    ADD CONSTRAINT diseno_metal_pkey PRIMARY KEY (diseno_id, metal_id);


--
-- TOC entry 4717 (class 2606 OID 33102)
-- Name: disenos disenos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disenos
    ADD CONSTRAINT disenos_pkey PRIMARY KEY (codigo_diseno);


--
-- TOC entry 4729 (class 2606 OID 33178)
-- Name: facturacion facturacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturacion
    ADD CONSTRAINT facturacion_pkey PRIMARY KEY (pedido_tasacion, fecha_factura);


--
-- TOC entry 4721 (class 2606 OID 33124)
-- Name: gemas gemas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gemas
    ADD CONSTRAINT gemas_pkey PRIMARY KEY (codigo_gema);


--
-- TOC entry 4719 (class 2606 OID 33115)
-- Name: metales metales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metales
    ADD CONSTRAINT metales_pkey PRIMARY KEY (codigo_metal);


--
-- TOC entry 4725 (class 2606 OID 33142)
-- Name: pedidos pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (numero_pedido);


--
-- TOC entry 4727 (class 2606 OID 33161)
-- Name: produccion produccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT produccion_pkey PRIMARY KEY (orden_produccion);


--
-- TOC entry 4723 (class 2606 OID 33133)
-- Name: proveedores proveedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (numero_proveedor);


--
-- TOC entry 4713 (class 2606 OID 33083)
-- Name: transacciones transacciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transacciones
    ADD CONSTRAINT transacciones_pkey PRIMARY KEY (id_transaccion);


--
-- TOC entry 4741 (class 2606 OID 33205)
-- Name: diseno_gema diseno_gema_diseno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseno_gema
    ADD CONSTRAINT diseno_gema_diseno_id_fkey FOREIGN KEY (diseno_id) REFERENCES public.disenos(codigo_diseno);


--
-- TOC entry 4742 (class 2606 OID 33210)
-- Name: diseno_gema diseno_gema_gema_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseno_gema
    ADD CONSTRAINT diseno_gema_gema_id_fkey FOREIGN KEY (gema_id) REFERENCES public.gemas(codigo_gema);


--
-- TOC entry 4739 (class 2606 OID 33190)
-- Name: diseno_metal diseno_metal_diseno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseno_metal
    ADD CONSTRAINT diseno_metal_diseno_id_fkey FOREIGN KEY (diseno_id) REFERENCES public.disenos(codigo_diseno);


--
-- TOC entry 4740 (class 2606 OID 33195)
-- Name: diseno_metal diseno_metal_metal_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseno_metal
    ADD CONSTRAINT diseno_metal_metal_id_fkey FOREIGN KEY (metal_id) REFERENCES public.metales(codigo_metal);


--
-- TOC entry 4738 (class 2606 OID 33179)
-- Name: facturacion facturacion_pedido_tasacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturacion
    ADD CONSTRAINT facturacion_pedido_tasacion_fkey FOREIGN KEY (pedido_tasacion) REFERENCES public.pedidos(numero_pedido);


--
-- TOC entry 4734 (class 2606 OID 33143)
-- Name: pedidos pedidos_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_cliente_fkey FOREIGN KEY (cliente) REFERENCES public.clientes(numero_cliente);


--
-- TOC entry 4735 (class 2606 OID 33148)
-- Name: pedidos pedidos_diseno_solicitado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_diseno_solicitado_fkey FOREIGN KEY (diseno_solicitado) REFERENCES public.disenos(codigo_diseno);


--
-- TOC entry 4736 (class 2606 OID 33167)
-- Name: produccion produccion_diseno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT produccion_diseno_fkey FOREIGN KEY (diseno) REFERENCES public.disenos(codigo_diseno);


--
-- TOC entry 4737 (class 2606 OID 33162)
-- Name: produccion produccion_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produccion
    ADD CONSTRAINT produccion_pedido_fkey FOREIGN KEY (pedido) REFERENCES public.pedidos(numero_pedido);


-- Completed on 2025-03-11 23:31:59

--
-- PostgreSQL database dump complete
--

-- Completed on 2025-03-11 23:31:59

--
-- PostgreSQL database cluster dump complete
--

