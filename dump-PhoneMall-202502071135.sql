--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-02-07 11:35:07

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

DROP DATABASE "PhoneMall";
--
-- TOC entry 5015 (class 1262 OID 22361)
-- Name: PhoneMall; Type: DATABASE; Schema: -; Owner: KC_User
--

CREATE DATABASE "PhoneMall" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE "PhoneMall" OWNER TO "KC_User";

\connect "PhoneMall"

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
-- TOC entry 5 (class 2615 OID 22632)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 22871)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    category_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 22870)
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_category_id_seq OWNER TO postgres;

--
-- TOC entry 5018 (class 0 OID 0)
-- Dependencies: 219
-- Name: categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories.category_id;


--
-- TOC entry 222 (class 1259 OID 22878)
-- Name: connectivity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.connectivity (
    connectivity_id integer NOT NULL,
    connectivity_type character varying(255) NOT NULL
);


ALTER TABLE public.connectivity OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 22877)
-- Name: connectivity_connectivity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.connectivity_connectivity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.connectivity_connectivity_id_seq OWNER TO postgres;

--
-- TOC entry 5019 (class 0 OID 0)
-- Dependencies: 221
-- Name: connectivity_connectivity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.connectivity_connectivity_id_seq OWNED BY public.connectivity.connectivity_id;


--
-- TOC entry 224 (class 1259 OID 22885)
-- Name: os; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.os (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.os OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 22884)
-- Name: os_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.os_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.os_id_seq OWNER TO postgres;

--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 223
-- Name: os_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.os_id_seq OWNED BY public.os.id;


--
-- TOC entry 236 (class 1259 OID 22972)
-- Name: product_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_images (
    image_id integer NOT NULL,
    image_path text NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.product_images OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 22971)
-- Name: product_images_image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_images_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_images_image_id_seq OWNER TO postgres;

--
-- TOC entry 5021 (class 0 OID 0)
-- Dependencies: 235
-- Name: product_images_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_images_image_id_seq OWNED BY public.product_images.image_id;


--
-- TOC entry 238 (class 1259 OID 22986)
-- Name: product_options; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_options (
    option_id integer NOT NULL,
    color character varying(50),
    color_price_adjustment numeric(10,2),
    storage_ram character varying(50),
    storage_price_adjustment numeric(10,2),
    quantity integer,
    final_price numeric(10,2),
    product_id integer NOT NULL
);


ALTER TABLE public.product_options OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 22985)
-- Name: product_options_option_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_options_option_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_options_option_id_seq OWNER TO postgres;

--
-- TOC entry 5022 (class 0 OID 0)
-- Dependencies: 237
-- Name: product_options_option_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_options_option_id_seq OWNED BY public.product_options.option_id;


--
-- TOC entry 232 (class 1259 OID 22928)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    name character varying(255) NOT NULL,
    base_price numeric(10,2) NOT NULL,
    main_image text,
    created_date date DEFAULT CURRENT_DATE,
    warranty integer,
    sub_category_id integer NOT NULL,
    promotion_id integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 22927)
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_product_id_seq OWNER TO postgres;

--
-- TOC entry 5023 (class 0 OID 0)
-- Dependencies: 231
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- TOC entry 226 (class 1259 OID 22895)
-- Name: promotion_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.promotion_details (
    promotion_detail_id integer NOT NULL,
    name character varying(255) NOT NULL,
    discount_type character varying(50),
    discount_value numeric(10,2),
    gift character varying(255),
    start_date date,
    end_date date,
    status boolean NOT NULL
);


ALTER TABLE public.promotion_details OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 22894)
-- Name: promotion_details_promotion_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.promotion_details_promotion_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.promotion_details_promotion_detail_id_seq OWNER TO postgres;

--
-- TOC entry 5024 (class 0 OID 0)
-- Dependencies: 225
-- Name: promotion_details_promotion_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.promotion_details_promotion_detail_id_seq OWNED BY public.promotion_details.promotion_detail_id;


