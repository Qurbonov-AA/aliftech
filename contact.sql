--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7 (Ubuntu 12.7-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.7 (Ubuntu 12.7-0ubuntu0.20.04.1)

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

--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: akmal
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO akmal;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: akmal
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO akmal;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: akmal
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: akmal
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO akmal;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: akmal
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO akmal;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: akmal
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: akmal
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO akmal;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: akmal
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO akmal;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: akmal
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: akmal
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO akmal;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: akmal
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO akmal;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: akmal
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO akmal;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: akmal
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: akmal
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO akmal;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: akmal
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: akmal
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO akmal;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: akmal
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO akmal;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: akmal
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: contacts_contacts; Type: TABLE; Schema: public; Owner: akmal
--

CREATE TABLE public.contacts_contacts (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    company character varying(255) NOT NULL,
    post character varying(100) NOT NULL,
    linkedin character varying(255) NOT NULL,
    sex character varying(20) NOT NULL,
    site character varying(255) NOT NULL
);


ALTER TABLE public.contacts_contacts OWNER TO akmal;

--
-- Name: contacts_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: akmal
--

CREATE SEQUENCE public.contacts_contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_contacts_id_seq OWNER TO akmal;

--
-- Name: contacts_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: akmal
--

ALTER SEQUENCE public.contacts_contacts_id_seq OWNED BY public.contacts_contacts.id;


--
-- Name: contacts_userinfo; Type: TABLE; Schema: public; Owner: akmal
--

CREATE TABLE public.contacts_userinfo (
    id integer NOT NULL,
    mnumber character varying(15) NOT NULL,
    email character varying(255) NOT NULL,
    contact_id integer NOT NULL
);


ALTER TABLE public.contacts_userinfo OWNER TO akmal;

--
-- Name: contacts_userinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: akmal
--

CREATE SEQUENCE public.contacts_userinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_userinfo_id_seq OWNER TO akmal;

--
-- Name: contacts_userinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: akmal
--

ALTER SEQUENCE public.contacts_userinfo_id_seq OWNED BY public.contacts_userinfo.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: akmal
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO akmal;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: akmal
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO akmal;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: akmal
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: akmal
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO akmal;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: akmal
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO akmal;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: akmal
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: akmal
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO akmal;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: akmal
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO akmal;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: akmal
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: akmal
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO akmal;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: contacts_contacts id; Type: DEFAULT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.contacts_contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_contacts_id_seq'::regclass);


--
-- Name: contacts_userinfo id; Type: DEFAULT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.contacts_userinfo ALTER COLUMN id SET DEFAULT nextval('public.contacts_userinfo_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: akmal
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: akmal
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: akmal
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add contacts	7	add_contacts
26	Can change contacts	7	change_contacts
27	Can delete contacts	7	delete_contacts
28	Can view contacts	7	view_contacts
29	Can add user info	8	add_userinfo
30	Can change user info	8	change_userinfo
31	Can delete user info	8	delete_userinfo
32	Can view user info	8	view_userinfo
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: akmal
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$UcPhxbtxHH6Y$ob3I5CKWdgQ4/V61HEh67OOyqoKyKccqquoHIuDktjE=	2021-07-18 01:15:52.922251+05	t	admin			admin@admin.com	t	t	2021-07-18 01:15:00.157953+05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: akmal
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: akmal
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: contacts_contacts; Type: TABLE DATA; Schema: public; Owner: akmal
--

COPY public.contacts_contacts (id, username, company, post, linkedin, sex, site) FROM stdin;
1	Akmal Azamatovich	Uzbektelecom	Injener programmist	None	M	None
2	Shahsanam Khujayeva	None	Uy bekasi	None	F	None
3	Iskandarova Munira	Uzbektelecom	MM E bo'lim muxandis	yuq	F	uzonline.uz
4	Orziqulov G'ulomjon	Uzbektelecom	TTR . E bo'lim boshlig'i	yuq	M	uzonline.uz
5	Ziyodov Avazbek	TTR.E bo'limmuhandis	uzbektelecom	yuq	M	uzonline.uz
6	Maxmudova Dilnoza	TTR.E bo'lim muhandis	uzbektelecom	yuq	F	uzonline.uz
7	Esanov Jo'rabek	TX . P bo'lim boshlig'i	uzbektelecom	yuq	M	uzonline.uz
8	Kenjayev Akbar	Billing M bo'limi boshlig'i	uzbektelecom	yuq	M	uzonline.uz
9	Bakiyeva Marjona	Billing M Bo'lim muhandis	uzbektelecom	yuq	F	uzonline.uz
10	Nurova Zulfiya	Billing M Bo'lim muhandis	uzbektelecom	yuq	F	uzonline.uz
11	Foziljonov Fazliddin	Billing M bo'limi boshlig'i	uzbektelecom	yuq	M	uzonline.uz
12	Suyarqulov Vohid	loyihalshtirish	uzbektelecom	yuq	M	uzonline.uz
13	Axadov Alisher	Kadastr bo'lim boshlig'i	uzbektelecom	yuq	M	uzonline.uz
14	Murtazoyev Dilshod	Kadastr bo'lim 1-toifali muhandis	uzbektelecom	yuq	M	uzonline.uz
15	Xasanov Bekzod	Mijozlar bilan ishlash	uzbektelecom	yuq	M	uzonline.uz
16	Rajabova Nargiza	mijozlar bilan ishlash	uzbektelecom	yuq	F	uzonline.uz
17	Sobirova Feruza	Kadastr bo'lim boshlig'i	uzbektelecom	yuq	F	uzonline.uz
18	Abdiyeva Dilorom	loyihalshtirish	uzbektelecom	yuq	F	uzonline.uz
19	Yarmatova Dilnoza	Billing M bo'limi boshlig'i	uzbektelecom	yuq	F	uzonline.uz
20	Turdiyeva Ozoda	Uzbektelecom	TTR . E bo'lim boshlig'i	None	F	uzonline.uz
21	Qodirova Kamola	Uzbektelecom	Injener programmist	yuq	M	uzonline.uz
22	Fayzullayeva Zilola	Uzbektelecom	MM E bo'lim muxandis	yuq	F	uzonline.uz
23	Suyunova Zakira	Uzbektelecom	TTR . E bo'lim boshlig'i	yuq	F	uzonline.uz
24	Turayeva Feruza	Uzbektelecom	TTR . E bo'lim boshlig'i	yuq	F	uzonline.uz
25	Pogadayeva Anastasiya	Uzbektelecom	TTR . E bo'lim boshlig'i	yuq	F	uzonline.uz
26	Xazratova Xilola	Billing M bo'limi boshlig'i	uzbektelecom	yuq	F	uzonline.uz
27	Xidoyarova Oytulish	Billing M Bo'lim muhandis	uzbektelecom	yuq	F	uzonline.uz
28	Arapbayeva Albina	Billing M Bo'lim muhandis	uzbektelecom	None	F	uzonline.uz
29	Kenjayev Jur'at	Uzbektelecom	TTR . E bo'lim boshlig'i	yuq	M	uzonline.uz
30	Toshpo'latova Feruza	Kadastr bo'lim 1-toifali muhandis	uzbektelecom	yuq	F	uzonline.uz
31	O'ktamov Lazizbek	Billing M Bo'lim muhandis	uzbektelecom	yuq	M	uzonline.uz
32	Rustamov Dilmurod	Billing M Bo'lim muhandis	uzbektelecom	yuq	M	uzonline.uz
33	Mavlonov Abbosjon	loyihalshtirish	uzbektelecom	None	M	uzonline.uz
34	Ibragimov Shavkat	Billing M Bo'lim muhandis	uzbektelecom	yuq	M	uzonline.uz
35	Xazratova Nigina	Uzbektelecom	TTR . E bo'lim boshlig'i	yuq	F	uzonline.uz
36	Mustafoyev Umid	Kadastr bo'lim 1-toifali muhandis	uzbektelecom	yuq	M	uzonline.uz
37	Xamdamova Maxliyo	Kadastr bo'lim boshlig'i	uzbektelecom	yuq	F	uzonline.uz
38	Umarov Ikrom	TTB etakchi mutaxasis	uzbektelecom	yuq	M	uzonline.uz
39	Xalimova Maftuna	Kadastr bo'lim boshlig'i	uzbektelecom	yuq	F	uzonline.uz
40	Xojiyeva Zarina	Uzbektelecom	Injener programmist	yuq	F	uzonline.uz
41	Ochilon Umar	loyihalshtirish	uzbektelecom	yuq	M	uzonline.uz
42	Ziyodova Sitora	Uzbektelecom	Injener programmist	yuq	F	uzonline.uz
43	Majidova Elmira	Uzbektelecom	TTR . E bo'lim boshlig'i	yuq	F	uzonline.uz
44	Raeva Aygul	Uzbektelecom	Injener programmist	None	F	uzonline.uz
45	Berdiqulov Jamoliddin	Uzbektelecom	Injener programmist	yuq	M	uzonline.uz
46	Karimov Elyor	Uzbektelecom	MM E bo'lim muxandis	yuq	M	uzonline.uz
47	Xaliqulov Abdualim	loyihalshtirish	uzbektelecom	yuq	M	uzonline.uz
48	Barakayeva Iroda	Uzbektelecom	Uchastka Boshliq	yuq	F	uzonline.uz
49	Olimova Nasiba	Uzbektelecom	Uchastka Boshliq	None	F	uzonline.uz
\.


--
-- Data for Name: contacts_userinfo; Type: TABLE DATA; Schema: public; Owner: akmal
--

COPY public.contacts_userinfo (id, mnumber, email, contact_id) FROM stdin;
1	+998973226755	qurbonovakmalazamatovich@gmail.com	1
2	+998993606237	akmal.q@jafton.com	1
3	+998993606238	KhujayevaShohsanam@gmail.com	2
4	997509035	Iskandarovamunira23@mail.com	3
5	997508885	Orziqulovg'989@mail.com	4
6	997500758	Ziyodov7565@mail.com	5
7	997517039	Maxmudova6545@mail.com	6
8	997508388	Esanov5675@mail.com	7
9	997532121	Kenjayev7665@mail.com	8
10	997503649	Bakiyeva8566@mail.com	9
11	997501773	Nurova6553@mail.com	10
12	997528142	Fazliddin7465@mail.com	11
13	933006898	Vohid57699@mail.com	12
14	997506160	Alisher6543@mail.com	13
15	997404035	Dilshod34598@mail.com	14
16	993610001	Xasanov7690@mail.com	15
17	997561007	Rajabova876@mail.com	16
18	997556557	Sobirova8843@mail.com	17
19	994554433	Abdiyeva3366@mail.com	18
20	997520252	Yarmatova877@mail.com	19
21	997514508	Turdiyeva5746@mail.com	20
22	995745201	Qodirova77878@mail.com	21
23	990820331	Zilola7759@mail.com	22
24	932810091	Zakira9974@mail.com	23
25	997556001	Feruza84@mail.com	24
26	997558024	Anadstasiya5345@mail.com	25
27	997505662	Xilola645@mail.com	26
28	997582106	Xidoyarova655@mail.com	27
29	997556214	Albina6445@mail.com	28
30	997535577	Jurat465@mail.com	29
31	995757775	Toshpolatova434@mail.com	30
32	995874625	Lazizbek$3@mail.com	31
33	997530306	Rustamov54@mail.com	32
34	998337988	Abbosjon54@mail.com	33
35	997505892	Shavkat654@mail.com	34
36	997420949	Nigina543@mail.com	35
37	997576025	Umid88764@mail.com	36
38	995576460	Maxliyo65@mail.com	37
39	997507767	Umarov636@mail.com	38
40	997575788	Xalimova456@mail.com	39
41	997520159	Zarina3978@mail.com	40
42	997859691	Ochilov63543@mail.com	41
43	997537645	Sitora5647@mail.com	42
44	997558963	Majidova35645@mail.com	43
45	997558412	Aygul86974@mail.com	44
46	997524869	Jamoliddin65@mail.com	45
47	997522211	Karimov2908@mail.com	46
48	997540555	Abdualim9807@mail.com	47
49	9975744767	Iroda6573@mail.com	48
50	997508086	Olimova8976@mail.com	49
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: akmal
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-07-18 01:38:56.491914+05	1	Akmal Azamatovich	1	[{"added": {}}]	7	1
2	2021-07-18 01:39:17.249073+05	1	number - +998973226755  email - qurbonovakmalazamatovich@gmail.com	1	[{"added": {}}]	8	1
3	2021-07-18 01:39:33.82994+05	2	number - +998993606237  email - akmal.q@jafton.com	1	[{"added": {}}]	8	1
4	2021-07-18 02:01:21.581178+05	2	Shahsanam Khujayeva	1	[{"added": {}}]	7	1
5	2021-07-18 02:02:34.464126+05	3	number - +998993606238  email - KhujayevaShohsanam@gmail.com	1	[{"added": {}}]	8	1
6	2021-07-18 02:18:34.871795+05	3	Iskandarova Munira	1	[{"added": {}}]	7	1
7	2021-07-18 02:19:45.338772+05	4	number - 997509035  email - Iskandarovamunira23@mail.com	1	[{"added": {}}]	8	1
8	2021-07-18 02:21:20.974935+05	4	Orziqulov G'ulomjon	1	[{"added": {}}]	7	1
9	2021-07-18 02:22:11.872734+05	5	number - 997508885  email - Orziqulovg'989@mail.com	1	[{"added": {}}]	8	1
10	2021-07-18 02:23:53.998692+05	5	Ziyodov Avazbek	1	[{"added": {}}]	7	1
11	2021-07-18 02:24:30.987362+05	6	number - 997500758  email - Ziyodov7565@mail.com	1	[{"added": {}}]	8	1
12	2021-07-18 02:25:42.813671+05	6	Maxmudova Dilnoza	1	[{"added": {}}]	7	1
13	2021-07-18 02:26:21.11036+05	7	number - 997517039  email - Maxmudova6545@mail.com	1	[{"added": {}}]	8	1
14	2021-07-18 02:27:31.114998+05	7	Esanov Jo'rabek	1	[{"added": {}}]	7	1
15	2021-07-18 02:27:36.661245+05	7	Esanov Jo'rabek	2	[]	7	1
16	2021-07-18 02:28:04.983996+05	8	number - 997508388  email - Esanov5675@mail.com	1	[{"added": {}}]	8	1
17	2021-07-18 02:28:59.441073+05	8	Kenjayev Akbar	1	[{"added": {}}]	7	1
18	2021-07-18 02:29:34.947572+05	9	number - 997532121  email - Kenjayev7665@mail.com	1	[{"added": {}}]	8	1
19	2021-07-18 02:30:38.256312+05	9	Bakiyeva Marjona	1	[{"added": {}}]	7	1
20	2021-07-18 02:31:09.63435+05	10	number - 997503649  email - Bakiyeva8566@mail.com	1	[{"added": {}}]	8	1
21	2021-07-18 02:31:48.399887+05	10	Nurova Zulfiya	1	[{"added": {}}]	7	1
22	2021-07-18 02:32:21.027776+05	11	number - 997501773  email - Nurova6553@mail.com	1	[{"added": {}}]	8	1
23	2021-07-18 02:33:10.17553+05	11	Foziljonov Fazliddin	1	[{"added": {}}]	7	1
24	2021-07-18 02:33:42.296434+05	12	number - 997528142  email - Fazliddin7465@mail.com	1	[{"added": {}}]	8	1
25	2021-07-18 02:35:42.749197+05	12	Suyarqulov Vohid	1	[{"added": {}}]	7	1
26	2021-07-18 02:36:18.170105+05	13	number - 933006898  email - Vohid57699@mail.com	1	[{"added": {}}]	8	1
27	2021-07-18 02:37:01.499358+05	13	Axadov Alisher	1	[{"added": {}}]	7	1
28	2021-07-18 02:37:36.730243+05	14	number - 997506160  email - Alisher6543@mail.com	1	[{"added": {}}]	8	1
29	2021-07-18 02:38:40.017868+05	14	Murtazoyev Dilshod	1	[{"added": {}}]	7	1
30	2021-07-18 02:39:14.651002+05	15	number - 997404035  email - Dilshod34598@mail.com	1	[{"added": {}}]	8	1
31	2021-07-18 02:39:55.327083+05	15	Xasanov Bekzod	1	[{"added": {}}]	7	1
32	2021-07-18 02:40:27.636971+05	16	number - 993610001  email - Xasanov7690@mail.com	1	[{"added": {}}]	8	1
33	2021-07-18 02:41:24.921313+05	16	Rajabova Nargiza	1	[{"added": {}}]	7	1
34	2021-07-18 02:41:57.47657+05	17	number - 997561007  email - Rajabova876@mail.com	1	[{"added": {}}]	8	1
35	2021-07-18 02:42:33.908848+05	17	Sobirova Feruza	1	[{"added": {}}]	7	1
36	2021-07-18 02:43:03.705761+05	18	number - 997556557  email - Sobirova8843@mail.com	1	[{"added": {}}]	8	1
37	2021-07-18 02:43:41.65516+05	18	Abdiyeva Dilorom	1	[{"added": {}}]	7	1
38	2021-07-18 02:44:18.755499+05	19	number - 994554433  email - Abdiyeva3366@mail.com	1	[{"added": {}}]	8	1
39	2021-07-18 02:44:48.812829+05	19	Yarmatova Dilnoza	1	[{"added": {}}]	7	1
40	2021-07-18 02:45:25.834615+05	20	number - 997520252  email - Yarmatova877@mail.com	1	[{"added": {}}]	8	1
41	2021-07-18 02:46:09.783386+05	20	Turdiyeva Ozoda	1	[{"added": {}}]	7	1
42	2021-07-18 02:46:43.273948+05	21	number - 997514508  email - Turdiyeva5746@mail.com	1	[{"added": {}}]	8	1
43	2021-07-18 02:47:11.695583+05	21	Qodirova Kamola	1	[{"added": {}}]	7	1
44	2021-07-18 02:47:41.989617+05	22	number - 995745201  email - Qodirova77878@mail.com	1	[{"added": {}}]	8	1
45	2021-07-18 02:48:10.275412+05	22	Fayzullayeva Zilola	1	[{"added": {}}]	7	1
46	2021-07-18 02:48:43.923593+05	23	number - 990820331  email - Zilola7759@mail.com	1	[{"added": {}}]	8	1
47	2021-07-18 02:49:22.695234+05	23	Suyunova Zakira	1	[{"added": {}}]	7	1
48	2021-07-18 02:49:25.734934+05	23	Suyunova Zakira	2	[]	7	1
49	2021-07-18 02:49:57.184194+05	24	number - 932810091  email - Zakira9974@mail.com	1	[{"added": {}}]	8	1
50	2021-07-18 02:50:33.789132+05	24	Turayeva Feruza	1	[{"added": {}}]	7	1
51	2021-07-18 02:50:57.972781+05	25	number - 997556001  email - Feruza84@mail.com	1	[{"added": {}}]	8	1
52	2021-07-18 02:51:30.302123+05	25	Pogadayeva Anastasiya	1	[{"added": {}}]	7	1
53	2021-07-18 02:51:56.50863+05	26	number - 997558024  email - Anadstasiya5345@mail.com	1	[{"added": {}}]	8	1
54	2021-07-18 02:52:32.251967+05	26	Xazratova Xilola	1	[{"added": {}}]	7	1
55	2021-07-18 02:52:59.385872+05	27	number - 997505662  email - Xilola645@mail.com	1	[{"added": {}}]	8	1
56	2021-07-18 02:53:38.861988+05	27	Xidoyarova Oytulish	1	[{"added": {}}]	7	1
57	2021-07-18 02:54:13.780178+05	28	number - 997582106  email - Xidoyarova655@mail.com	1	[{"added": {}}]	8	1
58	2021-07-18 02:54:42.903762+05	28	Arapbayeva Albina	1	[{"added": {}}]	7	1
59	2021-07-18 02:55:13.580499+05	29	number - 997556214  email - Albina6445@mail.com	1	[{"added": {}}]	8	1
60	2021-07-18 02:55:38.395515+05	29	Kenjayev Jur'at	1	[{"added": {}}]	7	1
61	2021-07-18 02:56:02.131183+05	30	number - 997535577  email - Jurat465@mail.com	1	[{"added": {}}]	8	1
62	2021-07-18 02:56:43.392874+05	30	Toshpo'latova Feruza	1	[{"added": {}}]	7	1
63	2021-07-18 02:57:12.447185+05	31	number - 995757775  email - Toshpolatova434@mail.com	1	[{"added": {}}]	8	1
64	2021-07-18 02:57:37.458825+05	31	O'ktamov Lazizbek	1	[{"added": {}}]	7	1
65	2021-07-18 02:58:12.906021+05	32	number - 995874625  email - Lazizbek$3@mail.com	1	[{"added": {}}]	8	1
66	2021-07-18 02:58:46.275706+05	32	Rustamov Dilmurod	1	[{"added": {}}]	7	1
67	2021-07-18 02:59:22.03346+05	33	number - 997530306  email - Rustamov54@mail.com	1	[{"added": {}}]	8	1
68	2021-07-18 03:00:01.042495+05	33	Mavlonov Abbosjon	1	[{"added": {}}]	7	1
69	2021-07-18 03:00:32.538884+05	34	number - 998337988  email - Abbosjon54@mail.com	1	[{"added": {}}]	8	1
70	2021-07-18 03:01:14.479456+05	34	Ibragimov Shavkat	1	[{"added": {}}]	7	1
71	2021-07-18 03:01:48.429103+05	35	number - 997505892  email - Shavkat654@mail.com	1	[{"added": {}}]	8	1
72	2021-07-18 03:02:11.425927+05	35	Xazratova Nigina	1	[{"added": {}}]	7	1
73	2021-07-18 03:02:42.27209+05	36	number - 997420949  email - Nigina543@mail.com	1	[{"added": {}}]	8	1
74	2021-07-18 03:03:07.542139+05	36	Mustafoyev Umid	1	[{"added": {}}]	7	1
75	2021-07-18 03:03:37.382851+05	37	number - 997576025  email - Umid88764@mail.com	1	[{"added": {}}]	8	1
76	2021-07-18 03:04:06.244495+05	37	Xamdamova Maxliyo	1	[{"added": {}}]	7	1
77	2021-07-18 03:04:35.241133+05	38	number - 995576460  email - Maxliyo65@mail.com	1	[{"added": {}}]	8	1
78	2021-07-18 03:05:10.185751+05	38	Umarov Ikrom	1	[{"added": {}}]	7	1
79	2021-07-18 03:05:42.966352+05	39	number - 997507767  email - Umarov636@mail.com	1	[{"added": {}}]	8	1
80	2021-07-18 03:06:11.318018+05	39	Xalimova Maftuna	1	[{"added": {}}]	7	1
81	2021-07-18 03:06:37.716726+05	40	number - 997575788  email - Xalimova456@mail.com	1	[{"added": {}}]	8	1
82	2021-07-18 03:07:03.629146+05	40	Xojiyeva Zarina	1	[{"added": {}}]	7	1
83	2021-07-18 03:07:41.160941+05	41	number - 997520159  email - Zarina3978@mail.com	1	[{"added": {}}]	8	1
84	2021-07-18 03:08:05.649507+05	41	Ochilon Umar	1	[{"added": {}}]	7	1
85	2021-07-18 03:08:37.390085+05	42	number - 997859691  email - Ochilov63543@mail.com	1	[{"added": {}}]	8	1
86	2021-07-18 03:09:11.86045+05	42	Ziyodova Sitora	1	[{"added": {}}]	7	1
87	2021-07-18 03:09:52.913538+05	43	number - 997537645  email - Sitora5647@mail.com	1	[{"added": {}}]	8	1
88	2021-07-18 03:10:13.597919+05	43	Majidova Elmira	1	[{"added": {}}]	7	1
89	2021-07-18 03:10:41.4196+05	44	number - 997558963  email - Majidova35645@mail.com	1	[{"added": {}}]	8	1
90	2021-07-18 03:11:03.288923+05	44	Raeva Aygul	1	[{"added": {}}]	7	1
91	2021-07-18 03:11:57.750429+05	45	number - 997558412  email - Aygul86974@mail.com	1	[{"added": {}}]	8	1
92	2021-07-18 03:12:35.459661+05	45	Berdiqulov Jamoliddin	1	[{"added": {}}]	7	1
93	2021-07-18 03:13:00.111028+05	46	number - 997524869  email - Jamoliddin65@mail.com	1	[{"added": {}}]	8	1
94	2021-07-18 03:13:27.333524+05	46	Karimov Elyor	1	[{"added": {}}]	7	1
95	2021-07-18 03:13:56.870521+05	47	number - 997522211  email - Karimov2908@mail.com	1	[{"added": {}}]	8	1
96	2021-07-18 03:14:24.008809+05	47	Xaliqulov Abdualim	1	[{"added": {}}]	7	1
97	2021-07-18 03:14:57.813668+05	48	number - 997540555  email - Abdualim9807@mail.com	1	[{"added": {}}]	8	1
98	2021-07-18 03:15:35.836998+05	48	Barakayeva Iroda	1	[{"added": {}}]	7	1
99	2021-07-18 03:16:16.306331+05	49	number - 9975744767  email - Iroda6573@mail.com	1	[{"added": {}}]	8	1
100	2021-07-18 03:16:43.11794+05	49	Olimova Nasiba	1	[{"added": {}}]	7	1
101	2021-07-18 03:17:10.484239+05	50	number - 997508086  email - Olimova8976@mail.com	1	[{"added": {}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: akmal
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	contacts	contacts
8	contacts	userinfo
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: akmal
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-07-18 01:14:32.491267+05
2	auth	0001_initial	2021-07-18 01:14:32.873816+05
3	admin	0001_initial	2021-07-18 01:14:33.465672+05
4	admin	0002_logentry_remove_auto_add	2021-07-18 01:14:33.625749+05
5	admin	0003_logentry_add_action_flag_choices	2021-07-18 01:14:33.651359+05
6	contenttypes	0002_remove_content_type_name	2021-07-18 01:14:33.70733+05
7	auth	0002_alter_permission_name_max_length	2021-07-18 01:14:33.732815+05
8	auth	0003_alter_user_email_max_length	2021-07-18 01:14:33.750177+05
9	auth	0004_alter_user_username_opts	2021-07-18 01:14:33.774353+05
10	auth	0005_alter_user_last_login_null	2021-07-18 01:14:33.800689+05
11	auth	0006_require_contenttypes_0002	2021-07-18 01:14:33.807638+05
12	auth	0007_alter_validators_add_error_messages	2021-07-18 01:14:33.828216+05
13	auth	0008_alter_user_username_max_length	2021-07-18 01:14:33.899126+05
14	auth	0009_alter_user_last_name_max_length	2021-07-18 01:14:33.934499+05
15	auth	0010_alter_group_name_max_length	2021-07-18 01:14:33.958402+05
16	auth	0011_update_proxy_permissions	2021-07-18 01:14:33.985344+05
17	auth	0012_alter_user_first_name_max_length	2021-07-18 01:14:34.010371+05
18	contacts	0001_initial	2021-07-18 01:14:34.245904+05
19	sessions	0001_initial	2021-07-18 01:14:34.515786+05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: akmal
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
7l4z29t0i2ezuips3qhh6alwk3y6mw89	.eJxVjDsOwjAQBe_iGlnr3yahpM8ZInt3wQFkS3FSIe4OkVJA-2bmvdQUtzVPW5NlmlmdlVGn3y1FekjZAd9juVVNtazLnPSu6IM2PVaW5-Vw_w5ybPlbWw4pWgwWEoIbsJOOMDoS9IAgbMUGJHYJDKE3bIiBvPRX11MaDKr3B9TzN7o:1m4qj2:jbVV72fKyfCanKZ1dtTueab-6hxUOJ-7eKwAfdnY5ZE	2021-08-01 01:15:52.93393+05
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: akmal
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: akmal
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: akmal
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: akmal
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: akmal
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: akmal
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: contacts_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: akmal
--

SELECT pg_catalog.setval('public.contacts_contacts_id_seq', 49, true);


--
-- Name: contacts_userinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: akmal
--

SELECT pg_catalog.setval('public.contacts_userinfo_id_seq', 50, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: akmal
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 101, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: akmal
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: akmal
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: contacts_contacts contacts_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.contacts_contacts
    ADD CONSTRAINT contacts_contacts_pkey PRIMARY KEY (id);


--
-- Name: contacts_contacts contacts_contacts_username_key; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.contacts_contacts
    ADD CONSTRAINT contacts_contacts_username_key UNIQUE (username);


--
-- Name: contacts_userinfo contacts_userinfo_email_key; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.contacts_userinfo
    ADD CONSTRAINT contacts_userinfo_email_key UNIQUE (email);


--
-- Name: contacts_userinfo contacts_userinfo_mnumber_key; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.contacts_userinfo
    ADD CONSTRAINT contacts_userinfo_mnumber_key UNIQUE (mnumber);


--
-- Name: contacts_userinfo contacts_userinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.contacts_userinfo
    ADD CONSTRAINT contacts_userinfo_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: contacts_contacts_username_82b5bbe1_like; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX contacts_contacts_username_82b5bbe1_like ON public.contacts_contacts USING btree (username varchar_pattern_ops);


--
-- Name: contacts_userinfo_contact_id_6a823277; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX contacts_userinfo_contact_id_6a823277 ON public.contacts_userinfo USING btree (contact_id);


--
-- Name: contacts_userinfo_email_a1450e62_like; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX contacts_userinfo_email_a1450e62_like ON public.contacts_userinfo USING btree (email varchar_pattern_ops);


--
-- Name: contacts_userinfo_mnumber_7ccdcacb_like; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX contacts_userinfo_mnumber_7ccdcacb_like ON public.contacts_userinfo USING btree (mnumber varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: akmal
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: contacts_userinfo contacts_userinfo_contact_id_6a823277_fk_contacts_contacts_id; Type: FK CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.contacts_userinfo
    ADD CONSTRAINT contacts_userinfo_contact_id_6a823277_fk_contacts_contacts_id FOREIGN KEY (contact_id) REFERENCES public.contacts_contacts(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: akmal
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

