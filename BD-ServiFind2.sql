--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.0

-- Started on 2024-05-24 11:47:22

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
-- TOC entry 215 (class 1259 OID 16445)
-- Name: Categorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Categorias" (
    id integer NOT NULL,
    nombre character varying(150)
);


ALTER TABLE public."Categorias" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16448)
-- Name: Categorias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Categorias_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Categorias_id_seq" OWNER TO postgres;

--
-- TOC entry 4881 (class 0 OID 0)
-- Dependencies: 216
-- Name: Categorias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Categorias_id_seq" OWNED BY public."Categorias".id;


--
-- TOC entry 233 (class 1259 OID 16531)
-- Name: Favoritos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Favoritos" (
    id integer NOT NULL,
    "idUsuario" integer NOT NULL,
    "idOfrecido" integer NOT NULL
);


ALTER TABLE public."Favoritos" OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16534)
-- Name: Favoritos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Favoritos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Favoritos_id_seq" OWNER TO postgres;

--
-- TOC entry 4882 (class 0 OID 0)
-- Dependencies: 234
-- Name: Favoritos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Favoritos_id_seq" OWNED BY public."Favoritos".id;


--
-- TOC entry 232 (class 1259 OID 16525)
-- Name: FotosOfrecidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FotosOfrecidos" (
    id integer NOT NULL,
    "idOfrecido" integer NOT NULL,
    foto character varying(250)
);


ALTER TABLE public."FotosOfrecidos" OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16524)
-- Name: FotosOfrecidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FotosOfrecidos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."FotosOfrecidos_id_seq" OWNER TO postgres;

--
-- TOC entry 4883 (class 0 OID 0)
-- Dependencies: 231
-- Name: FotosOfrecidos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FotosOfrecidos_id_seq" OWNED BY public."FotosOfrecidos".id;


--
-- TOC entry 230 (class 1259 OID 16518)
-- Name: Generos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Generos" (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public."Generos" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16517)
-- Name: Generos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Generos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Generos_id_seq" OWNER TO postgres;

--
-- TOC entry 4884 (class 0 OID 0)
-- Dependencies: 229
-- Name: Generos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Generos_id_seq" OWNED BY public."Generos".id;


--
-- TOC entry 217 (class 1259 OID 16449)
-- Name: Historial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Historial" (
    id integer NOT NULL,
    "idProveedor" integer NOT NULL,
    "idContratador" integer,
    fecha date,
    realizado boolean,
    "calificacionProveedor" integer,
    "resenaProveedor" character varying(150),
    "calificacionContratador" integer,
    "resenaContratador" character varying(150)
);


ALTER TABLE public."Historial" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16452)
-- Name: Historial_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Historial_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Historial_id_seq" OWNER TO postgres;

--
-- TOC entry 4885 (class 0 OID 0)
-- Dependencies: 218
-- Name: Historial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Historial_id_seq" OWNED BY public."Historial".id;


--
-- TOC entry 236 (class 1259 OID 16542)
-- Name: Likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Likes" (
    id integer NOT NULL,
    "idUsuario" integer,
    "idOfrecido" integer NOT NULL
);


ALTER TABLE public."Likes" OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16541)
-- Name: Likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Likes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Likes_id_seq" OWNER TO postgres;

--
-- TOC entry 4886 (class 0 OID 0)
-- Dependencies: 235
-- Name: Likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Likes_id_seq" OWNED BY public."Likes".id;


--
-- TOC entry 219 (class 1259 OID 16453)
-- Name: Ofrecidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ofrecidos" (
    id integer NOT NULL,
    idusuario integer,
    descripcion character varying(1000),
    idcategoria integer,
    tags character varying(250)
);


ALTER TABLE public."Ofrecidos" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16458)
-- Name: Ofrecidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Ofrecidos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Ofrecidos_id_seq" OWNER TO postgres;

--
-- TOC entry 4887 (class 0 OID 0)
-- Dependencies: 220
-- Name: Ofrecidos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ofrecidos_id_seq" OWNED BY public."Ofrecidos".id;