--
-- TOC entry 230 (class 1259 OID 22916)
-- Name: promotions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.promotions (
    promotion_id integer NOT NULL,
    promotion_detail_id integer NOT NULL,
    product_id integer
);


ALTER TABLE public.promotions OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 22915)
-- Name: promotions_promotion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.promotions_promotion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.promotions_promotion_id_seq OWNER TO postgres;

--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 229
-- Name: promotions_promotion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.promotions_promotion_id_seq OWNED BY public.promotions.promotion_id;


--
-- TOC entry 242 (class 1259 OID 23021)
-- Name: purchase_order_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchase_order_details (
    purchase_order_detail_id integer NOT NULL,
    quantity integer NOT NULL,
    unit_cost numeric(10,2),
    sub_total numeric(10,2),
    product_id integer NOT NULL,
    option_id integer,
    purchase_order_id integer NOT NULL
);


ALTER TABLE public.purchase_order_details OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 23020)
-- Name: purchase_order_details_purchase_order_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.purchase_order_details_purchase_order_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.purchase_order_details_purchase_order_detail_id_seq OWNER TO postgres;

--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 241
-- Name: purchase_order_details_purchase_order_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.purchase_order_details_purchase_order_detail_id_seq OWNED BY public.purchase_order_details.purchase_order_detail_id;


--
-- TOC entry 240 (class 1259 OID 23007)
-- Name: purchase_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchase_orders (
    purchase_order_id integer NOT NULL,
    order_date date NOT NULL,
    total_cost numeric(10,2),
    supplier_name character varying(255),
    contact_info character varying(255),
    address text,
    kcid character varying(255)
);


ALTER TABLE public.purchase_orders OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 23006)
-- Name: purchase_orders_purchase_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.purchase_orders_purchase_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.purchase_orders_purchase_order_id_seq OWNER TO postgres;

--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 239
-- Name: purchase_orders_purchase_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.purchase_orders_purchase_order_id_seq OWNED BY public.purchase_orders.purchase_order_id;


--
-- TOC entry 246 (class 1259 OID 23056)
-- Name: sales_order_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_order_details (
    sales_order_detail_id integer NOT NULL,
    quantity integer NOT NULL,
    price numeric(10,2),
    sub_price numeric(10,2),
    product_id integer NOT NULL,
    option_id integer,
    sales_order_id integer NOT NULL
);


ALTER TABLE public.sales_order_details OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 23055)
-- Name: sales_order_details_sales_order_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_order_details_sales_order_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sales_order_details_sales_order_detail_id_seq OWNER TO postgres;

--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 245
-- Name: sales_order_details_sales_order_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sales_order_details_sales_order_detail_id_seq OWNED BY public.sales_order_details.sales_order_detail_id;


--
-- TOC entry 244 (class 1259 OID 23043)
-- Name: sales_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_orders (
    sales_order_id integer NOT NULL,
    total_price numeric(10,2),
    status character varying(50),
    order_date date DEFAULT CURRENT_DATE,
    kcid character varying(255)
);


ALTER TABLE public.sales_orders OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 23042)
-- Name: sales_orders_sales_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_orders_sales_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sales_orders_sales_order_id_seq OWNER TO postgres;

--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 243
-- Name: sales_orders_sales_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sales_orders_sales_order_id_seq OWNED BY public.sales_orders.sales_order_id;


--
-- TOC entry 228 (class 1259 OID 22904)
-- Name: subcategories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subcategories (
    sub_category_id integer NOT NULL,
    name character varying(255) NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.subcategories OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 22903)
-- Name: subcategories_sub_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subcategories_sub_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subcategories_sub_category_id_seq OWNER TO postgres;

--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 227
-- Name: subcategories_sub_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subcategories_sub_category_id_seq OWNED BY public.subcategories.sub_category_id;


--
-- TOC entry 234 (class 1259 OID 22948)
-- Name: technical_specs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.technical_specs (
    technical_specs_id integer NOT NULL,
    screen_size character varying(50),
    screen_resolution character varying(100),
    processor character varying(100),
    rear_camera character varying(100),
    front_camera character varying(100),
    battery character varying(100),
    fast_charging boolean,
    water_resistance boolean,
    release_date date,
    product_id integer NOT NULL,
    os integer,
    connectivity integer
);


ALTER TABLE public.technical_specs OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 22947)
-- Name: technical_specs_technical_specs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.technical_specs_technical_specs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.technical_specs_technical_specs_id_seq OWNER TO postgres;

--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 233
-- Name: technical_specs_technical_specs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.technical_specs_technical_specs_id_seq OWNED BY public.technical_specs.technical_specs_id;


--
-- TOC entry 217 (class 1259 OID 22694)
-- Name: users; Type: TABLE; Schema: public; Owner: KC_User
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(255) NOT NULL,
    kcid character varying(255)
);


ALTER TABLE public.users OWNER TO "KC_User";

--
-- TOC entry 218 (class 1259 OID 22699)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: KC_User
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO "KC_User";

--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 218
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: KC_User
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4766 (class 2604 OID 22874)
-- Name: categories category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN category_id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);


--
-- TOC entry 4767 (class 2604 OID 22881)
-- Name: connectivity connectivity_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.connectivity ALTER COLUMN connectivity_id SET DEFAULT nextval('public.connectivity_connectivity_id_seq'::regclass);


--
-- TOC entry 4768 (class 2604 OID 22888)
-- Name: os id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.os ALTER COLUMN id SET DEFAULT nextval('public.os_id_seq'::regclass);


--
-- TOC entry 4775 (class 2604 OID 22975)
-- Name: product_images image_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_images ALTER COLUMN image_id SET DEFAULT nextval('public.product_images_image_id_seq'::regclass);


--
-- TOC entry 4776 (class 2604 OID 22989)
-- Name: product_options option_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_options ALTER COLUMN option_id SET DEFAULT nextval('public.product_options_option_id_seq'::regclass);


--
-- TOC entry 4772 (class 2604 OID 22931)
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- TOC entry 4769 (class 2604 OID 22898)
-- Name: promotion_details promotion_detail_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotion_details ALTER COLUMN promotion_detail_id SET DEFAULT nextval('public.promotion_details_promotion_detail_id_seq'::regclass);


--
-- TOC entry 4771 (class 2604 OID 22919)
-- Name: promotions promotion_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotions ALTER COLUMN promotion_id SET DEFAULT nextval('public.promotions_promotion_id_seq'::regclass);


--
-- TOC entry 4778 (class 2604 OID 23024)
-- Name: purchase_order_details purchase_order_detail_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_order_details ALTER COLUMN purchase_order_detail_id SET DEFAULT nextval('public.purchase_order_details_purchase_order_detail_id_seq'::regclass);


--
-- TOC entry 4777 (class 2604 OID 23010)
-- Name: purchase_orders purchase_order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_orders ALTER COLUMN purchase_order_id SET DEFAULT nextval('public.purchase_orders_purchase_order_id_seq'::regclass);


--
-- TOC entry 4781 (class 2604 OID 23059)
-- Name: sales_order_details sales_order_detail_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_order_details ALTER COLUMN sales_order_detail_id SET DEFAULT nextval('public.sales_order_details_sales_order_detail_id_seq'::regclass);


--
-- TOC entry 4779 (class 2604 OID 23046)
-- Name: sales_orders sales_order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_orders ALTER COLUMN sales_order_id SET DEFAULT nextval('public.sales_orders_sales_order_id_seq'::regclass);


--
-- TOC entry 4770 (class 2604 OID 22907)
-- Name: subcategories sub_category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subcategories ALTER COLUMN sub_category_id SET DEFAULT nextval('public.subcategories_sub_category_id_seq'::regclass);


--
-- TOC entry 4774 (class 2604 OID 22951)
-- Name: technical_specs technical_specs_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technical_specs ALTER COLUMN technical_specs_id SET DEFAULT nextval('public.technical_specs_technical_specs_id_seq'::regclass);


--
-- TOC entry 4765 (class 2604 OID 22712)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: KC_User
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4983 (class 0 OID 22871)
-- Dependencies: 220
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories VALUES (1, 'Apple');
INSERT INTO public.categories VALUES (2, 'Samsung');