--
-- TOC entry 221 (class 1259 OID 16459)
-- Name: Usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuarios" (
    id integer NOT NULL,
    email character varying(50) NOT NULL,
    nombre character varying(30) NOT NULL,
    apellido character varying(30) NOT NULL,
    direccion character varying(50),
    contrasena character varying(15) NOT NULL,
    "idGenero" integer,
    foto character varying(250),
    "FechaNacimiento" date
);


ALTER TABLE public."Usuarios" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16462)
-- Name: Usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Usuarios_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Usuarios_id_seq" OWNER TO postgres;

--
-- TOC entry 4888 (class 0 OID 0)
-- Dependencies: 222
-- Name: Usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Usuarios_id_seq" OWNED BY public."Usuarios".id;


--
-- TOC entry 223 (class 1259 OID 16463)
-- Name: ZonaOfrecidos ; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ZonaOfrecidos " (
    id integer NOT NULL,
    "idUsuario" integer NOT NULL,
    "idZona" integer NOT NULL
);


ALTER TABLE public."ZonaOfrecidos " OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16466)
-- Name: ZonaTrabajador_idTrabajador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ZonaTrabajador_idTrabajador_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ZonaTrabajador_idTrabajador_seq" OWNER TO postgres;

--
-- TOC entry 4889 (class 0 OID 0)
-- Dependencies: 224
-- Name: ZonaTrabajador_idTrabajador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ZonaTrabajador_idTrabajador_seq" OWNED BY public."ZonaOfrecidos "."idUsuario";


--
-- TOC entry 225 (class 1259 OID 16467)
-- Name: ZonaTrabajador_idZona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ZonaTrabajador_idZona_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ZonaTrabajador_idZona_seq" OWNER TO postgres;

--
-- TOC entry 4890 (class 0 OID 0)
-- Dependencies: 225
-- Name: ZonaTrabajador_idZona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ZonaTrabajador_idZona_seq" OWNED BY public."ZonaOfrecidos "."idZona";


--
-- TOC entry 226 (class 1259 OID 16468)
-- Name: ZonaTrabajador_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ZonaTrabajador_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ZonaTrabajador_id_seq" OWNER TO postgres;

--
-- TOC entry 4891 (class 0 OID 0)
-- Dependencies: 226
-- Name: ZonaTrabajador_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ZonaTrabajador_id_seq" OWNED BY public."ZonaOfrecidos ".id;


--
-- TOC entry 227 (class 1259 OID 16469)
-- Name: Zonas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Zonas" (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public."Zonas" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16472)
-- Name: Zonas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Zonas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Zonas_id_seq" OWNER TO postgres;

--
-- TOC entry 4892 (class 0 OID 0)
-- Dependencies: 228
-- Name: Zonas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Zonas_id_seq" OWNED BY public."Zonas".id;


--
-- TOC entry 4672 (class 2604 OID 16473)
-- Name: Categorias id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categorias" ALTER COLUMN id SET DEFAULT nextval('public."Categorias_id_seq"'::regclass);


--
-- TOC entry 4682 (class 2604 OID 16535)
-- Name: Favoritos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Favoritos" ALTER COLUMN id SET DEFAULT nextval('public."Favoritos_id_seq"'::regclass);


--
-- TOC entry 4681 (class 2604 OID 16528)
-- Name: FotosOfrecidos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FotosOfrecidos" ALTER COLUMN id SET DEFAULT nextval('public."FotosOfrecidos_id_seq"'::regclass);


--
-- TOC entry 4680 (class 2604 OID 16521)
-- Name: Generos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Generos" ALTER COLUMN id SET DEFAULT nextval('public."Generos_id_seq"'::regclass);


--
-- TOC entry 4673 (class 2604 OID 16474)
-- Name: Historial id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Historial" ALTER COLUMN id SET DEFAULT nextval('public."Historial_id_seq"'::regclass);


--
-- TOC entry 4683 (class 2604 OID 16545)
-- Name: Likes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Likes" ALTER COLUMN id SET DEFAULT nextval('public."Likes_id_seq"'::regclass);