--
-- TOC entry 4985 (class 0 OID 22878)
-- Dependencies: 222
-- Data for Name: connectivity; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4987 (class 0 OID 22885)
-- Dependencies: 224
-- Data for Name: os; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.os VALUES (1, 'Ios');
INSERT INTO public.os VALUES (2, 'Android');


--
-- TOC entry 4999 (class 0 OID 22972)
-- Dependencies: 236
-- Data for Name: product_images; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5001 (class 0 OID 22986)
-- Dependencies: 238
-- Data for Name: product_options; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_options VALUES (1, 'đen', 1000000.00, '256', 1000000.00, 10, 2000000.00, 1);
INSERT INTO public.product_options VALUES (2, 'trắng', 1200000.00, '256', 1000000.00, 15, 2000000.00, 1);


--
-- TOC entry 4995 (class 0 OID 22928)
-- Dependencies: 232
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products VALUES (1, 'iPhone 15 Plus', 16000000.00, NULL, '2025-06-02', 12, 1, NULL);


--
-- TOC entry 4989 (class 0 OID 22895)
-- Dependencies: 226
-- Data for Name: promotion_details; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4993 (class 0 OID 22916)
-- Dependencies: 230
-- Data for Name: promotions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5005 (class 0 OID 23021)
-- Dependencies: 242
-- Data for Name: purchase_order_details; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5003 (class 0 OID 23007)
-- Dependencies: 240
-- Data for Name: purchase_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5009 (class 0 OID 23056)
-- Dependencies: 246
-- Data for Name: sales_order_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sales_order_details VALUES (1, 1, 18000000.00, 18000000.00, 1, 1, 1);
INSERT INTO public.sales_order_details VALUES (2, 2, 18200000.00, 18200000.00, 1, 2, 1);


--
-- TOC entry 5007 (class 0 OID 23043)
-- Dependencies: 244
-- Data for Name: sales_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sales_orders VALUES (1, 36200000.00, 'đã thanh toán', '2025-06-02', 'f:3e8799f9-28c2-4cda-8d97-ba2c7e734ca7:30');


--
-- TOC entry 4991 (class 0 OID 22904)
-- Dependencies: 228
-- Data for Name: subcategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.subcategories VALUES (1, 'iPhone 15', 1);
INSERT INTO public.subcategories VALUES (2, 'iPhone 16', 1);


--
-- TOC entry 4997 (class 0 OID 22948)
-- Dependencies: 234
-- Data for Name: technical_specs; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4980 (class 0 OID 22694)
-- Dependencies: 217
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: KC_User
--

INSERT INTO public.users VALUES (30, 'Nhất', 'Thanh', 'cainhatthanhwork@gmail.com', 'admin', '$2a$10$vPp5Lq1.ZseMCYvZBFt3PeZqc.uLvZJmV3wip8Kl1dnT4w.KOlDBq', 'f:3e8799f9-28c2-4cda-8d97-ba2c7e734ca7:30');
INSERT INTO public.users VALUES (31, 'Cai', 'Thanh', 'Cainhatthanh@3123.co', 'Thanhcn2020', '123456', NULL);
INSERT INTO public.users VALUES (32, 'Nguyễn', 'Văn A', 'nguyenvana@gmail.com', 'nguyenvana', '123456', NULL);
INSERT INTO public.users VALUES (33, 'Trần', 'Văn B', 'tranvanb@gmail.com', 'tranvanb', '123456', NULL);


--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 219
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 2, true);


--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 221
-- Name: connectivity_connectivity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.connectivity_connectivity_id_seq', 1, false);


--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 223
-- Name: os_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.os_id_seq', 2, true);


--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 235
-- Name: product_images_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_images_image_id_seq', 1, false);


--
-- TOC entry 5037 (class 0 OID 0)
-- Dependencies: 237
-- Name: product_options_option_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_options_option_id_seq', 2, true);


--
-- TOC entry 5038 (class 0 OID 0)
-- Dependencies: 231
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 1, true);


--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 225
-- Name: promotion_details_promotion_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.promotion_details_promotion_detail_id_seq', 1, false);


--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 229
-- Name: promotions_promotion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.promotions_promotion_id_seq', 1, false);


--
-- TOC entry 5041 (class 0 OID 0)
-- Dependencies: 241
-- Name: purchase_order_details_purchase_order_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.purchase_order_details_purchase_order_detail_id_seq', 1, false);


--
-- TOC entry 5042 (class 0 OID 0)
-- Dependencies: 239
-- Name: purchase_orders_purchase_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.purchase_orders_purchase_order_id_seq', 1, false);


--
-- TOC entry 5043 (class 0 OID 0)
-- Dependencies: 245
-- Name: sales_order_details_sales_order_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sales_order_details_sales_order_detail_id_seq', 2, true);


--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 243
-- Name: sales_orders_sales_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sales_orders_sales_order_id_seq', 1, true);


--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 227
-- Name: subcategories_sub_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subcategories_sub_category_id_seq', 2, true);


--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 233
-- Name: technical_specs_technical_specs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.technical_specs_technical_specs_id_seq', 1, false);


--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 218
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: KC_User
--

SELECT pg_catalog.setval('public.users_id_seq', 33, true);


--
-- TOC entry 4791 (class 2606 OID 22876)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- TOC entry 4793 (class 2606 OID 22883)
-- Name: connectivity connectivity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.connectivity
    ADD CONSTRAINT connectivity_pkey PRIMARY KEY (connectivity_id);


--
-- TOC entry 4795 (class 2606 OID 22890)
-- Name: os os_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.os
    ADD CONSTRAINT os_pkey PRIMARY KEY (id);


--
-- TOC entry 4807 (class 2606 OID 22979)
-- Name: product_images product_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (image_id);


--
-- TOC entry 4809 (class 2606 OID 22991)
-- Name: product_options product_options_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_options
    ADD CONSTRAINT product_options_pkey PRIMARY KEY (option_id);


--
-- TOC entry 4803 (class 2606 OID 22936)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- TOC entry 4797 (class 2606 OID 22902)
-- Name: promotion_details promotion_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotion_details
    ADD CONSTRAINT promotion_details_pkey PRIMARY KEY (promotion_detail_id);


--
-- TOC entry 4801 (class 2606 OID 22921)
-- Name: promotions promotions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotions
    ADD CONSTRAINT promotions_pkey PRIMARY KEY (promotion_id);


--
-- TOC entry 4813 (class 2606 OID 23026)
-- Name: purchase_order_details purchase_order_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_order_details
    ADD CONSTRAINT purchase_order_details_pkey PRIMARY KEY (purchase_order_detail_id);


--
-- TOC entry 4811 (class 2606 OID 23014)
-- Name: purchase_orders purchase_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_pkey PRIMARY KEY (purchase_order_id);


--
-- TOC entry 4817 (class 2606 OID 23061)
-- Name: sales_order_details sales_order_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_order_details
    ADD CONSTRAINT sales_order_details_pkey PRIMARY KEY (sales_order_detail_id);


--
-- TOC entry 4815 (class 2606 OID 23049)
-- Name: sales_orders sales_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_orders
    ADD CONSTRAINT sales_orders_pkey PRIMARY KEY (sales_order_id);


--
-- TOC entry 4799 (class 2606 OID 22909)
-- Name: subcategories subcategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_pkey PRIMARY KEY (sub_category_id);


--
-- TOC entry 4805 (class 2606 OID 22955)
-- Name: technical_specs technical_specs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technical_specs
    ADD CONSTRAINT technical_specs_pkey PRIMARY KEY (technical_specs_id);


--
-- TOC entry 4783 (class 2606 OID 22738)
-- Name: users unique_kcid; Type: CONSTRAINT; Schema: public; Owner: KC_User
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT unique_kcid UNIQUE (kcid);


--
-- TOC entry 4785 (class 2606 OID 22740)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: KC_User
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4787 (class 2606 OID 22742)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: KC_User
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4789 (class 2606 OID 22744)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: KC_User
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 4825 (class 2606 OID 22980)
-- Name: product_images product_images_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