--
-- TOC entry 4674 (class 2604 OID 16475)
-- Name: Ofrecidos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ofrecidos" ALTER COLUMN id SET DEFAULT nextval('public."Ofrecidos_id_seq"'::regclass);


--
-- TOC entry 4675 (class 2604 OID 16476)
-- Name: Usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuarios" ALTER COLUMN id SET DEFAULT nextval('public."Usuarios_id_seq"'::regclass);


--
-- TOC entry 4676 (class 2604 OID 16477)
-- Name: ZonaOfrecidos  id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ZonaOfrecidos " ALTER COLUMN id SET DEFAULT nextval('public."ZonaTrabajador_id_seq"'::regclass);


--
-- TOC entry 4677 (class 2604 OID 16478)
-- Name: ZonaOfrecidos  idUsuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ZonaOfrecidos " ALTER COLUMN "idUsuario" SET DEFAULT nextval('public."ZonaTrabajador_idTrabajador_seq"'::regclass);


--
-- TOC entry 4678 (class 2604 OID 16479)
-- Name: ZonaOfrecidos  idZona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ZonaOfrecidos " ALTER COLUMN "idZona" SET DEFAULT nextval('public."ZonaTrabajador_idZona_seq"'::regclass);


--
-- TOC entry 4679 (class 2604 OID 16480)
-- Name: Zonas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Zonas" ALTER COLUMN id SET DEFAULT nextval('public."Zonas_id_seq"'::regclass);


--
-- TOC entry 4854 (class 0 OID 16445)
-- Dependencies: 215
-- Data for Name: Categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Categorias" VALUES (1, 'Salud y belleza');
INSERT INTO public."Categorias" VALUES (2, 'Reparaciones');
INSERT INTO public."Categorias" VALUES (3, 'Cuidado de personas');
INSERT INTO public."Categorias" VALUES (4, 'Class pariculares');


--
-- TOC entry 4872 (class 0 OID 16531)
-- Dependencies: 233
-- Data for Name: Favoritos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4871 (class 0 OID 16525)
-- Dependencies: 232
-- Data for Name: FotosOfrecidos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4869 (class 0 OID 16518)
-- Dependencies: 230
-- Data for Name: Generos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Generos" VALUES (1, 'Masculino');
INSERT INTO public."Generos" VALUES (2, 'Femenino');
INSERT INTO public."Generos" VALUES (3, 'No binario');
INSERT INTO public."Generos" VALUES (4, 'Prefiero no decir');
INSERT INTO public."Generos" VALUES (5, 'Otro');


--
-- TOC entry 4856 (class 0 OID 16449)
-- Dependencies: 217
-- Data for Name: Historial; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Historial" VALUES (1, 1, 2, '2023-01-01', true, 4, 'Buen cuidado de mi abuela durante el día.', 5, 'Cliente satisfecho');
INSERT INTO public."Historial" VALUES (2, 2, 3, '2023-01-02', true, 3, 'Las clases de matemáticas fueron muy útiles.', 4, 'Cliente cordial');
INSERT INTO public."Historial" VALUES (3, 3, 4, '2023-01-03', true, 5, 'El tratamiento facial me dejó la piel muy suave.', 5, 'Cliente satisfecho');
INSERT INTO public."Historial" VALUES (4, 4, 5, '2023-01-04', false, 2, 'La reparación del electrodoméstico tardó un poco más de lo esperado.', 3, 'Cliente comprensivo');
INSERT INTO public."Historial" VALUES (5, 5, 3, '2023-01-05', true, 4, 'Muy buen servicio de asistencia domiciliaria.', 4, 'Cliente cordial');
INSERT INTO public."Historial" VALUES (6, 3, 2, '2023-01-06', false, 3, 'Excelentes clases de inglés, aprendí mucho.', 2, 'Cliente insatisfecho');
INSERT INTO public."Historial" VALUES (7, 2, 1, '2023-01-07', true, 5, 'Me encantó el servicio de peluquería en casa.', 4, 'Cliente cordial');
INSERT INTO public."Historial" VALUES (8, 1, 4, '2023-01-08', false, 2, 'La reparación del techo fue aceptable, pero podría mejorar en algunos detalles.', 3, 'Cliente comprensivo');
INSERT INTO public."Historial" VALUES (9, 4, 2, '2023-01-09', true, 4, 'El masaje fue increíble, definitivamente lo recomendaría.', 5, 'Cliente satisfecho');
INSERT INTO public."Historial" VALUES (10, 3, 5, '2023-01-10', false, 3, 'La reparación del grifo no fue del todo satisfactoria.', 2, 'Cliente insatisfecho');
INSERT INTO public."Historial" VALUES (11, 5, 1, '2023-01-11', true, 5, 'El cuidado de mi abuela fue excelente, gracias por su atención.', 5, 'Cliente satisfecho');
INSERT INTO public."Historial" VALUES (12, 2, 3, '2023-01-12', false, 4, 'Las clases de matemáticas fueron geniales, el profesor explicaba muy bien.', 5, 'Cliente satisfecho');
INSERT INTO public."Historial" VALUES (13, 1, 5, '2023-01-13', true, 3, 'Me encantó el servicio de peluquería en casa.', 4, 'Cliente cordial');
INSERT INTO public."Historial" VALUES (14, 3, 2, '2023-01-14', false, 2, 'La reparación del techo fue aceptable, pero podría mejorar en algunos detalles.', 3, 'Cliente comprensivo');
INSERT INTO public."Historial" VALUES (15, 5, 1, '2023-01-15', true, 4, 'El cuidado de mi abuela fue excelente, gracias por su atención.', 4, 'Cliente cordial');