--
-- TOC entry 4826 (class 2606 OID 22992)
-- Name: product_options product_options_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_options
    ADD CONSTRAINT product_options_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


--
-- TOC entry 4820 (class 2606 OID 22942)
-- Name: products products_promotion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_promotion_id_fkey FOREIGN KEY (promotion_id) REFERENCES public.promotions(promotion_id);


--
-- TOC entry 4821 (class 2606 OID 22937)
-- Name: products products_sub_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_sub_category_id_fkey FOREIGN KEY (sub_category_id) REFERENCES public.subcategories(sub_category_id);


--
-- TOC entry 4819 (class 2606 OID 22922)
-- Name: promotions promotions_promotion_detail_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotions
    ADD CONSTRAINT promotions_promotion_detail_id_fkey FOREIGN KEY (promotion_detail_id) REFERENCES public.promotion_details(promotion_detail_id);


--
-- TOC entry 4828 (class 2606 OID 23032)
-- Name: purchase_order_details purchase_order_details_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_order_details
    ADD CONSTRAINT purchase_order_details_option_id_fkey FOREIGN KEY (option_id) REFERENCES public.product_options(option_id);


--
-- TOC entry 4829 (class 2606 OID 23027)
-- Name: purchase_order_details purchase_order_details_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_order_details
    ADD CONSTRAINT purchase_order_details_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


--
-- TOC entry 4830 (class 2606 OID 23037)
-- Name: purchase_order_details purchase_order_details_purchase_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_order_details
    ADD CONSTRAINT purchase_order_details_purchase_order_id_fkey FOREIGN KEY (purchase_order_id) REFERENCES public.purchase_orders(purchase_order_id);


--
-- TOC entry 4827 (class 2606 OID 23015)
-- Name: purchase_orders purchase_orders_kcid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_kcid_fkey FOREIGN KEY (kcid) REFERENCES public.users(kcid);


--
-- TOC entry 4832 (class 2606 OID 23067)
-- Name: sales_order_details sales_order_details_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_order_details
    ADD CONSTRAINT sales_order_details_option_id_fkey FOREIGN KEY (option_id) REFERENCES public.product_options(option_id);


--
-- TOC entry 4833 (class 2606 OID 23062)
-- Name: sales_order_details sales_order_details_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_order_details
    ADD CONSTRAINT sales_order_details_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


--
-- TOC entry 4834 (class 2606 OID 23072)
-- Name: sales_order_details sales_order_details_sales_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_order_details
    ADD CONSTRAINT sales_order_details_sales_order_id_fkey FOREIGN KEY (sales_order_id) REFERENCES public.sales_orders(sales_order_id);


--
-- TOC entry 4831 (class 2606 OID 23050)
-- Name: sales_orders sales_orders_kcid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_orders
    ADD CONSTRAINT sales_orders_kcid_fkey FOREIGN KEY (kcid) REFERENCES public.users(kcid);


--
-- TOC entry 4818 (class 2606 OID 22910)
-- Name: subcategories subcategories_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subcategories
    ADD CONSTRAINT subcategories_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(category_id);


--
-- TOC entry 4822 (class 2606 OID 22966)
-- Name: technical_specs technical_specs_connectivity_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technical_specs
    ADD CONSTRAINT technical_specs_connectivity_fkey FOREIGN KEY (connectivity) REFERENCES public.connectivity(connectivity_id);


--
-- TOC entry 4823 (class 2606 OID 22961)
-- Name: technical_specs technical_specs_os_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technical_specs
    ADD CONSTRAINT technical_specs_os_fkey FOREIGN KEY (os) REFERENCES public.os(id);


--
-- TOC entry 4824 (class 2606 OID 22956)
-- Name: technical_specs technical_specs_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.technical_specs
    ADD CONSTRAINT technical_specs_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


--
-- TOC entry 5017 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


-- Completed on 2025-02-07 11:35:07

--
-- PostgreSQL database dump complete
--