--
-- TOC entry 4875 (class 0 OID 16542)
-- Dependencies: 236
-- Data for Name: Likes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4858 (class 0 OID 16453)
-- Dependencies: 219
-- Data for Name: Ofrecidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Ofrecidos" VALUES (1, 1, 'hage trabajos de electricidad', 2, NULL);
INSERT INTO public."Ofrecidos" VALUES (2, 1, 'Masaje relajante para aliviar el estrés', 1, NULL);
INSERT INTO public."Ofrecidos" VALUES (4, 3, 'Cuidado de ancianos en domicilio durante el día', 3, NULL);
INSERT INTO public."Ofrecidos" VALUES (6, 5, 'Tratamiento facial para rejuvenecer la piel', 1, NULL);
INSERT INTO public."Ofrecidos" VALUES (7, 6, 'Reparación de electrodomésticos en el hogar', 2, NULL);
INSERT INTO public."Ofrecidos" VALUES (8, 7, 'Asistencia domiciliaria para personas con discapacidad', 3, NULL);
INSERT INTO public."Ofrecidos" VALUES (9, 8, 'Clases de inglés para principiantes', 4, NULL);
INSERT INTO public."Ofrecidos" VALUES (10, 9, 'Servicio de peluquería a domicilio', 1, NULL);
INSERT INTO public."Ofrecidos" VALUES (11, 10, 'Reparación de techo dañado por filtraciones', 2, NULL);
INSERT INTO public."Ofrecidos" VALUES (3, 2, 'Reparación de grifo con fugas en el baño', 2, 'agua fuga reparacion plomeria');
INSERT INTO public."Ofrecidos" VALUES (5, 4, 'Clases particulares de matemáticas para estudiantes de secundaria', 4, 'profesora profe aprender');


--
-- TOC entry 4860 (class 0 OID 16459)
-- Dependencies: 221
-- Data for Name: Usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Usuarios" VALUES (1, 'julieta@gmail.com', 'Juan', 'Gómez', 'Calle 123', 'clave123', 1, 'https://thispersondoesnotexist.com/', '1985-03-15');
INSERT INTO public."Usuarios" VALUES (2, 'maria.lopez@example.com', 'María', 'López', 'Avenida 456', 'password456', 2, 'https://thispersondoesnotexist.com/', '1988-07-22');
INSERT INTO public."Usuarios" VALUES (3, 'carlos.martinez@example.com', 'Carlos', 'Martínez', 'Plaza Principal', 'contraseña789', 3, 'https://thispersondoesnotexist.com/', '1990-11-10');
INSERT INTO public."Usuarios" VALUES (4, 'ana.rodriguez@example.com', 'Ana', 'Rodríguez', 'Calle 789', '123456', 4, 'https://thispersondoesnotexist.com/', '1983-09-05');
INSERT INTO public."Usuarios" VALUES (5, 'pedro.sanchez@example.com', 'Pedro', 'Sánchez', 'Avenida Central', 'abc123', 5, 'https://thispersondoesnotexist.com/', '1986-12-30');
INSERT INTO public."Usuarios" VALUES (6, 'laura.hernandez@example.com', 'Laura', 'Hernández', 'Calle 567', 'qwerty', 1, 'https://thispersondoesnotexist.com/', '1989-05-20');
INSERT INTO public."Usuarios" VALUES (7, 'roberto.diaz@example.com', 'Roberto', 'Díaz', 'Avenida 890', '123abc', 2, 'https://thispersondoesnotexist.com/', '1992-04-18');
INSERT INTO public."Usuarios" VALUES (8, 'sofia.martinez@example.com', 'Sofía', 'Martínez', 'Plaza del Sol', 'password123', 3, 'https://thispersondoesnotexist.com/', '1995-10-08');
INSERT INTO public."Usuarios" VALUES (9, 'diego.garcia@example.com', 'Diego', 'García', 'Calle Luna', 'abcd1234', 4, 'https://thispersondoesnotexist.com/', '1979-11-27');
INSERT INTO public."Usuarios" VALUES (10, 'ana.fernandez@example.com', 'Ana', 'Fernández', 'Avenida del Bosque', 'pass1234', 4, 'https://thispersondoesnotexist.com/', '1983-09-05');
INSERT INTO public."Usuarios" VALUES (11, 'daniel.gonzalez@example.com', 'Daniel', 'González', 'Calle 10', 'password', 5, 'https://thispersondoesnotexist.com/', '1987-02-14');
INSERT INTO public."Usuarios" VALUES (12, 'luisa.molina@example.com', 'Luisa', 'Molina', 'Avenida 20', 'clave', 1, 'https://thispersondoesnotexist.com/', '1993-08-03');
INSERT INTO public."Usuarios" VALUES (13, 'javier.perez@example.com', 'Javier', 'Pérez', 'Calle 30', 'contraseña', 2, 'https://thispersondoesnotexist.com/', '1984-06-25');
INSERT INTO public."Usuarios" VALUES (14, 'elena.ruiz@example.com', 'Elena', 'Ruiz', 'Avenida 40', '12345678', 3, 'https://thispersondoesnotexist.com/', '1998-09-12');
INSERT INTO public."Usuarios" VALUES (15, 'pablo.lopez@example.com', 'Pablo', 'López', 'Calle 50', 'abcdefgh', 4, 'https://thispersondoesnotexist.com/', '1991-03-08');


--
-- TOC entry 4862 (class 0 OID 16463)
-- Dependencies: 223
-- Data for Name: ZonaOfrecidos ; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."ZonaOfrecidos " VALUES (7, 4, 1);
INSERT INTO public."ZonaOfrecidos " VALUES (8, 2, 2);
INSERT INTO public."ZonaOfrecidos " VALUES (9, 3, 3);
INSERT INTO public."ZonaOfrecidos " VALUES (10, 3, 4);
INSERT INTO public."ZonaOfrecidos " VALUES (11, 3, 1);
INSERT INTO public."ZonaOfrecidos " VALUES (12, 4, 4);


--
-- TOC entry 4866 (class 0 OID 16469)
-- Dependencies: 227
-- Data for Name: Zonas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Zonas" VALUES (1, 'almagro');
INSERT INTO public."Zonas" VALUES (2, 'Palermo');
INSERT INTO public."Zonas" VALUES (3, 'Recoleta');
INSERT INTO public."Zonas" VALUES (4, 'Belgrano');
INSERT INTO public."Zonas" VALUES (5, 'San Telmo');
INSERT INTO public."Zonas" VALUES (6, 'La Boca');
INSERT INTO public."Zonas" VALUES (7, 'Puerto Madero');
INSERT INTO public."Zonas" VALUES (8, 'Caballito');
INSERT INTO public."Zonas" VALUES (9, 'Villa Crespo');
INSERT INTO public."Zonas" VALUES (10, 'Colegiales');
INSERT INTO public."Zonas" VALUES (11, 'Almagro');
INSERT INTO public."Zonas" VALUES (12, 'Villa Urquiza');
INSERT INTO public."Zonas" VALUES (13, 'Barracas');
INSERT INTO public."Zonas" VALUES (14, 'NuÃ±ez');
INSERT INTO public."Zonas" VALUES (15, 'Saavedra');
INSERT INTO public."Zonas" VALUES (16, 'Villa Devoto');
INSERT INTO public."Zonas" VALUES (17, 'Flores');
INSERT INTO public."Zonas" VALUES (18, 'Parque Chacabuco');
INSERT INTO public."Zonas" VALUES (19, 'Parque Patricios');
INSERT INTO public."Zonas" VALUES (20, 'Mataderos');
INSERT INTO public."Zonas" VALUES (21, 'Villa del Parque');
INSERT INTO public."Zonas" VALUES (22, 'Villa Lugano');
INSERT INTO public."Zonas" VALUES (23, 'Villa PueyrredÃ³n');
INSERT INTO public."Zonas" VALUES (24, 'Villa Luro');
INSERT INTO public."Zonas" VALUES (25, 'Villa Santa Rita');
INSERT INTO public."Zonas" VALUES (26, 'Parque Avellaneda');
INSERT INTO public."Zonas" VALUES (27, 'Villa General Mitre');
INSERT INTO public."Zonas" VALUES (28, 'Villa Real');
INSERT INTO public."Zonas" VALUES (29, 'Villa Riachuelo');
INSERT INTO public."Zonas" VALUES (30, 'Versalles');
INSERT INTO public."Zonas" VALUES (31, 'Monte Castro');


--
-- TOC entry 4893 (class 0 OID 0)
-- Dependencies: 216
-- Name: Categorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Categorias_id_seq"', 4, true);


--
-- TOC entry 4894 (class 0 OID 0)
-- Dependencies: 234
-- Name: Favoritos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Favoritos_id_seq"', 1, false);


--
-- TOC entry 4895 (class 0 OID 0)
-- Dependencies: 231
-- Name: FotosOfrecidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."FotosOfrecidos_id_seq"', 1, false);


--
-- TOC entry 4896 (class 0 OID 0)
-- Dependencies: 229
-- Name: Generos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Generos_id_seq"', 5, true);


--
-- TOC entry 4897 (class 0 OID 0)
-- Dependencies: 218
-- Name: Historial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Historial_id_seq"', 15, true);


--
-- TOC entry 4898 (class 0 OID 0)
-- Dependencies: 235
-- Name: Likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Likes_id_seq"', 1, false);


--
-- TOC entry 4899 (class 0 OID 0)
-- Dependencies: 220
-- Name: Ofrecidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ofrecidos_id_seq"', 11, true);


--
-- TOC entry 4900 (class 0 OID 0)
-- Dependencies: 222
-- Name: Usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Usuarios_id_seq"', 15, true);


--
-- TOC entry 4901 (class 0 OID 0)
-- Dependencies: 224
-- Name: ZonaTrabajador_idTrabajador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ZonaTrabajador_idTrabajador_seq"', 1, false);


--
-- TOC entry 4902 (class 0 OID 0)
-- Dependencies: 225
-- Name: ZonaTrabajador_idZona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ZonaTrabajador_idZona_seq"', 1, false);


--
-- TOC entry 4903 (class 0 OID 0)
-- Dependencies: 226
-- Name: ZonaTrabajador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ZonaTrabajador_id_seq"', 12, true);


--
-- TOC entry 4904 (class 0 OID 0)
-- Dependencies: 228
-- Name: Zonas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Zonas_id_seq"', 31, true);


--
-- TOC entry 4685 (class 2606 OID 16556)
-- Name: Categorias Categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categorias"
    ADD CONSTRAINT "Categorias_pkey" PRIMARY KEY (id);


--
-- TOC entry 4701 (class 2606 OID 16558)
-- Name: Favoritos Favoritos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Favoritos"
    ADD CONSTRAINT "Favoritos_pkey" PRIMARY KEY (id);


--
-- TOC entry 4699 (class 2606 OID 16530)
-- Name: FotosOfrecidos FotosOfrecidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FotosOfrecidos"
    ADD CONSTRAINT "FotosOfrecidos_pkey" PRIMARY KEY (id);


--
-- TOC entry 4697 (class 2606 OID 16523)
-- Name: Generos Generos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Generos"
    ADD CONSTRAINT "Generos_pkey" PRIMARY KEY (id);


--
-- TOC entry 4687 (class 2606 OID 16560)
-- Name: Historial Historial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Historial"
    ADD CONSTRAINT "Historial_pkey" PRIMARY KEY (id);


--
-- TOC entry 4703 (class 2606 OID 16562)
-- Name: Likes Likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Likes"
    ADD CONSTRAINT "Likes_pkey" PRIMARY KEY (id);


--
-- TOC entry 4689 (class 2606 OID 16549)
-- Name: Ofrecidos Ofrecidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ofrecidos"
    ADD CONSTRAINT "Ofrecidos_pkey" PRIMARY KEY (id);


--
-- TOC entry 4691 (class 2606 OID 16484)
-- Name: Usuarios Usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuarios"
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY (id);


--
-- TOC entry 4693 (class 2606 OID 16564)
-- Name: ZonaOfrecidos  ZonaOfrecidos _pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ZonaOfrecidos "
    ADD CONSTRAINT "ZonaOfrecidos _pkey" PRIMARY KEY (id);


--
-- TOC entry 4695 (class 2606 OID 16486)
-- Name: Zonas Zonas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Zonas"
    ADD CONSTRAINT "Zonas_pkey" PRIMARY KEY (id);


--
-- TOC entry 4708 (class 2606 OID 16550)
-- Name: FotosOfrecidos foto_idOfrecidos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FotosOfrecidos"
    ADD CONSTRAINT "foto_idOfrecidos" FOREIGN KEY ("idOfrecido") REFERENCES public."Ofrecidos"(id) NOT VALID;


--
-- TOC entry 4704 (class 2606 OID 16509)
-- Name: Historial idCont_idUsario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Historial"
    ADD CONSTRAINT "idCont_idUsario" FOREIGN KEY ("idContratador") REFERENCES public."Usuarios"(id) NOT VALID;


--
-- TOC entry 4709 (class 2606 OID 16570)
-- Name: Favoritos idOfre_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Favoritos"
    ADD CONSTRAINT "idOfre_usuario" FOREIGN KEY ("idOfrecido") REFERENCES public."Usuarios"(id) NOT VALID;


--
-- TOC entry 4705 (class 2606 OID 16504)
-- Name: Historial idProv_idUsuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Historial"
    ADD CONSTRAINT "idProv_idUsuario" FOREIGN KEY ("idProveedor") REFERENCES public."Usuarios"(id) NOT VALID;


--
-- TOC entry 4710 (class 2606 OID 16565)
-- Name: Favoritos idUs_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Favoritos"
    ADD CONSTRAINT "idUs_usuario" FOREIGN KEY ("idUsuario") REFERENCES public."Usuarios"(id) NOT VALID;


--
-- TOC entry 4706 (class 2606 OID 16487)
-- Name: ZonaOfrecidos  idUsuarios_usuariosId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ZonaOfrecidos "
    ADD CONSTRAINT "idUsuarios_usuariosId" FOREIGN KEY ("idUsuario") REFERENCES public."Usuarios"(id) NOT VALID;


--
-- TOC entry 4707 (class 2606 OID 16492)
-- Name: ZonaOfrecidos  idZonas_zonasId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ZonaOfrecidos "
    ADD CONSTRAINT "idZonas_zonasId" FOREIGN KEY ("idZona") REFERENCES public."Zonas"(id) NOT VALID;


-- Completed on 2024-05-24 11:47:22

--
-- PostgreSQL database dump complete
--

