--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Ubuntu 12.3-1.pgdg18.04+1)
-- Dumped by pg_dump version 12.3 (Ubuntu 12.3-1.pgdg18.04+1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: report_pathogenicity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.report_pathogenicity (
    id integer NOT NULL,
    disease character varying(200),
    gene character varying(200),
    variant character varying(200),
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.report_pathogenicity OWNER TO postgres;

--
-- Name: report_pathogenicity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.report_pathogenicity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.report_pathogenicity_id_seq OWNER TO postgres;

--
-- Name: report_pathogenicity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.report_pathogenicity_id_seq OWNED BY public.report_pathogenicity.id;


--
-- Name: report_report; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.report_report (
    id integer NOT NULL,
    pdf character varying(100) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL,
    pathogenicity_id integer NOT NULL,
    sample_id integer NOT NULL
);


ALTER TABLE public.report_report OWNER TO postgres;

--
-- Name: report_report_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.report_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.report_report_id_seq OWNER TO postgres;

--
-- Name: report_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.report_report_id_seq OWNED BY public.report_report.id;


--
-- Name: report_sample; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.report_sample (
    id integer NOT NULL,
    family character varying(200),
    name character varying(200),
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.report_sample OWNER TO postgres;

--
-- Name: report_sample_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.report_sample_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.report_sample_id_seq OWNER TO postgres;

--
-- Name: report_sample_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.report_sample_id_seq OWNED BY public.report_sample.id;


--
-- Name: tutorial_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tutorial_person (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.tutorial_person OWNER TO postgres;

--
-- Name: tutorial_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tutorial_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tutorial_person_id_seq OWNER TO postgres;

--
-- Name: tutorial_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tutorial_person_id_seq OWNED BY public.tutorial_person.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: report_pathogenicity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_pathogenicity ALTER COLUMN id SET DEFAULT nextval('public.report_pathogenicity_id_seq'::regclass);


--
-- Name: report_report id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_report ALTER COLUMN id SET DEFAULT nextval('public.report_report_id_seq'::regclass);


--
-- Name: report_sample id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_sample ALTER COLUMN id SET DEFAULT nextval('public.report_sample_id_seq'::regclass);


--
-- Name: tutorial_person id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorial_person ALTER COLUMN id SET DEFAULT nextval('public.tutorial_person_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add pathogenicity	1	add_pathogenicity
2	Can change pathogenicity	1	change_pathogenicity
3	Can delete pathogenicity	1	delete_pathogenicity
4	Can view pathogenicity	1	view_pathogenicity
5	Can add sample	2	add_sample
6	Can change sample	2	change_sample
7	Can delete sample	2	delete_sample
8	Can view sample	2	view_sample
9	Can add report	3	add_report
10	Can change report	3	change_report
11	Can delete report	3	delete_report
12	Can view report	3	view_report
13	Can add log entry	4	add_logentry
14	Can change log entry	4	change_logentry
15	Can delete log entry	4	delete_logentry
16	Can view log entry	4	view_logentry
17	Can add permission	5	add_permission
18	Can change permission	5	change_permission
19	Can delete permission	5	delete_permission
20	Can view permission	5	view_permission
21	Can add group	6	add_group
22	Can change group	6	change_group
23	Can delete group	6	delete_group
24	Can view group	6	view_group
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add content type	8	add_contenttype
30	Can change content type	8	change_contenttype
31	Can delete content type	8	delete_contenttype
32	Can view content type	8	view_contenttype
33	Can add session	9	add_session
34	Can change session	9	change_session
35	Can delete session	9	delete_session
36	Can view session	9	view_session
37	Can add person	10	add_person
38	Can change person	10	change_person
39	Can delete person	10	delete_person
40	Can view person	10	view_person
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	report	pathogenicity
2	report	sample
3	report	report
4	admin	logentry
5	auth	permission
6	auth	group
7	auth	user
8	contenttypes	contenttype
9	sessions	session
10	tutorial	person
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-08-31 12:06:11.806085+08
2	auth	0001_initial	2020-08-31 12:06:11.960283+08
3	admin	0001_initial	2020-08-31 12:06:12.161037+08
4	admin	0002_logentry_remove_auto_add	2020-08-31 12:06:12.191282+08
5	admin	0003_logentry_add_action_flag_choices	2020-08-31 12:06:12.207541+08
6	contenttypes	0002_remove_content_type_name	2020-08-31 12:06:12.221418+08
7	auth	0002_alter_permission_name_max_length	2020-08-31 12:06:12.227584+08
8	auth	0003_alter_user_email_max_length	2020-08-31 12:06:12.235804+08
9	auth	0004_alter_user_username_opts	2020-08-31 12:06:12.248843+08
10	auth	0005_alter_user_last_login_null	2020-08-31 12:06:12.257878+08
11	auth	0006_require_contenttypes_0002	2020-08-31 12:06:12.262521+08
12	auth	0007_alter_validators_add_error_messages	2020-08-31 12:06:12.271002+08
13	auth	0008_alter_user_username_max_length	2020-08-31 12:06:12.302866+08
14	auth	0009_alter_user_last_name_max_length	2020-08-31 12:06:12.311444+08
15	auth	0010_alter_group_name_max_length	2020-08-31 12:06:12.321854+08
16	auth	0011_update_proxy_permissions	2020-08-31 12:06:12.348003+08
17	report	0001_initial	2020-08-31 12:06:12.416483+08
18	sessions	0001_initial	2020-08-31 12:06:12.493111+08
19	tutorial	0001_initial	2020-09-01 11:07:06.850604+08
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: report_pathogenicity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.report_pathogenicity (id, disease, gene, variant, updated_at) FROM stdin;
1	先天性无痛无汗症（CIPA）	NTRK1	NM_002529.3(NTRK1):c.[44G>A];[1945C>T]	2020-08-21 00:00:00+08
2	成骨不全症（OI）	COL1A1	NM_000088.3(COL1A1):c.769G>A	2020-08-21 00:00:00+08
3	Duchenne肌营养不良（DMD）	DMD	NM_004006.2(DMD):c.[EX46_47del];[0]	2020-08-21 00:00:00+08
4	寻常型鱼鳞病（IV）	FLG	NM_002016.1(FLG):c.3321delA	2020-08-21 00:00:00+08
5	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.3670G>T	2020-08-21 00:00:00+08
6	Wiskott-Aldrich综合征（WAS）	WAS	NM_000377.2(WAS):c.[1378C>T;EX1_2del]	2020-08-21 00:00:00+08
7	粘多糖贮积症II型（MPS2）	IDS	NM_000202.6(IDS):c.[EX7_8del];[0]	2020-08-21 00:00:00+08
8	常染色体隐性多囊肾病（ARPKD）	PKHD1	-	2020-08-21 00:00:00+08
9	ADA缺陷性严重联合免疫缺陷病 (ADA-SCID)	ADA	NM_000022.2(ADA):c.[646G>A];[704G>A]	2020-08-21 00:00:00+08
10	智力低下	16p13.11/2q37.2-37.3	\N	2020-08-21 00:00:00+08
11	脊髓型肌萎缩症（SMA）	SMN1	NM_000344.3(SMN1):c.[EX7del];[EX7del]	2020-08-21 00:00:00+08
12	Duchenne肌营养不良（DMD）	DMD	NM_004006.2(DMD):c.[EX45_51del];[0]	2020-08-21 00:00:00+08
13	多发性外生性骨疣I型（EXT1）	EXT1	NM_000127.2(EXT1):c.1164+1G>A	2020-08-21 00:00:00+08
14	Duchenne肌营养不良（DMD）	\N	-	2020-08-21 00:00:00+08
15	X-连锁严重联合免疫缺陷（X-SCID）	IL2RG	NM_000206.2(IL2RG):c.[250A>G];[0]	2020-08-21 00:00:00+08
16	蚕豆病	\N	-	2020-08-21 00:00:00+08
17	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.12448C>T	2020-08-21 00:00:00+08
18	Wilson病（WND）	ATP7B	NM_000053.3(ATP7B):c.[2975C>T];[3605C>G]	2020-08-21 00:00:00+08
19	智力障碍（ID）	GRIN2B	NM_000834.3(GRIN2B):c.2450A>G	2020-08-21 00:00:00+08
20	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.7288C>T	2020-08-21 00:00:00+08
21	耳聋	GJB2/SLC26A4	NM_004004.5(GJB2):c.[235delC];[235delC]+NM_000441.1(SLC26A4):c.[1286C>A];[1751C>T]	2020-08-21 00:00:00+08
22	假性软骨发育不全（PSACH）	COMP	NM_000095.2(COMP):c.1447delinsTCCT	2020-08-21 00:00:00+08
23	Wiskott-Aldrich综合征（WAS）	WAS	NM_000377.2(WAS):c.[1338+1G>A];[0]	2020-08-21 00:00:00+08
24	X-连锁鱼鳞病（XLI）	STS	NM_000351.4(STS):c.[EX1_10del];[0]	2020-08-21 00:00:00+08
25	先天性无痛无汗症（CIPA）	NTRK1	NM_002529.3(NTRK1):c.[963delG];[851-33T>A]	2020-08-21 00:00:00+08
26	X-连锁严重联合免疫缺陷（X-SCID）	IL2RG	NM_000206.2(IL2RG):c.[509T>A];[0]	2020-08-21 00:00:00+08
27	脊髓性肌萎缩症（SMA）	SMN1	NM_000344.3(SMN1):c.[EX7del];[EX7del]	2020-08-21 00:00:00+08
28	枫糖尿病Ia型（MSUD-Ia）	BCKDHA	NM_000709.3(BCKDHA):c.[308T>C];[794G>C]	2020-08-21 00:00:00+08
29	常染色体隐性多囊肾病（ARPKD）	PKHD1	NM_138694.3(PKHD1):c.[8518C>T];[EX19del]	2020-08-21 00:00:00+08
30	Wilson病（WND）	ATP7B	NM_000053.3(ATP7B):c.[2333G>T];[3809A>G]	2020-08-21 00:00:00+08
31	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.9578C>T	2020-08-21 00:00:00+08
32	变异分类后取消检测	LRBA	xc.[6667+5C>A];[7016G>A]	2020-08-21 00:00:00+08
33	眼皮肤白化病I型（OCA1）	TYR	NM_000372.4(TYR):c.[832C>T];[1199G>T]	2020-08-21 00:00:00+08
34	结节性硬化症1型（TSC1）	TSC1	NM_000368.4(TSC1):c.2503-2delA	2020-08-21 00:00:00+08
35	脊髓性肌萎缩症（SMA）	SMN1	NM_000344.3(SMN1):c.[EX7_8del];[EX7_8del]	2020-08-21 00:00:00+08
36	肾上腺脑白质营养不良（ALD）	ABCD1	NM_000033.3(ABCD1):c.[1850G>A];[0]	2020-08-21 00:00:00+08
37	Cornelia de Lange综合征2型（CdLS2）	SMC1A	NM_006306.3(SMC1A):c.[2342G>A];[0]	2020-08-21 00:00:00+08
38	Loeys-Dietz综合征1型（LDS1）	TGFBR1 	NM_004612.3(TGFBR1):c.1460G>A	2020-08-21 00:00:00+08
39	Duchenne肌营养不良（DMD）	DMD	NM_004006.2(DMD):c.[EX45_48del];[0]	2020-08-21 00:00:00+08
40	遗传性压迫易感性神经病（HNPP）	PMP22	NM_000304.3(PMP22):c.EX1_5del	2020-08-21 00:00:00+08
41	α-地中海贫血	HBA1/HBA2	(αα/--SEA)/(αα/-α3.7)	2020-08-21 00:00:00+08
42	X-连锁Alport综合征（XLAS）	COL4A5	LRG_232t1(COL4A5):c.1779+1G>A	2020-08-21 00:00:00+08
43	马凡氏综合征（MFS）	FBN1	NM_000138.4(FBN1):c.4955G>A	2020-08-21 00:00:00+08
44	戊二酸血症1型（GA-1）	GCDH	NM_000159.3(GCDH):c.[416C>G];[1244-2A>C]	2020-08-21 00:00:00+08
45	X-连锁Alport综合征（XLAS）	COL4A5	LRG_232t1(COL4A5):c.1834G>C	2020-08-21 00:00:00+08
46	Leber先天性黑矇10型（LCA10）	CEP290	NM_025114.3(CEP290):c.[1645C>T];[4661_4663delAAG]	2020-08-21 00:00:00+08
47	Alagille综合征1型（ALGS1）	JAG1	NG_007496.1(JAG1):c.2917-8C>A	2020-08-21 00:00:00+08
48	常染色体隐性多囊肾病（ARPKD）	PKHD1	xc.11314C>T;c.10445G>A;c.9472A>G	2020-08-21 00:00:00+08
49	Omenn综合征	RAG1	xc.2459A>G	2020-08-21 00:00:00+08
50	致死性发育异常1型（TD1）	FGFR3	NM_000142.4(FGFR3):c.1118A>G	2020-08-21 00:00:00+08
51	X-连锁无丙种球蛋白血症1型（XLA1）	BTK	NM_000061.2(BTK):c.[371G>A];[0]	2020-08-21 00:00:00+08
52	亚历山大病（ALXDRD）	GFAP	NM_002055.4(GFAP):c.236G>A	2020-08-21 00:00:00+08
53	肢带型肌营养不良2B型（LGMD2B）	DYSF	NM_003494.3(DYSF):c.[1375dup];[5570A>C]	2020-08-21 00:00:00+08
54	家族性高胆固醇血症（FH）	LDLR	NM_000527.4(LDLR):c.1448G>A	2020-08-21 00:00:00+08
55	糖原累积症Ia型（GSD1A）	G6PC	NM_000151.3(G6PC):c.[648G>T];[=]	2020-08-21 00:00:00+08
56	X连锁淋巴增殖综合征1型（XLP1）	SH2D1A	NM_002351.4(SH2D1A):c.[251_255delTTTCA];[=]	2020-08-21 00:00:00+08
57	多发性内分泌腺瘤2型（MEN2）	RET	NM_020975.4(RET):c.1901G>A	2020-08-21 00:00:00+08
58	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.350T>C	2020-08-21 00:00:00+08
59	无虹膜症（AN）	PAX6	NM_000280.4(PAX6): c.120C>A	2020-08-21 00:00:00+08
60	致死性发育异常1型（TD1）	FGFR3	NM_000142.4(FGFR3):c.742C>T	2020-08-21 00:00:00+08
61	常染色体隐性Alport综合征（ARAS）	CLO4A4	NM_000092.4(COL4A4):c.[659del];[=]	2020-08-21 00:00:00+08
62	Duchenne肌营养不良（DMD）	DMD	NM_004006.2(DMD):c.[2656C>T];[0]	2020-08-21 00:00:00+08
63	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.1987C>T	2020-08-21 00:00:00+08
64	耳聋	GJB2	NM_004004.5(GJB2):c.[109G>A];[109G>A]	2020-08-21 00:00:00+08
65	脊髓性肌萎缩症（SMA）	SMN1	NM_000344.3(SMN1):c.[551-552insA];[EX7del]	2020-08-21 00:00:00+08
66	Duchenne肌营养不良（DMD）	DMD	NM_004006.2(DMD):c.[6429G>A];[0]	2020-08-21 00:00:00+08
67	遗传性乳腺癌和卵巢癌综合征（HBOC）	BRCA2	NM_000059.3(BRCA2):c.6986C>T	2020-08-21 00:00:00+08
68	X-连锁严重联合免疫缺陷（X-SCID）	IL2RG	NM_000206.2(IL2RG):c.202G>A	2020-08-21 00:00:00+08
69	耳聋	SLC17A8	\tNM_139319.2(SLC17A8):c.1120G>T	2020-08-21 00:00:00+08
70	携带者检测	CYBB	c.1210_1212dup	2020-08-21 00:00:00+08
71	Duchenne肌营养不良（DMD）	DMD	NM_004006.2(DMD):c.[5922+5G>T];[5139A>T]	2020-08-21 00:00:00+08
72	ADA缺陷性严重联合免疫缺陷病 (ADA-SCID)	ADA	NM_000022.2(ADA):c.[747dupT];[905C>T]	2020-08-21 00:00:00+08
73	马凡氏综合征（MFS）	FBN1	NM_000138.4(FBN1):c.4469A>C	2020-08-21 00:00:00+08
74	肾消耗病3型 (Nephronophthisis 3)	NPHP3	xc.2719-2720insGCTGAGTT/c.3697-7del	2020-08-21 00:00:00+08
75	结节性硬化症2型（TSC2）	TSC2	NM_000548.3(TSC2):c.894del	2020-08-21 00:00:00+08
76	眼皮肤白化病I型（OCA1）	TYR	NM_000372.4(TYR):c.[230G>A];[929dup]	2020-08-21 00:00:00+08
77	X-连锁无丙种球蛋白血症1型（XLA1）	BTK	NM_000061.2(BTK):c.[EX11-15del];[0]	2020-08-21 00:00:00+08
78	粘多糖贮积症IIIA型（MPS3A）	SGSH	NM_000199.3(SGSH):c.[302T>C];[302T>C]	2020-08-21 00:00:00+08
79	寻常型鱼鳞病（IV）	FLG	NM_002016.1(FLG):c.10624delG	2020-08-21 00:00:00+08
80	寻常型鱼鳞病（IV）	FLG	NM_002016.1(FLG):c.[3321del];[7945del]	2020-08-21 00:00:00+08
81	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.12646C>T	2020-08-21 00:00:00+08
82	神经纤维瘤病I型（NF1）	NF1	NM_000267.3(NF1):c.3250_3254dup	2020-08-21 00:00:00+08
83	主动脉瓣上狭窄（SVAS）	ELN	NM_001278939.1(ELN):c.1708C>T	2020-08-21 00:00:00+08
84	Omenn综合征	RAG2	NM_000536.3(RAG2):c.[104G>C];[1295C>T]	2020-08-21 00:00:00+08
85	耳聋	GJB2	NM_004004.5(GJB2):c.[235del];[508_511dup]	2020-08-21 00:00:00+08
86	α-地中海贫血	HBA1/HBA2	\N	2020-08-21 00:00:00+08
87	粘多糖贮积症I型（MPS1）	IDUA	NM_000203.3(IDUA):c.[536C>G];[1598C>T]	2020-08-21 00:00:00+08
88	高IgM免疫缺陷1型（HIGM1）	CD40LG	NM_000074.2(CD40LG):c.[676G>A];[0]	2020-08-21 00:00:00+08
89	卵巢早衰（POF）	DIAPH2	NM_006729.4(DIAPH2):c.3272G>A	2020-08-21 00:00:00+08
90	幽门闭锁性大疱性表皮松解症（EB-PA）	ITGB4	NM_001005731.2(ITGB4):c.[754C>T];[754C>T]	2020-08-21 00:00:00+08
91	Nagashima型掌跖角化症（PPKN）	SERPINB7	NM_003784.3(SERPINB7):c.[522dup];[796C>T]	2020-08-21 00:00:00+08
92	复合氧化磷酸化缺陷11 型（COXPD11）	RMND1	NM_017909.3(RMND1):c.[67C>T];[265C>T]	2020-08-21 00:00:00+08
93	神经纤维瘤病I型（NF1）	NF1	NM_000267.3(NF1):c.6789_6792del	2020-08-21 00:00:00+08
94	结节性硬化症2型（TSC2）	TSC2	NM_000548.3(TSC2):c.4752delG	2020-08-21 00:00:00+08
95	Kabuki综合征2型（KABUK2）	KDM6A	NM_021140.2(KDM6A):c.3521G>A	2020-08-21 00:00:00+08
96	眼皮肤白化病I型（OCA1）	TYR	NM_000372.4(TYR):c.[346C>T];[896G>A]	2020-08-21 00:00:00+08
97	非霍奇金淋巴瘤	MSH2	NM_000251.2(MSH2):c.2223A>C	2020-08-21 00:00:00+08
98	Emery-Dreifuss肌营养不良2型（EDMD2）	LMNA	NM_170707.3(LMNA):c.1580G>C	2020-08-21 00:00:00+08
99	Leber先天性黑矇1型	GUCY2D	NM_000180.3(GUCY2D):c.[2783G>A];[2783G>A]	2020-08-21 00:00:00+08
100	Duchenne肌营养不良（DMD）	DMD	NM_004006.2(DMD):c.[4729C>T];[0]	2020-08-21 00:00:00+08
101	手指末端畸形，并指	\N	\N	2020-08-21 00:00:00+08
102	蚕豆病、高胆红素血症	G6PD/UGT1A1	NM_000402.4(G6PD):c.678C>G+NM_000463.2(UGT1A1):c.211G>A	2020-08-21 00:00:00+08
103	黏脂贮积症II α/β型（ML II α/β）	GNPTAB	NM_024312.4(GNPTAB):c.[99del];[2533C>T]	2020-08-21 00:00:00+08
104	脑铁累积性神经变性2A型（NBIA2A）	PLA2G6	NM_003560.2(PLA2G6):c.[1077G>A];[1077G>A]	2020-08-21 00:00:00+08
105	X-连锁Alport综合征（XLAS）	COL4A5	LRG_232t1(COL4A5):c.2062C>T	2020-08-21 00:00:00+08
106	多囊肾病2型（PKD2）	PKD2	NG_008604.1(PKD2):c.595_595+14del	2020-08-21 00:00:00+08
107	神经纤维瘤病I型（NF1）	NF1	NM_000267.3(NF1):c.1466A>G	2020-08-21 00:00:00+08
108	Leri-Weill软骨发育不良（LWD）	SHOX	NG_009385.2(SHOX):c.633+2T>C	2020-08-21 00:00:00+08
109	马凡氏综合征（MFS）	FBN1	NG_008805.2(FBN1):c.4210+1G>A	2020-08-21 00:00:00+08
110	Schaaf-Yang 综合征（SHFYNG）	MAGEL2	NM_019066.4(MAGEL2):c.2895G>A	2020-08-21 00:00:00+08
111	血友病B（HEMB）	F9	NM_000133.3(F9):c.[881G>A];[0]	2020-08-21 00:00:00+08
112	乳腺癌	-	-	2020-08-21 00:00:00+08
113	脆性X综合征	FMR1	NM_002024.5(FMR1):c.[-128_-126[(30)]];[-128_-126[(79)]]	2020-08-21 00:00:00+08
114	骨骼发育不良	EVC2	NM_147127.4(EVC2):c.[1014_1015del];[2263C>T]	2020-08-21 00:00:00+08
115	X连锁免疫失调-多内分泌病变-肠病（IPEX）	FOXP3	NM_014009.3(FOXP3):c.[1010G>A];[0]	2020-08-21 00:00:00+08
116	丙酮酸激酶缺乏症	PKLR	NM_000298.5(PKLR):c.[488G>T];[1607G>A]	2020-08-21 00:00:00+08
117	Dent病1型	CLCN5	NM_000084.4(CLCN5):c.[638C>T];[0]	2020-08-21 00:00:00+08
118	胎儿骨发育异常可能	FLNB	NM_001164317.1(FLNB):c.[2183C>T];[7553C>T]	2020-08-21 00:00:00+08
119	α-地中海贫血	HBA1/HBA2	αα/--SEA	2020-08-21 00:00:00+08
120	Wiskott-Aldrich综合征（WAS）	WAS	NM_000377.2(WAS):c.[400G>A];[0]	2020-08-21 00:00:00+08
121	鸟氨酸氨甲酰转移酶缺乏症	OTC	NG_008471.1(OTC):c.[663+1G>A];[0]	2020-08-21 00:00:00+08
122	双侧额顶叶多小脑回畸形（BFPP）	ADGRG1	NM_001145771.2(ADGRG1):c.[215del];[280T>G]	2020-08-21 00:00:00+08
123	T- B+ NK+型严重联合免疫缺陷 (T- B+ NK+ SCID)	IL7R	NM_002185.3(IL7R):c.[64dup];[361dup]	2020-08-21 00:00:00+08
124	氨甲酰磷酸合成酶I缺乏症	CPS1	NM_001875.4(CPS1):c.[1799G>A];[4088_4099del]	2020-08-21 00:00:00+08
125	Li-Fraumeni综合征1型 (LFS1)	TP53	NM_000546.5(TP53):c.685dup	2020-08-21 00:00:00+08
126	遗传性乳腺癌和卵巢癌综合征（HBOC）	BRCA1	NM_007294.3(BRCA1):c.5470_5477del	2020-08-21 00:00:00+08
127	心面皮综合征1 型（CFC1）	BRAF	NM_004333.4(BRAF):c.1741A>G	2020-08-21 00:00:00+08
128	多发性外生性骨疣I型（EXT1）	EXT1	NM_002185.3(EXT1):c.1536+1G>A	2020-08-21 00:00:00+08
129	常染色体隐性骨硬化病1型 (OPTB1)	TCIRG1	NM_006019.3(TCIRG1):c.[909C>A];[2008C>T]	2020-08-21 00:00:00+08
130	神经纤维瘤病I型（NF1）	NF1	NM_000267.3(NF1):c.549_552del	2020-08-21 00:00:00+08
131	结节性硬化症1型 (TSC1)	TSC1	NM_000368.4(TSC1):c.2283C>A	2020-08-21 00:00:00+08
132	甲基丙二酸尿症MUT缺陷型	MUT	NM_000255.3(MUT):c.[729_730insTT];[1280G>A]	2020-08-21 00:00:00+08
133	Fanconi贫血互补群A（FANCA）	FANCA	NM_000135.2(FANCA):c.[989_995del];[3971C>T]	2020-08-21 00:00:00+08
134	X连锁淋巴增殖综合征1 型（XLP1）	SH2D1A	NM_002351.4(SH2D1A):c.192G>A	2020-08-21 00:00:00+08
135	Omenn综合征	RAG2	NM_000536.3(RAG2):c.[104G>T];[104G>T]	2020-08-21 00:00:00+08
136	肾上腺脑白质营养不良（ALD）	ABCD1	NM_000033.3(ABCD1):c.1538A>G	2020-08-21 00:00:00+08
137	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.6583_6589del	2020-08-21 00:00:00+08
138	耳聋	GJB2	NM_004004.5(GJB2):c.[235del];[235del]	2020-08-21 00:00:00+08
139	Duchenne肌营养不良（DMD）	DMD	NG_012232.1(DMD):c.[826_831+1delinsTCTA];[0]	2020-08-21 00:00:00+08
140	眼皮肤白化病I型（OCA1）	TYR	NM_000372.4(TYR):c.[157G>T];[297C>G]	2020-08-21 00:00:00+08
141	线粒体肌病-脑病-乳酸中毒-卒中样发作综合征（MELAS）	MTTL1	NC_012920.1(MTTL1):m.3302A>G	2020-08-21 00:00:00+08
142	Angelman综合征（AS）	UBE3A	NM_130838.1(UBE3A):c.2142dup	2020-08-21 00:00:00+08
143	血友病A型（HEMA）	F8	NM_000132.3(F8):c.3637del	2020-08-21 00:00:00+08
144	假阴道会阴阴囊性尿道下裂（PPSH）	SRD5A2	NM_000384.3(SRD5A2):c.[607G>A];[680G>A]	2020-08-21 00:00:00+08
145	X连锁智力障碍-低张力面容综合征1型（MRXHF1）	ATRX	NM_000489.4(ATRX):c.4861A>G	2020-08-21 00:00:00+08
146	先天性全身脂肪营养不良Ⅱ型(CGL2)	BSCL2	NM_001122955.3(BSCL2):c.[405-11A>G];[EX2 del]	2020-08-21 00:00:00+08
147	精氨酰琥珀酸尿症	ASL	NM_000048.3(ASL):c.[2T>A];[446+1G>A]	2020-08-21 00:00:00+08
148	视神经萎缩1型（OPA1）	OPA1	NM_015560.2(OPA1):c.1198C>G	2020-08-21 00:00:00+08
149	神经纤维瘤病I型（NF1）	NF1	NM_000267.3(NF1):c.7258+1G>A	2020-08-21 00:00:00+08
150	大疱性表皮松懈症（EB）	COL7A1	NM_000094.3(COL7A1):c.[4089del];[6474_6475insCCTGGCT]	2020-08-21 00:00:00+08
151	多发性外生性骨疣II型（EXT2）	EXT2	NM_207122.1(EXT2):c.726-2_729delinsT	2020-08-21 00:00:00+08
152	肢带型肌营养不良2B型（LGMD2B）	DYSF	NM_001130987.1(DYSF):c.[4254dup];[3034T>C]	2020-08-21 00:00:00+08
153	极长链酰基辅酶A脱氢酶缺陷症	ACADVL	NM_000018.3(ACADVL):c.[779C>T];[1269+1G>C]	2020-08-21 00:00:00+08
154	血友病A型（HEMA）	F8	NM_000132.3(F8):c.2097G>A	2020-08-21 00:00:00+08
155	脆性X综合征	FMR1	NM_002024.5(FMR1):c.[-128_-126[(450)]];[0]	2020-08-21 00:00:00+08
156	Van der Woude综合征1型	IRF6	NM_006147.3(IRF6):c.11del	2020-08-21 00:00:00+08
157	1p36微缺失综合征	-	arr[hg19] 1p36.33p36.22(849466-10017421)x1	2020-08-21 00:00:00+08
158	Leber先天性黑矇1型（LCA1）	GUCY2D	NM_000180.3(GUCY2D):c.[835G>A];[1477del]	2020-08-21 00:00:00+08
159	白化病	TYR	NM_000372.4(TYR):c.[896G>A];[929dup]	2020-08-21 00:00:00+08
160	白内障2,多种类型（CTRCT2）	CRYGC	\N	2020-08-21 00:00:00+08
161	多发性先天异常-张力过低-癫痫综合征2型（MCAHS2）	PIGA	NM_002641.3(PIGA):c.[98A>G];[0]	2020-08-21 00:00:00+08
162	婴儿肌张力过低伴精神运动发育迟滞和特殊面容2型（IHPRF2）	UNC80	NM_032504.1(UNC80):c.[4963C>T];[8385C>G]	2020-08-21 00:00:00+08
163	幼婴癫痫性脑病6型（EIEE6）	SCN1A	NM_001165963.1(SCN1A):c.1154A>T	2020-08-21 00:00:00+08
164	Nance-Horan 综合征(NHS)	NHS	\N	2020-08-21 00:00:00+08
165	眼皮肤白化病I型（OCA1）	TYR	NM_000372.4(TYR):c.[929dup];[929dup]	2020-08-21 00:00:00+08
166	X-连锁Alport综合征（XLAS）	COL4A5	LRG_232t1(COL4A5):c.4198_4198+6del	2020-08-21 00:00:00+08
167	LIG4综合征	LIG4	NM_002312.3(LIG4):c.[833G>T];[1271_1275del]	2020-08-21 00:00:00+08
168	17-α-羟化酶缺乏型先天性肾上腺增生	CYP17A1	\N	2020-08-21 00:00:00+08
169	常染色体隐性多囊肾病（ARPKD）	PKHD1	NM_138694.3(PKHD1):c.[1123C>T];[2947T>C]	2020-08-21 00:00:00+08
170	白内障/高胆固醇血症	\N	\N	2020-08-21 00:00:00+08
171	鸟氨酸氨甲酰转移酶缺乏症（OTCD）	OTC	NM_000531.5(OTC):c.(?_-1)_(*1_?)del	2020-08-21 00:00:00+08
172	糖原累积症	G6PC	\N	2020-08-21 00:00:00+08
173	视网膜色素变性19	ABCA4	NM_000350.2(ABCA4):c.1017G>A	2020-08-21 00:00:00+08
174	神经纤维瘤病I型（NF1）	NF1	NM_000267.3(NF1):c.4537C>T	2020-08-21 00:00:00+08
175	视网膜色素变性	CNGA1	NM_000087.3(CNGA1):c.265del	2020-08-21 00:00:00+08
176	白化病	TYR	NM_000372.4(TYR):c.[230_232dup];[896G>A]	2020-08-21 00:00:00+08
177	Duchenne肌营养不良（DMD）	DMD	NM_004006.2(DMD):c.193delinsCA	2020-08-21 00:00:00+08
178	Wilson病（WND）	ATP7B	NM_000053.3(ATP7B):c.[4003G>C];[2333G>T]	2020-08-21 00:00:00+08
179	软骨发育不全II型（ACG2）	COL2A1	NM_001844.4(COL2A1):c.1376G>A	2020-08-21 00:00:00+08
180	鱼鳞病	STS	\N	2020-08-21 00:00:00+08
181	幼婴癫痫性脑病6型（EIEE6）	SCN1A	NM_001165963.1(SCN1A):c.4484del	2020-08-21 00:00:00+08
182	鱼鳞病	STS	\N	2020-08-21 00:00:00+08
183	视网膜色素变性3型（RP3）	RPGR	NM_000328.2(RPGR):c.1477del	2020-08-21 00:00:00+08
184	视力异常	ROM1	\N	2020-08-21 00:00:00+08
185	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.8791G>A	2020-08-21 00:00:00+08
186	T- B+ NK+常染色体隐性严重联合免疫缺陷	IL7R	LRG_74t1(IL7R):c.[354C>A];[537+1G>A]	2020-08-21 00:00:00+08
187	先天性杆状体肌病	NEB	NM_001271208.1(NEB):c.[18676C>T];[3879+1G>A]	2020-08-21 00:00:00+08
188	X-连锁严重联合免疫缺陷（X-SCID）	IL2RG	NM_000206.2(IL2RG):c.718T>C	2020-08-21 00:00:00+08
189	眼皮肤白化病II型（OCA2）	OCA2	NM_000275.2(OCA2):c.[2195C>G];[2363C>T]	2020-08-21 00:00:00+08
190	成骨不全征（OI）	COL1A1	NM_000088.3(COL1A1):c.2461G>A	2020-08-21 00:00:00+08
191	短肋胸廓发育不良3型伴或不伴多指/趾畸形	DYNC2H1	NM_001080463.1(DYNC2H1):c.[8190G>T];[9389_9390del]	2020-08-21 00:00:00+08
192	肾上腺脑白质营养不良	ABCD1	NM_000033.3(ABCD1):c.290A>G	2020-08-21 00:00:00+08
193	Angelman综合征（AS）	UBE3A	NM_130838.1(UBE3A):c.2444C>G	2020-08-21 00:00:00+08
194	神经纤维瘤病I型（NF1）	NF1	LRG_214t1(NF1):c.5546+2T>C	2020-08-21 00:00:00+08
195	炎性肠病28型（IBD28）	IL10RA	NM_001558.3(IL10RA):c.301C>T	2020-08-21 00:00:00+08
196	异染性脑白质营养不良（MLD）	ARSA	NM_000487.5(ARSA):c.960G>A	2020-08-21 00:00:00+08
197	肾病综合征1型（NPHS1）	NPHS1	NM_004646.3(NPHS1):c.[1016C>T];[3478C>T]	2020-08-21 00:00:00+08
198	X-连锁Alport综合征（XLAS）	COL4A5	LRG_232t1(COL4A5):c.3613G>A	2020-08-21 00:00:00+08
199	先天性眼外肌纤维化	KIF21A	NM_017641.3(KIF21A):c.2719C>T和NM_017641.3(KIF21A):c.2821C>T	2020-08-21 00:00:00+08
200	眼皮肤白化病I型（OCA1）	TYR	NG_008748.1(TYR):c.[820-3C>G];[929dup]	2020-08-21 00:00:00+08
201	21-羟化酶缺陷性先天性肾上腺皮质增生症	CYP21A2	NG_007941.3(CYP21A2):c.[293-13C>G];[(?_-1)_(*1_?)del]	2020-08-21 00:00:00+08
202	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.3067C>T	2020-08-21 00:00:00+08
203	X-连锁秃发性小棘毛囊角化病（KFSDX）	MBTPS2	NM_015884.3(MBTPS2):c.766G>A	2020-08-21 00:00:00+08
204	多发性内分泌腺瘤2型（MEN2）	RET	NM_020975.4(RET):c.1900T>C	2020-08-21 00:00:00+08
205	家族性高胆固醇血症（FH）	LDLR	NM_000527.4(LDLR):c.1747C>T	2020-08-21 00:00:00+08
206	甲基丙二酸尿症MUT缺陷型	MUT	NM_000255.3(MUT):c.322C>T	2020-08-21 00:00:00+08
207	极长链乙酰辅酶A脱氢酶缺乏症（ACADVLD）	ACADVL	NM_000018.3(ACADVL):c.[1305A>T];[779C>T]	2020-08-21 00:00:00+08
208	神经纤维瘤病I型（NF1）	NF1	LRG_214t1(NF1):c.6792C>A	2020-08-21 00:00:00+08
209	X连锁智力障碍-低张力面容综合征1型（MRXHF1）	ATRX	NM_000489.4（ATRX）:c.745G>C	2020-08-21 00:00:00+08
210	神经纤维瘤病I型（NF1）	NF1	LRG_214t1(NF1):c.2409+2T>A	2020-08-21 00:00:00+08
211	Duchenne肌营养不良（DMD）	DMD	\tNM_004006.2(DMD):c.3259C>T	2020-08-21 00:00:00+08
212	X连锁选择性牙齿发育不全1型（STHAGX1）	EDA	NM_001399.4(EDA):c.1013C>T	2020-08-21 00:00:00+08
213	Ullrich先天性肌营养不良1型（ UCMD1）	COL6A2	NM_001849.3(COL6A2):c.2515_2516del	2020-08-21 00:00:00+08
214	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.7670A>G	2020-08-21 00:00:00+08
215	X-连锁无丙种球蛋白血症1型（XLA1）	BTK	NM_000061.2(BTK):c.292T>G	2020-08-21 00:00:00+08
216	多发性外生性骨疣I型（EXT1）	EXT1	LRG_493t1(EXT1):c.1722+1_1722+5del	2020-08-21 00:00:00+08
217	Omenn综合征	RAG1	NM_000448.2(RAG1):c.[992dup];[1750C>T]	2020-08-21 00:00:00+08
218	结节性硬化症2型（TSC2）	TSC2	NM_000548.3(TSC2):c.4646A>G	2020-08-21 00:00:00+08
219	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.5401C>T	2020-08-21 00:00:00+08
220	Pelizaeus-Merzbacher病（PMD）	PLP1	NM_000533.4(PLP1):c.247G>A	2020-08-21 00:00:00+08
221	先天性糖基化障碍Im型（CDG1M）	DOLK	NM_014908.3(DOLK):c.1012A>G	2020-08-21 00:00:00+08
222	家族肥厚型心肌病4型（CMH4）	MYBPC3	NM_000256.3(MYBPC3):c.1377del	2020-08-21 00:00:00+08
223	Pierson综合征	LAMB2	NM_002292.3(LAMB2):c.185T>G	2020-08-21 00:00:00+08
224	X连锁智力障碍-低张力面容综合征1型（MRXHF1）	ATRX	NM_000489.4(ATRX):c.3392G>A	2020-08-21 00:00:00+08
225	眼皮肤白化病II型（OCA2）	OCA2	NG_009846.1(OCA2):c.[632C>T];[1182+1G>A]	2020-08-21 00:00:00+08
226	渗出性玻璃体视网膜病5型（EVR5）	TSPAN12	\tNM_012338.3(TSPAN12):c.566G>A	2020-08-21 00:00:00+08
227	MECKEL综合症1型（MKS1）	MKS1	NM_017777.3(MKS1):c.[844C>T];[203del]	2020-08-21 00:00:00+08
228	渗出性玻璃体视网膜病5型（EVR5）	TSPAN12	NM_012338.3(TSPAN12):c.695del	2020-08-21 00:00:00+08
229	常染色体隐性前庭导水管扩大性耳聋4型（DFNB4）	SLC26A4	NG_008489.1(SLC26A4_v001):c.[919-2A>G];[2168A>G]	2020-08-21 00:00:00+08
230	Charcot-Marie-Tooth病1E型（CMT1E）	PMP22	NM_000304.3(PMP22):c.117G>A	2020-08-21 00:00:00+08
231	假阴道会阴阴囊性尿道下裂（PPSH）	SRD5A2	NM_000348.3(SRD5A2):c.[586G>A];[607G>A]	2020-08-21 00:00:00+08
232	家族性高胰岛素血症性低血糖症（HHF1）	ABCC8	NM_000352.4(ABCC8):c.[2857del];[4284del]	2020-08-21 00:00:00+08
233	X-连锁鱼鳞病（XLI）	STS	NM_000351：EX1_10 DEL	2020-08-21 00:00:00+08
234	21-羟化酶缺陷性先天性肾上腺皮质增生症	CYP21A2	NG_007941.3(CYP21A2):c.[377C>G];[293-13C>G]	2020-08-21 00:00:00+08
235	成骨不全征（OI）	COL1A1	NM_000088.3(COL1A1):c.3082G>A	2020-08-21 00:00:00+08
236	常染色体隐性骨硬化症4型（OPTB4）	CLCN7	NM_001287.5(CLCN7):c.[379T>G];[791G>A]	2020-08-21 00:00:00+08
237	血友病A型（HEMA）	F8	NM_000132.3(F8):c.5881T>C	2020-08-21 00:00:00+08
238	泛酸激酶相关神经退行性病变（PKAN）	PANK2	NM_153638.2(PANK2):c.[445G>T];[1301C>T]	2020-08-21 00:00:00+08
239	多发性先天异常-张力过低-癫痫综合征2 型（MCAHS2）	PIGA	NM_002641.3(PIGA):c.242G>A	2020-08-21 00:00:00+08
240	婴儿型低磷酸酯酶症	ALPL	NG_008940.1(ALPL_v001):c.[997+1G>T];[1282C>T]	2020-08-21 00:00:00+08
241	裸淋巴细胞综合症2型（BLS）	CIITA	NM_000246.3(CIITA):c.[3223C>T][1240del]	2020-08-21 00:00:00+08
242	苯丙酮尿症（PKU）	PAH	NM_000277.2(PAH):c.[728G>A];[782G>A]	2020-08-21 00:00:00+08
243	成骨不全征（OI）	COL1A1	\tNM_000088.3(COL1A1):c.3226G>A	2020-08-21 00:00:00+08
244	瓜氨酸血症, II型, 新生儿始发	\N	\N	2020-08-21 00:00:00+08
245	肢带型肌营养不良2A型（LGMD2A）	CAPN3	NG_008660.1(CAPN3):c.[2120A>G];[2264-1G>C]	2020-08-21 00:00:00+08
246	眼皮肤白化病II型（OCA2）	OCA2	NM_000275.2(OCA2):c.[1778del];[2359G>A]	2020-08-21 00:00:00+08
247	血友病A型（HEMA）	F8	NM_000132.3(F8):c.2179G>T	2020-08-21 00:00:00+08
248	眼皮肤白化病II型（OCA2）	OCA2	NM_000275.2(OCA2):c.[247C>T];[406C>T]	2020-08-21 00:00:00+08
249	Diamond-Blackfan贫血症1型（DBA1）	RPS19	NM_001022.3(RPS19):c.3G>A	2020-08-21 00:00:00+08
250	视网膜母细胞瘤（RB1）	RB1	NM_000321.2(RB1):c.39del	2020-08-21 00:00:00+08
251	X-连锁Alport综合征（XLAS）	COL4A5	NM_000495.4（COL4A5）:c.2822G>A	2020-08-21 00:00:00+08
252	视网膜色素变性3型（RP3）	RPGR	NM_001034853.1(RPGR):c.2323_2324del	2020-08-21 00:00:00+08
253	21-β-羟化酶缺乏性先天肾上腺皮质增生症	CYP21A2	NM_000500.7(CYP21A2):c.[332_339del];[518T>A]	2020-08-21 00:00:00+08
254	扩张型心肌病1D型（CMD1D）	TNNT2	NM_000364.2(TNNT2):c.650_652del	2020-08-21 00:00:00+08
255	原发性高草酸尿征1型（HP1）	AGXT	NM_000030.2(AGXT):c.[466G>A];[568G>A]	2020-08-21 00:00:00+08
256	马凡氏综合征（MFS）	FBN1	NM_000138.4(FBN1):c.364C>T	2020-08-21 00:00:00+08
257	Leber先天性黑曚10型（LCA10）	CEP290	NM_025114.3(CEP290):c.[367C>T];[7332_7333insAGAAG]	2020-08-21 00:00:00+08
258	视网膜色素变性3型（RP3）	RPGR	NM_001034853.1(RPGR):c.2899_2902del	2020-08-21 00:00:00+08
259	糖原累积症II型（GSD2）	GAA	P86R; G370D; W376G	2020-08-21 00:00:00+08
260	毛发-鼻-指(趾)综合征1型（TRPS1）	TRPS1	NM_014112.4(TRPS1):c.2985del	2020-08-21 00:00:00+08
261	血友病A（HEMA）	F8	IVS22	2020-08-21 00:00:00+08
262	肾病综合征1型（NPHS1）	NPHS1	NM_004646.3(NPHS1):c.[139del];[2783C>A]	2020-08-21 00:00:00+08
263	肾上腺脑白质营养不良（ALD）	ABCD1	NM_000033.3(ABCD1):c.578C>G	2020-08-21 00:00:00+08
264	Schaaf-Yang 综合征（SHFYNG）	MAGEL2	NM_019066.4(MAGEL2):c.1996dup	2020-08-21 00:00:00+08
265	常染色体隐性多囊肾病（ARPKD）	PKHD1	NM_138694.3(PKHD1):c.[11314C>T];[889T>A]	2020-08-21 00:00:00+08
266	血友病A（HEMA）	F8	NM_000132.3(F8):c.6371A>G	2020-08-21 00:00:00+08
267	球形红细胞增多征1型（SPH1）	ANK1	NM_000037.3(ANK1):c.[841C>T];[3668T>C]	2020-08-21 00:00:00+08
268	神经纤维瘤病II型（NF2）	NF2	NM_000268.3(NF2):c.1737G>T	2020-08-21 00:00:00+08
269	枫糖尿病（MSUD）	BCKDHB	NM_183050.3(BCKDHB):c.[1046G>A];[853C>T]	2020-08-21 00:00:00+08
270	白血病	IKZF1	EX4-7del	2020-08-21 00:00:00+08
271	血友病A（HEMA）	F8	NM_000132.3(F8):c.2945del	2020-08-21 00:00:00+08
272	甲基丙二酸血症	MUT	NM_000255.3(MUT):c.[1677-1G>A];[1061C>T]	2020-08-21 00:00:00+08
273	鱼鳞病	FLG	 NM_002016.1(FLG):c.[6950_6957del];[5383G>T]	2020-08-21 00:00:00+08
274	血友病A（HEMA）	F8	C.4380DELT	2020-08-21 00:00:00+08
275	血友病A（HEMA）	F8	NM_000132.3(F8):c.5953C>T	2020-08-21 00:00:00+08
276	\N	HTT	\N	2020-08-21 00:00:00+08
277	X连锁无汗型外胚层发育不良征1型（XHED）	EDA	NM_001399.4(EDA):c.536_571del	2020-08-21 00:00:00+08
278	X-连锁Alport综合征（XLAS）	COL4A5	NM_000495.4(COL4A5):c.1933C>T	2020-08-21 00:00:00+08
279	血友病A（HEMA）	F8	NM_000132.3(F8):c.2133_2134insT	2020-08-21 00:00:00+08
280	成骨不全征（OI）	COL1A1	NM_000088.3(COL1A1):c.2282G>A	2020-08-21 00:00:00+08
281	Bethlem肌病（BTHLM）	COL6A1	NM_001848.2(COL6A1):c.913G>T	2020-08-21 00:00:00+08
282	耳聋	GJB2	NM_004004.5(GJB2):c.[109G>A];[176_191del]	2020-08-21 00:00:00+08
283	多发性外生骨疣2型（EXT2）	EXT2	NM_000401.3(EXT2):c.1267_1270dup	2020-08-21 00:00:00+08
284	先天性双侧输精管缺如（CBAVD）	CFTR	NM_000492.3(CFTR):c.1210-34TG[12]T[5]	2020-08-21 00:00:00+08
285	遗传性甲状腺素运载蛋白相关性淀粉样变性	TTR	NM_000371.3(TTR):c.349G>T	2020-08-21 00:00:00+08
286	粘多糖贮积症IVA型（MPS4A）	GALNS	NM_000512.4(GALNS_v001):c.[374C>T];[1214G>A]	2020-08-21 00:00:00+08
287	成骨不全症（OI）	COL1A1	NM_000088.3(COL1A1_v001):c.578del	2020-08-21 00:00:00+08
288	脑桥小脑发育不全9型（PCH9）	AMPD2	NM_001257360.1(AMPD2_v001):c.[1132C>T];[1132C>T]	2020-08-21 00:00:00+08
289	多囊肾病1 型（PKD1）	PKD1	NM_001009944.2(PKD1):c.10588C>T	2020-08-21 00:00:00+08
290	大疱性表皮松懈症（EB）	COL7A1	NM_000094.3(COL7A1_v001):c.6127G>A	2020-08-21 00:00:00+08
291	促结缔组织增生性髓母细胞瘤（MDB）	SUFU	NM_016169.3(SUFU):c.281G>T	2020-08-21 00:00:00+08
292	血友病A（HEMA）	F8	NM_000132.3(F8_v001):c.985T>A	2020-08-21 00:00:00+08
293	寻常型鱼鳞病（ichthyosis vulgaris，IV）	FLG	NM_002016.1(FLG):c.12064A>T	2020-08-21 00:00:00+08
294	X-连锁鱼鳞病（XLI）	STS	NM_000351.4(STS):EX1_10del	2020-08-21 00:00:00+08
295	耳聋	GJB2	NM_004004.5(GJB2):c.[9G>A];[235del]	2020-08-21 00:00:00+08
296	血友病A（HEMA）	F8	NM_000132.3(F8):c.5566T>C	2020-08-21 00:00:00+08
297	耳聋	SLC26A4	NM_000441.1(SLC26A4_v001):c.[1286C>A];[1344G>A]	2020-08-21 00:00:00+08
298	血友病B	F9	NM_000133.3(F9):c.1226G>A	2020-08-21 00:00:00+08
299	血友病A（HEMA）	F8	NM_000132.3(F8_v001):c.5893A>C	2020-08-21 00:00:00+08
300	视网膜母细胞瘤（RB1）	RB1	\N	2020-08-21 00:00:00+08
301	X-连锁严重联合免疫缺陷（X-SCID）	IL2RG	NM_000206.2(IL2RG):c.719G>T	2020-08-21 00:00:00+08
302	血友病A（HEMA）	F8	NG_011403.1(F8_v001):c.5219+2T>C	2020-08-21 00:00:00+08
303	家族肥厚型心肌病4型（CMH4）	MYBPC3	LRG_386t1(MYBPC3):c.821+1G>A	2020-08-21 00:00:00+08
304	多囊肾病1 型（PKD1）	PKD1	NM_001009944.2(PKD1):c.4997G>A	2020-08-21 00:00:00+08
305	肉碱软脂酰转移酶II缺乏症,婴儿型	CPT2	\N	2020-08-21 00:00:00+08
306	耳聋	GJB2	NM_004004.5(GJB2):c.235del	2020-08-21 00:00:00+08
307	远端运动神经元病VIIA型（HMN7A）	SLC5A7	NM_021815.4(SLC5A7):c.709_712dup	2020-08-21 00:00:00+08
308	颅骨外胚层发育不良(CED)	WDR19	NG_031813.1(WDR19_v001):c.[3184-1G>T];[1982+2T>C]	2020-08-21 00:00:00+08
309	Galloway-Mowat综合征1（GAMOS1）	WDR73	NM_032856.3(WDR73):c.[219_223del];[1100A>G]	2020-08-21 00:00:00+08
310	Simpson-Golabi-Behmel综合征1型（SGBS1） 	GPC3	NM_004484(GPC3):EX1_2Del	2020-08-21 00:00:00+08
311	遗传性淋巴水肿（IA）	FLT4	NM_002020.4(FLT4):c.3410C>T	2020-08-21 00:00:00+08
312	遗传易感性非免疫性胎儿水肿伴/不伴房间隔缺损（HFASD）	EPHB4	NM_004444.4(EPHB4):c.1555G>A	2020-08-21 00:00:00+08
313	神经纤维瘤病I型（NF1）	NF1	NM_000267.3(NF1):c.1756_1759del	2020-08-21 00:00:00+08
314	多发性神经纤维瘤1型(NF1)	NF1	NM_000267.3(NF1):c.1756_1759del	2020-08-21 00:00:00+08
315	骨硬化症,常染色体隐性4（OPTB4）	CLCN7	\N	2020-08-21 00:00:00+08
316	肾结石/骨质疏松，低血磷症1型（NPHLOP1）	SLC34A1	NM_003052.4(SLC34A1):c.533T>A	2020-08-21 00:00:00+08
317	晶状体异位,家族性（ECTOL1）	FBN1	\N	2020-08-21 00:00:00+08
318	血友病A（HEMA）	F8	NM_000132.3(F8):c.7031del	2020-08-21 00:00:00+08
319	血小板增多症 (体细胞系变异)	CALR	NM_004343.3(CALR):c.1154_1155insTTGTC	2020-08-21 00:00:00+08
320	\N	KDM5C	NM_004187.3(KDM5C):c.1596G>C	2020-08-21 00:00:00+08
321	血友病A（HEMA）	F8	NM_000132.3(F8):c.6055T>G	2020-08-21 00:00:00+08
322	球形红细胞增多征1型（SPH1）	ANK1	NM_000037.3(ANK1):c.533_537del	2020-08-21 00:00:00+08
323	血友病B（HEMB）	F9	NM_000133.3(F9):c.127C>T	2020-08-21 00:00:00+08
324	Rett综合征（RTT）	MECP2	NM_004992.3(MECP2):c.397C>T	2020-08-21 00:00:00+08
325	X-连锁严重联合免疫缺陷（X-SCID）	IL2RG	NM_000206.2(IL2RG):c.774del	2020-08-21 00:00:00+08
326	肺泡毛细血管发育不良伴肺静脉失调（ACDMPV）	FOXF1	NM_001451.2(FOXF1):c.(?_-1)_(*1_?)del	2020-08-21 00:00:00+08
327	血友病A（HEMA）	F8	NM_000132.3(F8):c.5027C>A	2020-08-21 00:00:00+08
328	\tLi-Fraumeni综合征2型（LFS2）	CHEK2	NM_007194.4(CHEK2_v001):c.917G>C	2020-08-21 00:00:00+08
329	血友病A（HEMA）	F8	NM_000132.3(F8):c.4379dup	2020-08-21 00:00:00+08
330	Kabuki综合征1型（KABUK1）	KMT2D	NM_003482.3(KMT2D_v001):c.[7951_7952/=];[7954del/=]	2020-08-21 00:00:00+08
331	囊性、易感性肾发育不良（CYSRD）	BICC1	NM_001080512.1(BICC1):c.2070G>C	2020-08-21 00:00:00+08
332	甲状腺分泌障碍3型（TDH3）	TG	NG_015832.1(TG_v001):c.[478T>C];[5686+1G>A]	2020-08-21 00:00:00+08
333	X-连锁智力障碍综合征（MRXSSD）	PHF8	 NM_015107(PHF8):EX1_19Del	2020-08-21 00:00:00+08
334	血友病A（HEMA）	F8	NM_000132.3(F8):c.5961dup	2020-08-21 00:00:00+08
335	血友病A（HEMA）	F8	NM_000132.3(F8):c.1634C>A	2020-08-21 00:00:00+08
336	血友病A（HEMA）	F8	NM_000132.3(F8):c.1172G>A	2020-08-21 00:00:00+08
337	\N	CDH1	NM_004360.4(CDH1):c.82T>G	2020-08-21 00:00:00+08
338	假阴道会阴阴囊性尿道下裂（PPSH）	SRD5A2	NM_000348.3(SRD5A2):c.[159G>A];[656del]	2020-08-21 00:00:00+08
339	假阴道会阴阴囊性尿道下裂（PPSH）	SRD5A2	NM_000348.3(SRD5A2):c.[607G>A];[680G>A]	2020-08-21 00:00:00+08
340	马凡氏综合征（MFS）	FBN1	NM_000138.4:c.5885_5895del	2020-08-21 00:00:00+08
341	Angelman综合征（AS）	UBE3A	NM_130838.1(UBE3A):c.2507_2510del	2020-08-21 00:00:00+08
342	X-连锁女性限性近视26型	ARR3	NG_050734.1(ARR3_v001):c.39+1G>A	2020-08-21 00:00:00+08
343	乳腺癌	BRCA1	EX16del	2020-08-21 00:00:00+08
344	乳腺癌	BRIP1	NM_032043.2(BRIP1):c.3664_3665del	2020-08-21 00:00:00+08
345	\N	PKHD1	NM_138694.3(PKHD1):c.[9901G>T];[10997T>G]	2020-08-21 00:00:00+08
346	血友病A（HEMA）	F8	NM_000132.3(F8):c.556G>T	2020-08-21 00:00:00+08
347	血友病A（HEMA）	F8	NM_000132.3(F8):c.536C>G	2020-08-21 00:00:00+08
348	细胞色素c氧化酶缺乏性致死性婴儿心脑肌病1型（CEMCOX1）	SCO2	NM_005138.2(SCO2):c.[535C>T];[544C>T]	2020-08-21 00:00:00+08
349	法洛四联症（TOF）	GATA4	NM_002052.3(GATA4):c.1075G>A	2020-08-21 00:00:00+08
350	多囊肾病1 型（PKD1）	PKD1	NM_001009944.2(PKD1):c.1225G>A/1123del	2020-08-21 00:00:00+08
351	血友病A（HEMA）	F8	NM_000132.3(F8):c.5424del	2020-08-21 00:00:00+08
352	血友病A（HEMA）	F8	NM_000132.3(F8):c.5825G>C	2020-08-21 00:00:00+08
353	血友病A（HEMA）	F8	NM_000132.3(F8):c.6506G>A	2020-08-21 00:00:00+08
354	Marfan综合征（MFS）	FBN1	NM_000138.4(FBN1):c.3602G>A	2020-08-21 00:00:00+08
355	多囊肾病4型伴或不伴多囊肝病（PKD4）	PKHD1	NG_008753.1(PKHD1_v001):c.[5935G>A];[3364+3A>T]	2020-08-21 00:00:00+08
356	软骨发育不全（ACH）	FGFR3	NM_000142.4(FGFR3):c.1138G>A 	2020-08-21 00:00:00+08
357	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.6890A>C	2020-08-21 00:00:00+08
358	地贫	\N	\N	2020-08-21 00:00:00+08
359	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.11353T>C	2020-08-21 00:00:00+08
360	\N	CRYAA	NM_000394.3(CRYAA):c.346C>T	2020-08-21 00:00:00+08
545	\N	BBS10	NM_024685.3(BBS10):c.[83_84delinsAG];[173T>C]	2020-08-21 00:00:00+08
361	先天性肌无力综合征2C型伴乙酰胆碱受体缺陷	CHRNB1	NM_000747.2(CHRNB1):c.727C>T	2020-08-21 00:00:00+08
362	\N	EDA	NM_001399.4(EDA):c.467G>A	2020-08-21 00:00:00+08
363	线粒体肌病-脑病-乳酸中毒-卒中样发作综合征（MELAS）	MTTL1	NC_012920.1(MTTL1):m.3243A>G	2020-08-21 00:00:00+08
364	\N	PRODH	NM_016335.4(PRODH):c.1322T>C	2020-08-21 00:00:00+08
365	肢带型肌营养不良2B型（LGMD2B）	DYSF	NM_003494.3(DYSF):c.4036_4037del	2020-08-21 00:00:00+08
366	\N	VHL	NM_000551.3(VHL):c.391A>C	2020-08-21 00:00:00+08
367	睑裂狭小,倒转型内眦赘皮和上睑下垂（BPES）	FOXL2	\N	2020-08-21 00:00:00+08
368	\N	ALDH1A2	NM_003888.3(ALDH1A2):c.[644C>A];[222+3A>G]	2020-08-21 00:00:00+08
369	\N	GBE1	NM_000158.3(GBE1):c.430del	2020-08-21 00:00:00+08
370	多囊肾病2型（PKD2）	PKD2	NG_008604.1(PKD2):c.2670+5del	2020-08-21 00:00:00+08
371	X-连锁严重联合免疫缺陷（X-SCID）	IL2RG	NM_000206.2(IL2RG):c.201del	2020-08-21 00:00:00+08
372	血友病A（HEMA）	F8	NM_000132.3(F8):c.3637dup	2020-08-21 00:00:00+08
373	\N	DEPDC5	NM_001242896.2(DEPDC5):c.375T>A	2020-08-21 00:00:00+08
374	眼皮肤白化病I型（OCA1）	TYR	NG_008748.1(TYR):c.[758G>A];[820-3C>G]	2020-08-21 00:00:00+08
375	\N	CRYBB2	NG_009827.1(CRYBB2):c.307-4A>G	2020-08-21 00:00:00+08
376	X连锁隐性斑点状软骨发育异常（CDPX1）	ARSE	NM_000047.2(ARSE):c.940_941del	2020-08-21 00:00:00+08
377	血友病B（HEMB）	F9	NM_000133.3(F9):c.[892C>T];[723+2T>C]	2020-08-21 00:00:00+08
378	常染色体隐性耳聋1A型（DFNB1A）	GJB2	NM_004004.5(GJB2):c.[109G>A];[109G>A]	2020-08-21 00:00:00+08
379	血友病A（HEMA）	F8	NG_011403.1(F8):c.6274-2A>G	2020-08-21 00:00:00+08
380	血友病A（HEMA）	F8	NG_011403.1(F8_v001):c.388+1G>T	2020-08-21 00:00:00+08
381	\N	COL4A5	NM_000495.4(COL4A5):c.888_889del	2020-08-21 00:00:00+08
382	遗传性对称性色素异常症（DSH）	ADAR	NM_001111.4(ADAR):c.3594C>G	2020-08-21 00:00:00+08
383	\N	GRIN2D	NM_000836.2(GRIN2D):c.3776dup	2020-08-21 00:00:00+08
384	复合氧化磷酸化缺陷27型（COXPD27）	CARS2	NM_024537.3(CARS2):c.1426G>A	2020-08-21 00:00:00+08
385	\N	IGHMBP2	NM_002180.2(IGHMBP2):c.[151C>T];[2467C>T]	2020-08-21 00:00:00+08
386	血友病A（HEMA）	F8	NG_011403.1(F8):c.6430-14A>G	2020-08-21 00:00:00+08
387	\N	FLG	NM_002016.1(FLG):c.[7249C>T];[3321del]	2020-08-21 00:00:00+08
388	血友病B（HEMB）	F9	NM_000133.3(F9):c.93dup	2020-08-21 00:00:00+08
389	血友病A（HEMA）	F8	NM_000132.3(F8):c.79_80delinsTT	2020-08-21 00:00:00+08
390	血友病A（HEMA）	F8	NM_000132.3(F8):c.6065G>A	2020-08-21 00:00:00+08
391	\N	PAH	NM_000277.2(PAH):c.[611A>G];[1238G>C]	2020-08-21 00:00:00+08
392	\t白内障14（CTRCT14）	GJA3	NM_021954.3(GJA3):c.61A>T	2020-08-21 00:00:00+08
393	\N	MYH7	NM_000257.3(MYH7):c.2773A>G	2020-08-21 00:00:00+08
394	血友病A（HEMA）	F8	NM_000132.3(F8):c.6683G>A	2020-08-21 00:00:00+08
395	血友病A（HEMA）	F8	NM_000132.3(F8):c.209_212del	2020-08-21 00:00:00+08
396	血友病A（HEMA）	F8	NG_011403.1(F8_v001):c.671-1G>A	2020-08-21 00:00:00+08
397	\N	TYR	NM_000372.4(TYR):c.[896G>A];[819+2_819+3insATATGCC]	2020-08-21 00:00:00+08
398	多囊肾病1型（PKD1）	PKD1	NG_008617.1(PKD1):c.1202-2A>G	2020-08-21 00:00:00+08
399	假阴道会阴阴囊性尿道下裂（PPSH）	SRD5A2	NM_000348.3(SRD5A2):c.[680G>A];[737G>A]	2020-08-21 00:00:00+08
400	成骨不全症（OI）	COL1A1	NM_000088.3(COL1A1):c.3389G>A	2020-08-21 00:00:00+08
401	\N	ANK1	NM_000037.3(ANK1):c.3157C>T	2020-08-21 00:00:00+08
402	\N	ATXN3	\N	2020-08-21 00:00:00+08
403	\N	DMD	NM_004006.2(DMD):c.8390+1G>A	2020-08-21 00:00:00+08
404	脊髓小脑共济失调5型	SPTBN2	NM_006946.2(SPTBN2):c.4492G>A	2020-08-21 00:00:00+08
405	丈夫白血病、肺癌	BRCA2	NM_000059.3(BRCA2):c.2838T>G	2020-08-21 00:00:00+08
406	\N	TAF2	NM_003184.3(TAF2):c.[2119A>G];[2216_2219del]	2020-08-21 00:00:00+08
407	\N	GREB1L	NM_001142966.2(GREB1L):c.902_908dup	2020-08-21 00:00:00+08
408	\N	TOP3A	NM_004618.4(TOP3A):c.[2362C>T];[1436A>G]	2020-08-21 00:00:00+08
409	\N	SCN1A	NM_001165963.2(SCN1A):c.695-2A>G	2020-08-21 00:00:00+08
410	\N	DMD	NM_004006.2(DMD):c.8375_8376insA	2020-08-21 00:00:00+08
411	\N	F7	NM_000131.4(F7):c.[312C>A];[572-1G>A]	2020-08-21 00:00:00+08
412	多囊肾病4型 伴或不伴多囊肝病	PKHD1	NM_138694.3(PKHD1):c.9901G>T	2020-08-21 00:00:00+08
413	血友病A（HEMA）	F8	NM_000132.3(F8):c.1648C>T	2020-08-21 00:00:00+08
414	血友病A（HEMA）	F8	NM_000132.3(F8):c.6860del	2020-08-21 00:00:00+08
415	\N	GBE1	NM_000158.3(GBE1):c.430del	2020-08-21 00:00:00+08
416	von Willebrand病1型（VWD1）	VWF	NM_000552.3(VWF):c.4403C>T	2020-08-21 00:00:00+08
417	血友病A（HEMA）	F8	NM_000132.3(F8):c.4085del	2020-08-21 00:00:00+08
418	\N	HLA	\N	2020-08-21 00:00:00+08
419	软骨生成不全II型（ACG2）	COL2A1	NM_001844.4(COL2A1):c.3950T>G	2020-08-21 00:00:00+08
420	β-地中海贫血	HBB	NM_000518.5(HBB):c.[52A>T];[79G>A]	2020-08-21 00:00:00+08
421	\N	ANK1	 NM_000037.3(ANK1):c.5526del	2020-08-21 00:00:00+08
422	耳聋	\N	\N	2020-08-21 00:00:00+08
423	糖尿病	WFS1	NM_006005.3(WFS1):c.1811G>A	2020-08-21 00:00:00+08
424	肌营养不良-抗肌萎缩相关糖蛋白病	POMGNT1	NM_017739(POMGNT1):c.[296T>C];[1624G>T]	2020-08-21 00:00:00+08
425	Norrie病	NDP	NM_000266.3(NDP):c.125_128dup	2020-08-21 00:00:00+08
426	血友病B	F9	NM_000133.3(F9):EX1-8del	2020-08-21 00:00:00+08
427	血友病A（HEMA）	F8	NM_000132.3(F8):IVS22 INV和IVS1 INV	2020-08-21 00:00:00+08
428	\N	HPDL	\N	2020-08-21 00:00:00+08
429	\N	NIPA1	NM_144599.5(NIPA1):c.134C>G	2020-08-21 00:00:00+08
430	\N	RPGR	\N	2020-08-21 00:00:00+08
431	血友病A（HEMA）	F8	NM_000132.3(F8):c.2244C>G	2020-08-21 00:00:00+08
432	\N	RET	NM_020975.5(RET):c.2753T>C	2020-08-21 00:00:00+08
433	\N	SUFU	NM_016169.3(SUFU):c.281G>T	2020-08-21 00:00:00+08
434	\N	RAG1	NM_000448.2(RAG1):c.[923G>A];[2296A>G]	2020-08-21 00:00:00+08
435	Luscan-Lumish综合征	SETD2	NM_014159.6(SETD2):c.1439A>T	2020-08-21 00:00:00+08
436	\N	F8	NM_000132.3(F8):IVS22 INV和IVS1 INV	2020-08-21 00:00:00+08
437	\N	F8	NM_000132.3(F8):c.2415del	2020-08-21 00:00:00+08
438	\N	F8	NM_000132.3(F8):IVS22 INV和IVS1 INV	2020-08-21 00:00:00+08
439	Meckel综合征3型（MKS3）	TMEM67	NM_153704.5(TMEM67):c.[296del];[1243G>A]	2020-08-21 00:00:00+08
440	\N	MMACHC	NM_015506.3(MMACHC):c.[609G>A];[EX1del]	2020-08-21 00:00:00+08
441	\N	TNNI3	NM_000363.4(TNNI3):c.422G>A	2020-08-21 00:00:00+08
442	常染色体隐性耳聋1A型（DFNB1A）	GJB2	NM_004004.5(GJB2):c.235del	2020-08-21 00:00:00+08
443	\N	NOTCH1	NM_017617.5(NOTCH1):c.1162G>A	2020-08-21 00:00:00+08
444	\N	SMC1A	NM_006306.3(SMC1A):c.793_795del	2020-08-21 00:00:00+08
445	Duchenne氏肌营养不良（DMD）	DMD	NM_004006.2(DMD):c.1394del	2020-08-21 00:00:00+08
446	\N	COL1A1	NM_000088.3(COL1A1):c.3521C>T	2020-08-21 00:00:00+08
447	\N	EPHB4	NM_004444.5(EPHB4):c.1528C>T	2020-08-21 00:00:00+08
448	X-连锁Alport综合征（XLAS）	COL4A5	NM_000495.4(COL4A5):c.5039T>A	2020-08-21 00:00:00+08
449	\N	TYR	NM_000372.5(TYR):c.[346C>T];[926dup]	2020-08-21 00:00:00+08
450	\N	DMPK 	\N	2020-08-21 00:00:00+08
451	\N	ATXN3 	\N	2020-08-21 00:00:00+08
452	\N	F8	NM_000132.3(F8):INV22	2020-08-21 00:00:00+08
453	X连锁重型联合免疫缺陷症	IL2RG	NM_000206.2(IL2RG):c.924+1G>T	2020-08-21 00:00:00+08
454	\N	COL1A2	NM_000089.3(COL1A2): c.3269G>T	2020-08-21 00:00:00+08
455	\N	COL11A1	NM_001854.4(COL11A1): c.1928G>A	2020-08-21 00:00:00+08
456	\N	CRB1	NM_201253.2(CRB1):c.[2230C>T];[3299T>A]	2020-08-21 00:00:00+08
457	\N	PKD1	NM_001009944.2(PKD1): c.10529C>T	2020-08-21 00:00:00+08
458	\N	MUT	NM_000255.4(MUT): c.[567T>G];[1147C>G]	2020-08-21 00:00:00+08
459	共济失调-毛细血管扩张症	ATM	NM_000051.3(ATM):c.[497-2A>C];[4110-1G>A]	2020-08-21 00:00:00+08
460	\N	RAD50	NM_005732.3(RAD50): c.1287_1291del	2020-08-21 00:00:00+08
461	\N	F8	NM_000132.3(F8):c.5491A>C	2020-08-21 00:00:00+08
462	\N	PRDM16	NM_022114.3(PRDM16):c.3326G>A	2020-08-21 00:00:00+08
463	血友病A（HEMA）	F8	NM_000132.3(F8): c.295G>T	2020-08-21 00:00:00+08
464	\N	F8	NM_000132.3(F8):c.1834C>T	2020-08-21 00:00:00+08
465	血友病A（HEMA）	F8	NM_000132.3(F8):c.1812G>A	2020-08-21 00:00:00+08
466	\N	PCCB	NM_000532.5(PCCB):c.834_835insC	2020-08-21 00:00:00+08
467	\N	PEX1	NM_000466.3(PEX1):c.[3043G>T];[2050C>T]	2020-08-21 00:00:00+08
468	\N	CDKN1C	NM_000076.2(CDKN1C):c.820+1G>A	2020-08-21 00:00:00+08
469	\N	SLC12A3	NM_000339.2(SLC12A3):c.[1262G>T];[2548+253G>T]	2020-08-21 00:00:00+08
470	\N	RET	NM_020975.5(RET):c.1900T>C	2020-08-21 00:00:00+08
471	\N	PLA2G6	NM_003560.3(PLA2G6):c.[1A>G];[1427+1G>A]	2020-08-21 00:00:00+08
472	\N	GJB2	NM_004004.6(GJB2):c.[109G>A];[299_300del]	2020-08-21 00:00:00+08
473	\N	MTM1	NM_000252.2(MTM1):c.121G>A	2020-08-21 00:00:00+08
474	强直性脊柱炎	HLA	\N	2020-08-21 00:00:00+08
475	\N	F8	NM_000132.3(F8):c.6226G>A	2020-08-21 00:00:00+08
476	\N	FGFR3	NM_000142.4(FGFR3):c.2421A>G	2020-08-21 00:00:00+08
477	Duchenne肌营养不良（DMD）	DMD	NM_004006.2(DMD):c.3786+1G>T	2020-08-21 00:00:00+08
478	\N	MME	NM_007289.3(MME):c.203G>A	2020-08-21 00:00:00+08
479	\N	ARSA	NM_000487.6(ARSA):c.[185_186insA];[1066G>T]	2020-08-21 00:00:00+08
480	血友病A（HEMA）	F8	NM_000132.3(F8): c.1538-1G>T	2020-08-21 00:00:00+08
481	\N	F9	NM_000133.3(F9):c.1136G>A	2020-08-21 00:00:00+08
482	\N	MECP2	NM_004992.3(MECP2):c.1167_1194dup	2020-08-21 00:00:00+08
483	\N	ARSA	NM_000487.6(ARSA):c.[302_303insG];[1428_1429insC]	2020-08-21 00:00:00+08
484	\N	ITGA3	NM_002204.4(ITGA3):c.[2464del];[1133A>T]	2020-08-21 00:00:00+08
485	\N	MPDZ	NM_003829.4(MPDZ):c.[3178G>T];[3508C>T];[5380-4_5380-2delinsCT]	2020-08-21 00:00:00+08
486	\N	CCM2	NM_031443.3(CCM2):c.244del	2020-08-21 00:00:00+08
487	\N	COG5	NM_006348.3(COG5):c.[2518G>T];[1406+1G>A]	2020-08-21 00:00:00+08
488	\N	FGFR2	NM_000141.4(FGFR2):c.1025G>A	2020-08-21 00:00:00+08
489	\N	CEP290	NM_025114.3(CEP290):c.[4062del];[6012-2A>G]	2020-08-21 00:00:00+08
490	\N	MSH2	NM_000251.2(MSH2):c.2039G>A	2020-08-21 00:00:00+08
491	\N	PAX2	NM_003987.4(PAX2):c.76dup	2020-08-21 00:00:00+08
492	\N	C5orf42	NM_023073.3(C5orf42):c.[1330C>T];[8203del]	2020-08-21 00:00:00+08
493	\N	CRX	NM_000554.6(CRX):c.663C>G	2020-08-21 00:00:00+08
494	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.3170T>C	2020-08-21 00:00:00+08
495	\N	NF1	NM_000267.3(NF1):c.2195del	2020-08-21 00:00:00+08
496	\N	PKD1	NG_008617.1(PKD1):c.8948+1G>A	2020-08-21 00:00:00+08
497	肯尼迪病	AR	\N	2020-08-21 00:00:00+08
498	\N	FBN1	NM_000138.4(FBN1):c.6695G>T	2020-08-21 00:00:00+08
499	\N	PROM1	NM_006017.2(PROM1):c.1683_1767del	2020-08-21 00:00:00+08
500	\N	TPP1	NM_000391.4(TPP1):c.[1424C>T];[1222_1224del]	2020-08-21 00:00:00+08
501	\N	SARS2	NM_017827.3(SARS2):c.[1519dup];[654-14T>A]	2020-08-21 00:00:00+08
502	血友病A（HEMA）	F8	NM_000132.3(F8):c.6046C>T	2020-08-21 00:00:00+08
503	血友病A（HEMA）	F8	NM_000132.3(F8):c.2768T>G	2020-08-21 00:00:00+08
504	\N	CYBB	NM_000397.3(CYBB):c.302A>G	2020-08-21 00:00:00+08
505	\N	10q24.31q24.32	10q24.31q24.32	2020-08-21 00:00:00+08
506	\N	FBN1	NM_000138.4(FBN1):c.5498G>T	2020-08-21 00:00:00+08
507	\N	CDK10	del exon1-6	2020-08-21 00:00:00+08
508	\N	TSC1	NM_000368.4(TSC1):c.1904_1905del；c.989dup	2020-08-21 00:00:00+08
509	\N	TSC2	NM_000548.5(TSC2):c.2608G>C	2020-08-21 00:00:00+08
510	\N	TRPM1	NM_002420.5(TRPM1):c.18-3C>G	2020-08-21 00:00:00+08
511	\N	地贫	地贫	2020-08-21 00:00:00+08
512	血友病A（HEMA）	F8	NM_000132.3(F8):c.6044G>A	2020-08-21 00:00:00+08
513	\N	PIGA	NM_002641.3(PIGA):c.908A>C	2020-08-21 00:00:00+08
514	\N	地贫	地贫	2020-08-21 00:00:00+08
515	血友病A（HEMA）	F8	NM_000132.3(F8):c.2962_2963del	2020-08-21 00:00:00+08
516	\N	CDK16	\N	2020-08-21 00:00:00+08
517	\N	F8	NM_000132.3(F8):c.5399G>A	2020-08-21 00:00:00+08
518	\N	F9	NM_000133.3(F9):c.801C>A	2020-08-21 00:00:00+08
519	寻常型鱼鳞病（IV）	FLG	NM_002016.1(FLG):c.9887C>A	2020-08-21 00:00:00+08
520	\N	CTNS	NM_004937.3(CTNS):c.[16_19del];[(-230+1_-229-1)_(61+1_62-1)del	2020-08-21 00:00:00+08
521	\N	TARS2	NM_025150.4(TARS2):c.[470C>G];[1768G>T]	2020-08-21 00:00:00+08
522	\N	NF1	NM_000267.3(NF1):c.2991-2A>G	2020-08-21 00:00:00+08
523	\N	MUSK	NM_005592.4(MUSK):c.[2300G>A];[2378G>A]	2020-08-21 00:00:00+08
524	\N	NF1	NM_000267.3(NF1):c.2033dup	2020-08-21 00:00:00+08
525	\N	VPS13B 	NM_017890.4(VPS13B):c.[2934+1G>C];[6940+1G>T]	2020-08-21 00:00:00+08
526	\N	NF1	NM_000267.3(NF1):c.3652C>T	2020-08-21 00:00:00+08
527	\N	PKD1	NM_001009944.3(PKD1):c.348_352del	2020-08-21 00:00:00+08
528	\N	SCN1A	NM_001165963.3(SCN1A):c.4906C>T	2020-08-21 00:00:00+08
529	\N	OTC	NM_000531.5(OTC):c.176T>C	2020-08-21 00:00:00+08
530	强直性脊柱炎	HLA	\N	2020-08-21 00:00:00+08
531	\N	F9	NM_000133.3(F9):c.1305T>A	2020-08-21 00:00:00+08
532	\N	WAS	NM_000377.2(WAS):c.763del	2020-08-21 00:00:00+08
533	X-连锁 Alport 综合征(XLAS) 	COL4A5	NM_000495.4(COL4A5):c.385-10C>G	2020-08-21 00:00:00+08
534	\N	ALPL	NM_000478.6(ALPL):c.[211C>T];[1271T>C]	2020-08-21 00:00:00+08
535	\N	MMACHC	NM_015506.3(MMACHC):c.658_660del	2020-08-21 00:00:00+08
536	X-连锁 Alport 综合征(XLAS) 	COL4A5	NM_000495.4(COL4A5):c.3508G>A	2020-08-21 00:00:00+08
537	\N	DYNC1H1	NM_001376.5(DYNC1H1):c.13698A>G	2020-08-21 00:00:00+08
538	\N	地贫	\N	2020-08-21 00:00:00+08
539	\N	GRIN1	NM_007327.3(GRIN1):c.1643G>A	2020-08-21 00:00:00+08
540	\N	CLTC	NM_004859.4(CLTC):c.3621_3623del	2020-08-21 00:00:00+08
541	\N	ATM	NM_000051.3(ATM):c.[2872G>T];[8918_8929delGGCCGGAAGATGinsTGT]	2020-08-21 00:00:00+08
542	\N	SMC1A	NM_006306.3(SMC1A):c.1148G>A	2020-08-21 00:00:00+08
543	\N	COL9A1	NG_011654.1(COL9A1):c.1504-3C>T	2020-08-21 00:00:00+08
544	\N	GREB1L	NM_001142966.2(GREB1L):c.5608+1G>T	2020-08-21 00:00:00+08
546	\N	地贫	地贫	2020-08-21 00:00:00+08
547	\N	TYR	NM_000372.5(TYR):c.[346C>T];[1184+1G>C]	2020-08-21 00:00:00+08
548	\N	IL2RG	NM_000206.2(IL2RG):c.452T>C	2020-08-21 00:00:00+08
549	\N	STS	NM_000351.4 (STS):c.(?_-1)_(*1_?)del	2020-08-21 00:00:00+08
550	\N	KMT2D	NM_003482.3(KMT2D):c.13590C>T	2020-08-21 00:00:00+08
551	X-连锁 Alport 综合征(XLAS) 	COL4A5	NM_000495.4(COL4A5):c.232-1G>A	2020-08-21 00:00:00+08
552	\N	FOXC2	NM_005251.3(FOXC2):c.[86G>A];[157G>C]	2020-08-21 00:00:00+08
553	\N	F8	NM_000132.3(F8):c.250_251insA	2020-08-21 00:00:00+08
554	血友病A（HEMA）	F8	NM_000132.3(F8):c.1904-12T>G	2020-08-21 00:00:00+08
555	\N	KMT2A	NM_001197104.1(KMT2A):c.2318_2319insC	2020-08-21 00:00:00+08
556	Duchenne肌营养不良（DMD）	DMD	NM_004006.2(DMD):c.6762G>A	2020-08-21 00:00:00+08
557	\N	GJB2	NM_004004.5(GJB2):c.[176_191del];[235del]	2020-08-21 00:00:00+08
558	\N	MRE11A	NM_005591.3(MRE11A):c.535T>C	2020-08-21 00:00:00+08
559	\N	GJB2	NM_004004.5(GJB2):c.[235del];[235del]	2020-08-21 00:00:00+08
560	\N	LMNA	NM_005572.3(LMNA):c.91G>A	2020-08-21 00:00:00+08
561	\N	ANK2	NM_001148.6(ANK2):c.5772_5773insAAC	2020-08-21 00:00:00+08
562	\N	SLC22A5	NM_003060.4(SLC22A5):c.760C>T	2020-08-21 00:00:00+08
563	\N	HBB	NM_000518.5(HBB):c.[10C>T];[126_129del]	2020-08-21 00:00:00+08
564	\N	NKX2-5	NM_004387.4(NKX2-5):c.649A>G	2020-08-21 00:00:00+08
565	\N	CHD7	NM_017780.4(CHD7):c.4264A>G	2020-08-21 00:00:00+08
566	\N	PTPN11	NM_002834.4(PTPN11):c.982A>G	2020-08-21 00:00:00+08
567	血友病A（HEMA）	F8	NM_000132.3(F8):c.5689_5691delinsTTT	2020-08-21 00:00:00+08
568	\N	EXT2	NM_207122.1(EXT2):c.1022del	2020-08-21 00:00:00+08
569	\N	TGM1	NM_000359.2(TGM1):c.[427C>T];[607C>T]	2020-08-21 00:00:00+08
570	血友病A（HEMA）	F8	NM_000132.3(F8):c.6130del	2020-08-21 00:00:00+08
571	脆性X综合征	FMR1	\N	2020-08-21 00:00:00+08
572	努南综合征8型（NS8）	RIT1	NM_006912.5(RIT1):c.69A>C	2020-08-21 00:00:00+08
573	\N	TYR	NM_000372.5(TYR):c.[896G>A];[930dup]	2020-08-21 00:00:00+08
574	\N	SLC6A1	NM_003042.4(SLC6A1):c.1070C>A	2020-08-21 00:00:00+08
575	\N	PKD1	NM_001009944.3(PKD1):c.2659del	2020-08-21 00:00:00+08
576	\N	F8	NM_000132.3(F8):c.6188-1G>T	2020-08-21 00:00:00+08
577	\N	UGT1A1	NC_000002.12(UGT1A1):g.[233760498G>A];[233760235_233760236dup]	2020-08-21 00:00:00+08
578	\N	SCN5A	NM_198056.2(SCN5A):c.2893C>T	2020-08-21 00:00:00+08
579	\N	EXT1	NM_000127.2(EXT1):c.1569dup	2020-08-21 00:00:00+08
580	\N	IFIH1	NM_022168.4(IFIH1):c.2336G>A	2020-08-21 00:00:00+08
581	\N	DMD	NM_004006.2(DMD):c.1474C>T	2020-08-21 00:00:00+08
582	\N	ATP7A	NM_000052.6(ATP7A):c.2179G>A	2020-08-21 00:00:00+08
583	血友病B（HEMB）	F9	NM_000133.3(F9):c.1295G>T	2020-08-21 00:00:00+08
584	\N	GJB2	NM_004004.5(GJB2):c.[235del];[235del]	2020-08-21 00:00:00+08
585	血友病A（HEMA）	F8	NM_000132.3(F8):c.6355_6356del	2020-08-21 00:00:00+08
586	\N	B3GALNT2	NM_152490.5(B3GALNT2):c.[1068dup];[213_215de]	2020-08-21 00:00:00+08
587	\N	TYR	 NM_000372.5(TYR):c.[896G>A];[820-3C>G]	2020-08-21 00:00:00+08
588	\N	GREB1L	NM_001142966.2(GREB1L):c.4246A>T	2020-08-21 00:00:00+08
589	\N	COL1A1	NM_000088.3(COL1A1):c.2137G>T	2020-08-21 00:00:00+08
590	\N	SLC22A5	NM_003060.3(SLC22A5):c.[338G>A];[844C>T]	2020-08-21 00:00:00+08
591	\N	HLA	/	2020-08-21 00:00:00+08
592	\N	RUNX2	NM_001024630.4(RUNX2):c.1138del	2020-08-21 00:00:00+08
593	地贫	\N	/	2020-08-21 00:00:00+08
594	\N	F9	NM_000133.3(F9):c.1207del	2020-08-21 00:00:00+08
595	\N	F8	NM_000132.3(F8):c.1396G>C	2020-08-21 00:00:00+08
596	\N	MYBPC3	NM_000256.3(MYBPC3):c.3624del	2020-08-21 00:00:00+08
597	\N	TSC2	NM_000548.5(TSC2):c.3094C>T	2020-08-21 00:00:00+08
598	\N	CYP21A2	NM_000500.7(CYP21A2):c.[955C>T];[1069C>T]	2020-08-21 00:00:00+08
599	\N	NF1	NM_000267.3(NF1):c.1756_1759del	2020-08-21 00:00:00+08
600	\N	PKLR	NM_000298.5(PKLR):c.[330_331del];[1462C>T]	2020-08-21 00:00:00+08
601	\N	G6PD	NM_001042351.2(G6PD):c.1024C>T	2020-08-21 00:00:00+08
602	\N	FBN1	NM_000138.5(FBN1):c.3244G>T	2020-08-21 00:00:00+08
603	\N	GRIN1	NM_007327.4(GRIN1):c.1665G>A	2020-08-21 00:00:00+08
604	\N	DMD	NM_004006.2(DMD):c.4053G>A	2020-08-21 00:00:00+08
605	\N	ATP8B1	NM_005603.6(ATP8B1):c.[1367C>T];[1587_1589del]	2020-08-21 00:00:00+08
606	\N	SMARCA2	NM_003070.5(SMARCA2):c.553C>G	2020-08-21 00:00:00+08
607	\N	SLC7A7	NM_001126106.4(SLC7A7):c.625+1G>A	2020-08-21 00:00:00+08
608	\N	COMP	NM_000095.2(COMP):c.2153G>C	2020-08-21 00:00:00+08
609	\N	ALG1	NM_019109.4(ALG1):c.[434G>A];[1342C>T]	2020-08-21 00:00:00+08
610	\N	NR0B1	NM_000475.4(NR0B1):c.1217del	2020-08-21 00:00:00+08
611	\N	ARX	NM_139058.2(ARX):c.1259dup	2020-08-21 00:00:00+08
612	\N	GUCY2C	NM_004963.3(GUCY2C):c.[36_45del];[1391G>T]	2020-08-21 00:00:00+08
613	\N	F8	INV22	2020-08-21 00:00:00+08
614	\N	KIF11	NM_004523.4(KIF11):c.139C>T	2020-08-21 00:00:00+08
615	\N	ADNP	NM_015339.5(ADNP):c.2157C>G	2020-08-21 00:00:00+08
616	\N	F8	NM_000132.3(F8):c.1336C>T	2020-08-21 00:00:00+08
617	\N	STS	NM_000351.4 (STS):c.(?_-1)_(*1_?)del	2020-08-21 00:00:00+08
618	\N	F8	NM_000132.3(F8):c.(1903+1_1904-1)_(2113+1_2114-1)del	2020-08-21 00:00:00+08
619	\N	F8	NM_000132.3(F8):c.2097G>C	2020-08-21 00:00:00+08
620	\N	STXBP1	NM_003165.5(STXBP1):c.1216C>T	2020-08-21 00:00:00+08
621	\N	NPHS1	NM_004646.3(NPHS1):c.[1393T>G];[3213del]	2020-08-21 00:00:00+08
622	\N	GATA1	NM_002049.4(GATA1):c.646C>T	2020-08-21 00:00:00+08
623	\N	FGFR2	NM_000141.5(FGFR2):c.758C>G	2020-08-21 00:00:00+08
624	\N	F9	NM_000133.4(F9):c.956T>A	2020-08-21 00:00:00+08
625	\N	HLA	HLA-6点	2020-08-21 00:00:00+08
626	\N	FBN1	NM_000138.5(FBN1):c.6615A>G	2020-08-21 00:00:00+08
627	\N	VWF	NM_000552.4(VWF):c.4825G>A	2020-08-21 00:00:00+08
628	\N	CYBB	NM_000397.3(CYBB):c.(?_-1)_(*1_?)del	2020-08-21 00:00:00+08
629	\N	GJB2	NM_004004.5(GJB2):c.[109G>A];[235del]	2020-08-21 00:00:00+08
630	\N	IDS	NM_000202.7(IDS):c.416del	2020-08-21 00:00:00+08
631	\N	DNAH11	NM_001277115.1(DNAH11):c.[11839+9delC];[12934-2_12934-1insG]	2020-08-21 00:00:00+08
632	\N	COL1A1	NM_000088.4(COL1A1):c.1792_1793insCCGGCAAGCCTGGAGAGC	2020-08-21 00:00:00+08
633	\N	BPTF	NM_182641.3(BPTF):c.4838_4839del	2020-08-21 00:00:00+08
634	\N	NPC1	NM000271.4(NPC1):c.[1042C>T];[2714dup]	2020-08-21 00:00:00+08
635	\N	NF1	NM_000267.3(NF1):c.(?_-1)_(479+1_480-1)	2020-08-21 00:00:00+08
636	\N	PKD2	NM_000297.4(PKD2):c.2290C>T	2020-08-21 00:00:00+08
637	\N	ALDH1A3	NM_000693.4(ALDH1A3):c.[845G>T];[345+1G>A]	2020-08-21 00:00:00+08
638	\N	EVC2	NM_147127.5(EVC2):c.[1195C>T];[1987G>T]	2020-08-21 00:00:00+08
639	\N	F9	NM_000133.4(F9):c.128G>A	2020-08-21 00:00:00+08
640	\N	HBB	NG_059281.1(HBB):c.316-197C>T	2020-08-21 00:00:00+08
641	\N	MYH9	NM_002473.6(MYH9):c.5797C>T	2020-08-21 00:00:00+08
642	\N	HNF4A	NM_175914.4(HNF4A):c.200G>A	2020-08-21 00:00:00+08
643	\N	F8	INV22	2020-08-21 00:00:00+08
644	\N	TRAPPC12	NM_016030.5(TRAPPC12):c.[(?_-206-1)_(1164+1_1165-1)del];[1418-9G>A]	2020-08-21 00:00:00+08
645	血友病A（HEMA）	F8	NM_000132.3(F8):c.2440C>T	2020-08-21 00:00:00+08
646	\N	RET	NM_020975.4(RET):c.1891G>A	2020-08-21 00:00:00+08
647	多囊肾病1型（PKD1）	PKD1	NM_001009944.2(PKD1):c.9155G>A	2020-08-21 00:00:00+08
648	\N	HBB	NM_000518.5(HBB):c.[126_129delCTTT];[316-197C>T]	2020-08-21 00:00:00+08
649	\N	CANT1	NG_016645.1(CANT1):c.836-9G>A	2020-08-21 00:00:00+08
650	\N	COL4A3	NM_000091.5(COL4A3):c.2990G>A	2020-08-21 00:00:00+08
651	\N	GJB2	NM_004004.5(GJB2):c.[235del];[235del]	2020-08-21 00:00:00+08
652	血友病B（HEMB）	F9	NM_000133.3(F9):c.413A>G	2020-08-21 00:00:00+08
653	\N	ANKRD11	NM_013275.5(ANKRD11):c.7552C>T	2020-08-21 00:00:00+08
654	\N	RHO	NM_000539.3(RHO):c.1033G>T	2020-08-21 00:00:00+08
655	血友病A（HEMA）	F8	NM_000132.3(F8):c.3827C>G	2020-08-21 00:00:00+08
656	β-地贫	HBB	NM_000518.5(HBB):c.[126_129delCTTT];[85dupC]	2020-08-21 00:00:00+08
657	\N	PKD1	NG_008617.1(PKD1):c.8948+1G>A	2020-08-21 00:00:00+08
658	\N	F8	NM_000132.3(F8):c.261G>A	2020-08-21 00:00:00+08
659	\N	BRCA2	NM_000059.3(BRCA2):c.3109C>T	2020-08-21 00:00:00+08
660	常染色体隐性耳聋1A型（DFNB1A）	GJB2	NM_004004.5(GJB2):c.[235del];[299_300del]	2020-08-21 00:00:00+08
661	\N	KRAS	NM_004985.5(KRAS):c.40G>A	2020-08-21 00:00:00+08
662	Norrie病	NDP	NM_000266.3(NDP):c.284G>A	2020-08-21 00:00:00+08
663	\N	GALC	NM_000153.4(GALC):c.[136G>T];[908+1G>A]	2020-08-21 00:00:00+08
664	\N	DSC2	NM_024422.4(DSC2): c.607C>T	2020-08-21 00:00:00+08
665	家族性渗出性玻璃体视网膜病变FEVR	FZD4	NM_012193.4(FZD4):c.707_713delTCACAGT	2020-08-21 00:00:00+08
666	\N	F9	NM_000133.4(F9):c.1238G>A	2020-08-21 00:00:00+08
667	\N	TCOF1	NM_001135243.1(TCOF1):c.2285_2286del	2020-08-21 00:00:00+08
668	\N	NBAS	NM_015909.4(NBAS):c.[2822G>A];[2423+404G>A]	2020-08-21 00:00:00+08
669	X连锁智力障碍104型	FRMPD4	NM_014728.3(FRMPD4):c.3271C>G	2020-08-21 00:00:00+08
670	\N	PPP2R5D	NG_050636.1(PPP2R5D):c.1027-12_1027-11delinsT	2020-08-21 00:00:00+08
671	\N	PPARG 	NM_015869.4(PPARG):c.1367C>T	2020-08-21 00:00:00+08
672	\N	MMACHC	NM_015506.3(MMACHC):c.[47T>C];[609G>A]	2020-08-21 00:00:00+08
673	DMD	DMD	NM_004006.2(DMD):c.1401delA	2020-08-21 00:00:00+08
674	\N	BTK	NM_000061.3(BTK):c.368_369insT	2020-08-21 00:00:00+08
675	ADULT综合征	TP63	NM_003722.5(TP63):c.1010G>A	2020-08-21 00:00:00+08
676	\N	MAGEL2	NM_019066.5(MAGEL2):c.1996dup	2020-08-21 00:00:00+08
677	alpha-地贫	HBA	（--SEA/-α3.7）	2020-08-21 00:00:00+08
678	\N	PAH	NM_000277.3(PAH):c.[442-1G>A];[728G>A]	2020-08-21 00:00:00+08
679	Pelizaeus-Merzbacher病	PLP1	NM_000533.5(PLP1):c.709T>G	2020-08-21 00:00:00+08
680	\N	PCDH19	NM_001184880.2(PCDH19):c.1225G>T	2020-08-21 00:00:00+08
681	甲基丙二酸血症	MMUT	NM_000255.4(MMUT):[c.433G>T];[c.2179C>T]	2020-08-21 00:00:00+08
682	\N	EXT2	NM_207122.2(EXT2):c.1171C>T	2020-08-21 00:00:00+08
683	肾病综合征1型（NPHS1）	NPHS1	NM_004646.3(NPHS1):c.[616C>A];[2207T>C]	2020-08-21 00:00:00+08
684	\N	HBB	NM_000518.5(HBB):c.17_18del	2020-08-21 00:00:00+08
685	毛细血管扩张性共济失调（AT）	ATM	NM_000051.3(ATM):c.[2872G>T];[8918_8929delinsTGT]	2020-08-21 00:00:00+08
686	\N	DMD	NM_004006.2(DMD):c.4483C>T 	2020-08-21 00:00:00+08
687	乳腺癌	BRCA2	NM_000059(BRCA2):c.1296_1297insA	2020-08-21 00:00:00+08
688	\N	EDNRB	NM_000115.5(EDNRB):c.[717_719delinsGACA];[483+3A>G]	2020-08-21 00:00:00+08
689	短肋胸廓发育不良3 型伴或不伴多指/趾畸形	DYNC2H1	NM_001080463.1(DYNC2H1):c.[727T>A];[9010C>T]	2020-08-21 00:00:00+08
690	\N	DACT1	NM_016651.6(DACT1):c.1135dup	2020-08-21 00:00:00+08
691	\N	PKHD1	NM_138694.4(PKHD1):c.[10444C>T];[8851G>C]	2020-08-21 00:00:00+08
692	X连锁隐性肌管性肌病（XLMM）	MTM1	NM_000252.2(MTM1):c.[(63+1_64-1)_(136+1_213-1)]del	2020-08-21 00:00:00+08
693	\N	SPINK5	NM_006846.4(SPINK5):c.[377_378del];[2468dup]	2020-08-21 00:00:00+08
694	ARG1	\N	\N	2020-08-21 00:00:00+08
695	幼婴癫痫性脑病6型（EIEE6）	SCN1A	NM_001165963.2(SCN1A):c.4943G>A	2020-08-21 00:00:00+08
696	\N	CYP17A1	NM_000102.4(CYP17A1):c.[1486C>T];[932_939del]	2020-08-21 00:00:00+08
697	\N	ETFDH	NM_004453.4(ETFDH):c.[244T>C];[1227A>C]	2020-08-21 00:00:00+08
698	全面发育迟缓伴或不伴智力发育受损 (AD )	CUX1	NM_181552.4(CUX1):c.24del	2020-08-21 00:00:00+08
699	\N	KCNH2	NM_000238.4(KCNH2):c.1681G>A	2020-08-21 00:00:00+08
700	\N	NF2	NM_000268.4(NF2):c.(114+1_115-1)_(*3796+1_?)del	2020-08-21 00:00:00+08
701	Glass综合征	SATB2	NM_015265.3(SATB2):c.1244T>A	2020-08-21 00:00:00+08
702	\N	EIF2B2	NM_014239.4(EIF2B2):c.[254T>A];[793_797del]	2020-08-21 00:00:00+08
703	SMA	SMN1	NM_000344.3(SMN1):c.(834+1_835-1)_(*577+1_?)del	2020-08-21 00:00:00+08
704	多囊肾病1 型	PKD1	NM_001009944.2(PKD1):c.2387A>G 	2020-08-21 00:00:00+08
705	\N	RELN	NM_005045.4(RELN):c.9904G>A	2020-08-21 00:00:00+08
706	\N	BTK	NG_009616.1(BTK):c.839+4_839+7del	2020-08-21 00:00:00+08
707	氨甲酰磷酸合成酶I 缺乏症(CPS1D)	CPS1	NM_001875.4(CPS1):c.[2407C>G];[4088_4099del]	2020-08-21 00:00:00+08
708	\N	TSC1	NM_000368.4(TSC1):c.737+1G>A	2020-08-21 00:00:00+08
709	\N	ERCC6	NM_000124.4(ERCC6):c.[2510G>A];[(?_-174-1)_(*4345+1_?)	2020-08-21 00:00:00+08
710	神经纤维瘤病I型(NF1)	NF1	NM_000267.3(NF1):c.3113+1G>A	2020-08-21 00:00:00+08
711	DMD 	DMD	E45-47DEL	2020-08-21 00:00:00+08
712	\N	ADSL	NM_000026.4(ADSL):c.[5C>T];[778G>A]	2020-08-21 00:00:00+08
713	\N	MYBPC3	NM_000256.3(MYBPC3):c.3624del	2020-08-21 00:00:00+08
714	\N	F8	NM_000132.3(F8):c.6407G>A	2020-08-21 00:00:00+08
715	血友病B（HEMB）	F9	NM_000133.3(F9):c.71T>C 	2020-08-21 00:00:00+08
716	\N	CTNND1	NM_001085458.2(CTNND1):c.2636C>A	2020-08-21 00:00:00+08
717	\N	USH2A	NM_206933.4(USH2A):c.[5637delinsTT];[8559-2A>G]	2020-08-21 00:00:00+08
718	X-连锁 Alport 综合征1型	COL4A5	NM_000495.4(COL4A5):c.834+1G>C	2020-08-21 00:00:00+08
719	\N	TREX1	NM_033629.6(TREX1):c.[433_437del];[341G>A]	2020-08-21 00:00:00+08
720	\N	MYO15A	NM_016239.4(MYO15A):c.[6845A>C];[4597-2A>G]	2020-08-21 00:00:00+08
721	多囊肾病1 型	PKD1	NM_001009944.2(PKD1):c.7863+1G>A	2020-08-21 00:00:00+08
722	\N	F8	NM_000132.4(F8):c.205_206del	2020-08-21 00:00:00+08
723	\N	FH	NM_000143.4(FH):c.1027C>T	2020-08-21 00:00:00+08
724	常染色体隐性炎症性肠病28型（IBD28）	IL10RA	NM_001558.3(IL10RA):c.301C>T	2020-08-21 00:00:00+08
725	\N	CHD7	NM_017780.4(CHD7):c.3303dup	2020-08-21 00:00:00+08
726	\N	PKD2	NG_008604.1(PKD2):c.1094+1G>C	2020-08-21 00:00:00+08
727	血友病B（HEMB）	F9	NM_000133.3(F9):c.1316del	2020-08-21 00:00:00+08
728	DMD 	DMD	EX12-16DEL；NM_004006.2(DMD):c.[(1331+1_1332-1)_(1992+1_1993-1)del]	2020-08-21 00:00:00+08
729	DMD	DMD	EX51del；NM_004006.2(DMD):c.[(7309+1_7310-1)_(7542+1_7543-1)del]	2020-08-21 00:00:00+08
730	\N	COL2A1	NM_001844.5(COL2A1):c.2330G>C	2020-08-21 00:00:00+08
731	\N	F9	 NM_000133.4(F9):c.1136G>A	2020-08-21 00:00:00+08
732	血友病A（HEMA）	F8	NM_000132.3(F8):c.1492G>A	2020-08-21 00:00:00+08
733	\N	NPHS1	 NM_004646.4(NPHS1):c.[616C>A];[1628-10C>A]	2020-08-21 00:00:00+08
734	\N	KMT2A	 NM_001197104.2(KMT2A):c.3241C>T	2020-08-21 00:00:00+08
735	LIG4综合征	LIG4	NM_002312.3(LIG4):c.[833G>T];[1144_1145del]	2020-08-21 00:00:00+08
736	\N	F8	NM_000132.3(F8):c.3911del	2020-08-21 00:00:00+08
737	\N	SKI	NM_003036.4(SKI):c.94C>G	2020-08-21 00:00:00+08
738	\N	TBC1D24	NM_001199107.1(TBC1D24):c.1274T>C	2020-08-21 00:00:00+08
739	\N	BMPR2	NM_001204.7(BMPR2):c.1452G>A	2020-08-21 00:00:00+08
740	\N	PKD1	NM_001009944.3(PKD1):c.1028C>G	2020-08-21 00:00:00+08
741	家族性乳腺癌-卵巢癌易感性1型（BROVCA1）	BRCA1	NM_007294.3(BRCA1):c.3359_3363del	2020-08-21 00:00:00+08
742	\N	SCN2A	NM_021007.3(SCN2A):c.3631G>A	2020-08-21 00:00:00+08
743	\N	PKHD1	 NM_138694.4(PKHD1):c.[6910C>T];[4199C>T]	2020-08-21 00:00:00+08
744	视网膜色素变性11型（RP11）	PRPF31	NM_015629.3(PRPF31):c.1101del	2020-08-21 00:00:00+08
745	\N	TYR	 NM_000372.5(TYR):c.[229C>G];[230_232dup]	2020-08-21 00:00:00+08
746	\N	POLR3A	NM_007055.4(POLR3A):c.[1781T>G];[2723A>T]	2020-08-21 00:00:00+08
747	Wiskott-Aldrich综合征（WAS）	WAS	NM_000377.2(WAS):c.330dup	2020-08-21 00:00:00+08
748	\N	TGM1	NM_000359.3(TGM1):c.1586C>T	2020-08-21 00:00:00+08
749	\N	KRT9	NM_000226.4(KRT9):c.488G>A	2020-08-21 00:00:00+08
750	血友病A（HEMA）	F8	NM_000132.4(F8):c.6272A>G	2020-08-21 00:00:00+08
751	\N	TSC2	NM_000548.5(TSC2):c.3095G>C	2020-08-21 00:00:00+08
752	\N	DMD	NM_004006.3(DMD):c.10262+1G>A	2020-08-21 00:00:00+08
753	Pelizaeus-Merzbacher病	PLP1	NM_000533.5(PLP1):c.94T>C	2020-08-21 00:00:00+08
754	\N	GCH1	NM_000161.2(GCH1):c.150_156del	2020-08-21 00:00:00+08
755	\N	F8	NM_000132.4(F8):c.[(143+1_144-1)_(787+1_788-1)del]	2020-08-21 00:00:00+08
756	DMD	DMD	EX56_77DUP	2020-08-21 00:00:00+08
757	血友病A（HEMA）	F8	NM_000132.3(F8):c.1913G>T	2020-08-21 00:00:00+08
758	\N	FGFR2	NM_000141.5(FGFR2):c.833G>T	2020-08-21 00:00:00+08
759	DMD	DMD	EX51_55DEL	2020-08-21 00:00:00+08
760	DMD	DMD	EX46_48DEL	2020-08-21 00:00:00+08
761	\N	GJB2	NM_004004.5(GJB2):c.[235del];[235del]	2020-08-21 00:00:00+08
762	黏多糖贮积症Ⅵ型（MPS Ⅵ）	ARSB	NM_000046.3(ARSB):c.200T>G	2020-08-21 00:00:00+08
763	颅脑发育异常	HESX1	NM_003865.2(HESX1):c.142A>T	2020-08-21 00:00:00+08
764	\N	F8	NM_000132.4(F8):c.6574+1G>C	2020-08-21 00:00:00+08
765	\N	CFTR	NM_000492.4(CFTR):c.[263T>G];[1766+5G>T]	2020-08-21 00:00:00+08
766	Duchenne氏肌营养不良（DMD）	DMD	NM_004006.2(DMD):c.3727_3728del	2020-08-21 00:00:00+08
767	\N	IDS	NM_000202.8(IDS):c.495T>A	2020-08-21 00:00:00+08
768	\N	PKD1	NM_001009944.3(PKD1):c.6506T>C	2020-08-21 00:00:00+08
769	\N	CLPB 	NM_030813.4（CLPB):c.[736+5T>C];[736+2T>C]	2020-08-21 00:00:00+08
770	 	HBB	NM_000518.5(HBB):c.316-197C>T	2020-08-21 00:00:00+08
771	\N	PKD1	NM_001009944.3(PKD1):c.11880_11950del	2020-08-21 00:00:00+08
772	Duchenne氏肌营养不良（DMD）	DMD	NM_004006.2(DMD):c.4020C>G	2020-08-21 00:00:00+08
773	\N	SHANK3	NM_033517.1(SHANK3):c.[(963+1_964-1)_(*1900_?)del]	2020-08-21 00:00:00+08
774	戊二酸血症（GCDH）	GCDH	NM_000159.3(GCDH):c.[406G>T];[437C>T]	2020-08-21 00:00:00+08
775	白内障2多种类型（CTRCT2）	CRYGC	NM_020989.3(CRYGC):c.423del	2020-08-21 00:00:00+08
776	肉碱软脂酰转移酶II缺乏症,婴儿型	CPT2	NM_000098.2(CPT2):c.896_906dup	2020-08-21 00:00:00+08
777	骨硬化症,常染色体隐性4（OPTB4）	CLCN7	NM_001287.5(CLCN7):c.[647_648dup];[1409C>T]	2020-08-21 00:00:00+08
778	晶状体异位,家族性（ECTOL1）	FBN1	NM_000138.4(FBN1):c.7559C>T	2020-08-21 00:00:00+08
779	\N	TSC2	\N	2020-08-21 00:00:00+08
780	\N	NIPA1	\N	2020-08-21 00:00:00+08
\.


--
-- Data for Name: report_report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.report_report (id, pdf, uploaded_at, pathogenicity_id, sample_id) FROM stdin;
1	20200004-苏芳-DMD.pdf	2020-08-21 00:00:00+08	711	755
2	20200002-周红地-SMA.pdf	2020-08-21 00:00:00+08	703	747
3	20200001-范敏清-SMA.pdf	2020-08-21 00:00:00+08	703	741
4	11200083-蒋丽霞-F8.pdf	2020-08-21 00:00:00+08	732	776
5	11200080-徐蓓-COL2A1.pdf	2020-08-21 00:00:00+08	730	774
6	11200072-车雪娟-F8.pdf	2020-08-21 00:00:00+08	722	766
7	11200068-范锦璐-TREX1.pdf	2020-08-21 00:00:00+08	719	763
8	11200063-刘小飞-F9.pdf	2020-08-21 00:00:00+08	715	759
9	11200059-冯小月-NF1.pdf	2020-08-21 00:00:00+08	710	754
10	11200055-余江小-CPS1.pdf	2020-08-21 00:00:00+08	707	751
11	11200054-张桂芹-BTK.pdf	2020-08-21 00:00:00+08	706	750
12	11200051-朱佳颖-PKD1.pdf	2020-08-21 00:00:00+08	704	748
13	11200047-任冉冉-SATB2.pdf	2020-08-21 00:00:00+08	701	745
14	11200042-谢美兰-ETFDH.pdf	2020-08-21 00:00:00+08	697	740
15	11200039-李晶-SCN1A.pdf	2020-08-21 00:00:00+08	695	738
16	11200038-黄巧玲-α地贫.pdf	2020-08-21 00:00:00+08	358	737
17	11200035-李晶-MTM1.pdf	2020-08-21 00:00:00+08	692	734
18	11200027-张磊-ATM.pdf	2020-08-21 00:00:00+08	685	727
19	11200021-李红华-PLP1.pdf	2020-08-21 00:00:00+08	679	721
20	11200019-管文华-HBA.pdf	2020-08-21 00:00:00+08	677	719
21	11200015-冯春梅-DMD.pdf	2020-08-21 00:00:00+08	673	715
22	11200013-庄建华-PPARG.pdf	2020-08-21 00:00:00+08	671	713
23	11200010-薛琴-NBAS.pdf	2020-08-21 00:00:00+08	668	710
24	11200009-陈晨-TCOF1.pdf	2020-08-21 00:00:00+08	667	709
25	11200005-庄建华-DSC2.pdf	2020-08-21 00:00:00+08	664	706
26	11200002-贾雪菱-KRAS.pdf	2020-08-21 00:00:00+08	661	703
27	11200001-余志杰-GJB2.pdf	2020-08-21 00:00:00+08	660	702
28	11191012-董芳-F8.pdf	2020-08-21 00:00:00+08	613	685
29	11191008-虞晓梅-F8.pdf	2020-08-21 00:00:00+08	261	599
30	11191007-何芳艳-F8.pdf	2020-08-21 00:00:00+08	261	598
31	11191005-张洋-F8.pdf	2020-08-21 00:00:00+08	261	558
32	11191004-陈艳-F8.pdf	2020-08-21 00:00:00+08	261	557
33	11191003-赵泽-F8.pdf	2020-08-21 00:00:00+08	261	556
34	11191002-司玮-F8.pdf	2020-08-21 00:00:00+08	261	555
35	11190236-毛芳-F8.pdf	2020-08-21 00:00:00+08	658	700
36	11190233-戴逸韵-BRCA2.pdf	2020-08-21 00:00:00+08	659	701
37	11190229-黄挺-ANKRD11.pdf	2020-08-21 00:00:00+08	653	695
38	11190228-喻春梅-F9.pdf	2020-08-21 00:00:00+08	652	694
39	11190225-秦和-PKD1.pdf	2020-08-21 00:00:00+08	647	689
40	11190222-陆小红-RET.pdf	2020-08-21 00:00:00+08	646	688
41	11190220-谢漫漫-MYH9.pdf	2020-08-21 00:00:00+08	641	683
42	11190219-戴娟-TRAPPC12.pdf	2020-08-21 00:00:00+08	644	686
43	11190216-阮阳娜-F8.pdf	2020-08-21 00:00:00+08	645	687
44	11190215-傅宸睿-F9.pdf	2020-08-21 00:00:00+08	639	681
45	11190213-吴溶溶-NPC1.pdf	2020-08-21 00:00:00+08	634	676
46	11190210-张亚萍-BPTF.pdf	2020-08-21 00:00:00+08	633	675
47	11190209-周婧倩-NF1.pdf	2020-08-21 00:00:00+08	635	677
48	11190207-王秀英-IDS.pdf	2020-08-21 00:00:00+08	630	672
49	11190204-张昱鑫-GJB2.pdf	2020-08-21 00:00:00+08	629	671
50	11190201-徐葛玲-CYBB.pdf	2020-08-21 00:00:00+08	628	670
51	11190198-韩晓梅-NPHS1.pdf	2020-08-21 00:00:00+08	621	663
52	11190195-金勤-GUCY2C.pdf	2020-08-21 00:00:00+08	612	654
53	11190193-王彩霞-F8.pdf	2020-08-21 00:00:00+08	616	658
54	11190192-姜琦-ARX.pdf	2020-08-21 00:00:00+08	611	653
55	11190189-常英健-NR0B1.pdf	2020-08-21 00:00:00+08	610	652
56	11190186-陈玉芳-ALG1.pdf	2020-08-21 00:00:00+08	609	651
57	11190184-周琰-SMARCA2.pdf	2020-08-21 00:00:00+08	606	648
58	11190183-吴伊丽-COMP.pdf	2020-08-21 00:00:00+08	608	650
59	11190180-陈相如-G6PD.pdf	2020-08-21 00:00:00+08	601	643
60	11190177-陈相如-PKLR.pdf	2020-08-21 00:00:00+08	600	642
61	11190174-刘培源-NF1.pdf	2020-08-21 00:00:00+08	313	641
62	11190172-蔡玉莲-FGFR3.pdf	2020-08-21 00:00:00+08	60	635
63	11190171-郭燕飞-CYP21A2.pdf	2020-08-21 00:00:00+08	598	640
64	11190168-廖婧-SLC22A5.pdf	2020-08-21 00:00:00+08	590	631
65	11190165-胡丽珊-COL1A1.pdf	2020-08-21 00:00:00+08	589	630
66	11190162-刘明霞-F8.pdf	2020-08-21 00:00:00+08	585	626
67	11190159-黄海军-GJB2.pdf	2020-08-21 00:00:00+08	138	625
68	11190156-范龙梅-F9.pdf	2020-08-21 00:00:00+08	583	624
69	11190153-王程-ATP7A.pdf	2020-08-21 00:00:00+08	582	623
70	11190150-李婉玲-RIT1.pdf	2020-08-21 00:00:00+08	572	612
71	11190149-徐文-F8.pdf	2020-08-21 00:00:00+08	576	616
72	11190144-凌娟-F8.pdf	2020-08-21 00:00:00+08	570	610
73	11190141-曹海霞-TGM1.pdf	2020-08-21 00:00:00+08	569	609
74	11190140-韩晓辰-NKX2-5.pdf	2020-08-21 00:00:00+08	564	604
75	11190138-顾婷-EXT2.pdf	2020-08-21 00:00:00+08	568	608
76	11190135-朱恩-F8.pdf	2020-08-21 00:00:00+08	567	607
77	11190133-路敏-GJB2.pdf	2020-08-21 00:00:00+08	138	596
78	11190132-张二敏-F8.pdf	2020-08-21 00:00:00+08	329	595
79	11190131-严志琴-MRE11A.pdf	2020-08-21 00:00:00+08	558	594
80	11190129-杨莉娜-DMD.pdf	2020-08-21 00:00:00+08	556	592
81	11190127-杨欣-KMT2A.pdf	2020-08-21 00:00:00+08	555	590
82	11190126-于建莉-F8.pdf	2020-08-21 00:00:00+08	554	589
83	11190125-颜李娜-F8.pdf	2020-08-21 00:00:00+08	553	588
84	11190123-刘洋-COL4A5.pdf	2020-08-21 00:00:00+08	551	586
85	11190122-宋柳-KMT2D.pdf	2020-08-21 00:00:00+08	550	585
86	11190120-刘倩倩-IL2RG.pdf	2020-08-21 00:00:00+08	548	583
87	11190119-李茜-TYR.pdf	2020-08-21 00:00:00+08	547	582
88	11190118-潘越-地贫.pdf	2020-08-21 00:00:00+08	511	581
89	11190117-章丹平-BBS10.pdf	2020-08-21 00:00:00+08	545	580
90	11190116-汪俊-GREB1L.pdf	2020-08-21 00:00:00+08	544	579
91	11190115-黄诗语-COL9A1.pdf	2020-08-21 00:00:00+08	543	578
92	11190114-徐巧-SMC1A.pdf	2020-08-21 00:00:00+08	542	577
93	11190111-徐巧-GRIN1.pdf	2020-08-21 00:00:00+08	539	574
94	11190109-左剑伟-DYNC1H1.pdf	2020-08-21 00:00:00+08	537	572
95	11190108-邱小红-COL4A5.pdf	2020-08-21 00:00:00+08	536	571
96	11190107-姜晓颖-MMACHC.pdf	2020-08-21 00:00:00+08	535	570
97	11190106-李琼-ALPL.pdf	2020-08-21 00:00:00+08	534	569
98	11190105-雷萍萍-COL4A5.pdf	2020-08-21 00:00:00+08	533	568
99	11190104-姜淼-WAS.pdf	2020-08-21 00:00:00+08	532	567
100	11190103-张小慢-F9.pdf	2020-08-21 00:00:00+08	531	566
101	11190101-许璟婧-OTC.pdf	2020-08-21 00:00:00+08	529	564
102	11190100-王婷-SCN1A.pdf	2020-08-21 00:00:00+08	528	563
103	11190099-张霞-VPS13B.pdf	2020-08-21 00:00:00+08	525	560
104	11190098-贺曦-PKD1.pdf	2020-08-21 00:00:00+08	527	562
105	11190097-欧阳文君-NF1.pdf	2020-08-21 00:00:00+08	526	561
106	11190096-黄春园-NF1.pdf	2020-08-21 00:00:00+08	524	554
107	11190095-陈丽婷-MUSK.pdf	2020-08-21 00:00:00+08	523	553
108	11190094-刘倩-NF1.pdf	2020-08-21 00:00:00+08	522	552
109	11190093-袁韵-TARS2.pdf	2020-08-21 00:00:00+08	521	551
110	11190091-王翠-CTNS.pdf	2020-08-21 00:00:00+08	520	550
111	11190090-王鑫-FLG.pdf	2020-08-21 00:00:00+08	519	549
112	11190089-段晨晨-F9.pdf	2020-08-21 00:00:00+08	518	548
113	11190088-贾文娟-F8.pdf	2020-08-21 00:00:00+08	517	547
114	11190087-陈鎏-CDK16.pdf	2020-08-21 00:00:00+08	516	546
115	11190086-朱丽丽-F8.pdf	2020-08-21 00:00:00+08	515	545
116	11190085-许诗文-地贫.pdf	2020-08-21 00:00:00+08	511	544
117	11190084-高婷婷-PIGA.pdf	2020-08-21 00:00:00+08	513	543
118	11190083-庞凝-F8.pdf	2020-08-21 00:00:00+08	512	542
119	11190082-潘越-地贫.pdf	2020-08-21 00:00:00+08	511	541
120	11190081-丁芸琦-TRPM1.pdf	2020-08-21 00:00:00+08	510	540
121	11190080-陈琦-TSC2.pdf	2020-08-21 00:00:00+08	509	539
122	11190079-闵靖-TSC1.pdf	2020-08-21 00:00:00+08	508	538
123	11190078-魏晨欢-CDK10.pdf	2020-08-21 00:00:00+08	507	537
124	11190076-邓小珠-FBN1.pdf	2020-08-21 00:00:00+08	506	536
125	11190075-刘崚昱-10q24.31q24.32.pdf	2020-08-21 00:00:00+08	505	535
126	11190074-赵海霞-CYBB.pdf	2020-08-21 00:00:00+08	504	534
127	11190073-黄亚萍-F8.pdf	2020-08-21 00:00:00+08	503	533
128	11190072-张语阳-F8.pdf	2020-08-21 00:00:00+08	502	532
129	11190071-王超-SARS2.pdf	2020-08-21 00:00:00+08	501	531
130	11190070-侍子涵-TPP1.pdf	2020-08-21 00:00:00+08	500	530
131	11190069-张蓉蓉-F8.pdf	2020-08-21 00:00:00+08	413	529
132	11190068-王圆圆-PROM1.pdf	2020-08-21 00:00:00+08	499	528
133	11190067-徐斌-FBN1.pdf	2020-08-21 00:00:00+08	498	527
134	11190066-阮婷婷-AR.pdf	2020-08-21 00:00:00+08	497	526
135	11190065-黄云-PKD1.pdf	2020-08-21 00:00:00+08	496	525
136	11190064-郁晓芸-NF1.pdf	2020-08-21 00:00:00+08	495	524
137	11190063-杨艳-PKD1.pdf	2020-08-21 00:00:00+08	494	523
138	11190062-吕荟萍-CRX.pdf	2020-08-21 00:00:00+08	493	522
139	11190061-朱晓静-C5orf42.pdf	2020-08-21 00:00:00+08	492	521
140	11190060-丁改娟-PAX2.pdf	2020-08-21 00:00:00+08	491	520
141	11190059-朱晓静-MSH2.pdf	2020-08-21 00:00:00+08	490	519
142	11190058-孙立梅-CEP290.pdf	2020-08-21 00:00:00+08	489	518
143	11190057-靳素娟-FGFR2.pdf	2020-08-21 00:00:00+08	488	517
144	11190056-冯保会-COG5.pdf	2020-08-21 00:00:00+08	487	516
145	11190054-陈凡-MPDZ.pdf	2020-08-21 00:00:00+08	485	514
146	11190053-张刘慧-ITGA3.pdf	2020-08-21 00:00:00+08	484	513
147	11190052-陈丹-ARSA.pdf	2020-08-21 00:00:00+08	483	512
148	11190050-徐海静-MECP2.pdf	2020-08-21 00:00:00+08	482	510
149	11190049-徐冲-F9.pdf	2020-08-21 00:00:00+08	481	509
150	11190048-姚玲玲-F8.pdf	2020-08-21 00:00:00+08	480	508
151	11190047-王利-ARSA.pdf	2020-08-21 00:00:00+08	479	507
152	11190046-朱白桦-MME.pdf	2020-08-21 00:00:00+08	478	506
153	11190045-张蓉蓉-DMD.pdf	2020-08-21 00:00:00+08	477	505
154	11190044-王维维-FGFR3.pdf	2020-08-21 00:00:00+08	476	504
155	11190043-王晓春-F8.pdf	2020-08-21 00:00:00+08	475	503
156	11190041-郭玉琴-MTM1.pdf	2020-08-21 00:00:00+08	473	501
157	11190039-程小燕-PLA2G6.pdf	2020-08-21 00:00:00+08	471	499
158	11190036-李悦-CDKN1C.pdf	2020-08-21 00:00:00+08	468	496
159	11190035-陈晶-PEX1.pdf	2020-08-21 00:00:00+08	467	495
160	11190034-石文君-PCCB.pdf	2020-08-21 00:00:00+08	466	494
161	11190033-董森琴-F8.pdf	2020-08-21 00:00:00+08	465	493
162	11190032-刘劝劝-F8.pdf	2020-08-21 00:00:00+08	464	492
163	11190031-徐婷-F8.pdf	2020-08-21 00:00:00+08	463	491
164	11190030-赵艳平-PRDM16.pdf	2020-08-21 00:00:00+08	462	490
165	11190029-王莺-F8.pdf	2020-08-21 00:00:00+08	461	489
166	11190028-陈丹-RAD50.pdf	2020-08-21 00:00:00+08	460	488
167	11190027-周清勤-ATM.pdf	2020-08-21 00:00:00+08	459	487
168	11190026-谢芝妮-MUT.pdf	2020-08-21 00:00:00+08	458	486
169	11190025-陈心怡-PKD1.pdf	2020-08-21 00:00:00+08	457	485
170	11190024-张颖-CRB1.pdf	2020-08-21 00:00:00+08	456	484
171	11190023-邵佩娜-COL11A1.pdf	2020-08-21 00:00:00+08	455	483
172	11190022-邵佩娜-COL1A2.pdf	2020-08-21 00:00:00+08	454	482
173	11190021-鲁爱莲-IL2RG.pdf	2020-08-21 00:00:00+08	453	481
174	11181019-李梅霞-F8.pdf	2020-08-21 00:00:00+08	427	466
175	11181019-李梅霞-F8.pdf	2020-08-21 00:00:00+08	452	466
176	11181018-王判-F8.pdf	2020-08-21 00:00:00+08	427	464
177	11181017-时瑶瑶-F8.pdf	2020-08-21 00:00:00+08	427	455
178	11181015-杜晓璐-F8.pdf	2020-08-21 00:00:00+08	427	453
179	11181014-李慧-F8.pdf	2020-08-21 00:00:00+08	427	452
180	11181013-董秋丽-F8.pdf	2020-08-21 00:00:00+08	427	451
181	11181011-谢佳霞-F8.pdf	2020-08-21 00:00:00+08	427	449
182	11181010-张香萍-F8.pdf	2020-08-21 00:00:00+08	427	448
183	11181009-王丽-F8.pdf	2020-08-21 00:00:00+08	427	447
184	11181008-王淑贤-F8.pdf	2020-08-21 00:00:00+08	427	446
185	11181007-王艺-F8.pdf	2020-08-21 00:00:00+08	427	445
186	11181006-胡珍-F8.pdf	2020-08-21 00:00:00+08	427	444
187	11181005-李媛媛-F8.pdf	2020-08-21 00:00:00+08	427	443
188	11181004-郑毓秀-F8.pdf	2020-08-21 00:00:00+08	427	442
189	11181003-史沫-F8.pdf	2020-08-21 00:00:00+08	427	441
190	11181002-朱柳平-F8.pdf	2020-08-21 00:00:00+08	427	440
191	11181001-张泽阳-F9.pdf	2020-08-21 00:00:00+08	426	439
192	11180195-彭思-ATXN3.pdf	2020-08-21 00:00:00+08	451	479
193	11180193-杨红磊-TYR.pdf	2020-08-21 00:00:00+08	449	477
194	11180192-朱孟华-COL4A5.pdf	2020-08-21 00:00:00+08	448	476
195	11180191-谭亚茹-EPHB4.pdf	2020-08-21 00:00:00+08	447	475
196	11180190-柯文珺-COL1A1.pdf	2020-08-21 00:00:00+08	446	474
197	11180189-赵芬-DMD.pdf	2020-08-21 00:00:00+08	445	473
198	11180188-朱治芳-SMC1A.pdf	2020-08-21 00:00:00+08	444	472
199	11180187-董莉莉-NOTCH1.pdf	2020-08-21 00:00:00+08	443	471
200	11180186-高梦茹-GJB2.pdf	2020-08-21 00:00:00+08	306	470
201	11180185-董莉莉-TNNI3.pdf	2020-08-21 00:00:00+08	441	469
202	11180184-徐杰-MMACHC.pdf	2020-08-21 00:00:00+08	440	468
203	11180183-唐怡-TMEM67.pdf	2020-08-21 00:00:00+08	439	467
204	11180181-刘春霞-F8.pdf	2020-08-21 00:00:00+08	437	465
205	11180180-孙立丽-SETD2.pdf	2020-08-21 00:00:00+08	435	463
206	11180179-王敏-RAG1.pdf	2020-08-21 00:00:00+08	434	462
207	11180178-欧阳宇-SUFU.pdf	2020-08-21 00:00:00+08	291	461
208	11180176-何长美-RET.pdf	2020-08-21 00:00:00+08	432	460
209	11180175-孟莹莹-NDP.pdf	2020-08-21 00:00:00+08	425	438
210	11180174-徐晶-F8.pdf	2020-08-21 00:00:00+08	431	459
211	11180171-孙勇-WFS1.pdf	2020-08-21 00:00:00+08	423	436
212	11180170-黄大敏-NIPA1.pdf	2020-08-21 00:00:00+08	780	435
213	11180170-黄大敏-NIPA1.pdf	2020-08-21 00:00:00+08	429	435
214	11180168-管峻-ANK1.pdf	2020-08-21 00:00:00+08	421	433
215	11180164-邢兰香-F8.pdf	2020-08-21 00:00:00+08	417	429
216	11180163-陆琳琰-VWF.pdf	2020-08-21 00:00:00+08	416	428
217	11180162-余素瑶-GBE1.pdf	2020-08-21 00:00:00+08	369	427
218	11180161-陆琳琰-F8.pdf	2020-08-21 00:00:00+08	414	426
219	11180160-郑洁-F8.pdf	2020-08-21 00:00:00+08	413	425
220	11180159-王连连-PKHD1.pdf	2020-08-21 00:00:00+08	412	424
221	11180158-刘曼-F7.pdf	2020-08-21 00:00:00+08	411	423
222	11180157-沈骏婕-DMD.pdf	2020-08-21 00:00:00+08	410	422
223	11180156-朱冬林-SCN1A.pdf	2020-08-21 00:00:00+08	409	421
224	11180155-刘静-TOP3A.pdf	2020-08-21 00:00:00+08	408	420
225	11180154-施丽君-GREB1L.pdf	2020-08-21 00:00:00+08	407	419
226	11180153-韦秋惠-TAF2.pdf	2020-08-21 00:00:00+08	406	418
227	11180152-戴雯-BRCA2.pdf	2020-08-21 00:00:00+08	405	417
228	11180150-龚君芳-DMD.pdf	2020-08-21 00:00:00+08	403	415
229	11180149-何宇浩-ATXN3.pdf	2020-08-21 00:00:00+08	402	414
230	11180148-龚君芳-ANK1.pdf	2020-08-21 00:00:00+08	401	413
231	11180144-余漫-TYR.pdf	2020-08-21 00:00:00+08	397	409
232	11180143-赵雪-F8.pdf	2020-08-21 00:00:00+08	396	408
233	11180142-黄巧玲-F8.pdf	2020-08-21 00:00:00+08	395	407
234	11180141-祝嫣婷-F8.pdf	2020-08-21 00:00:00+08	394	406
235	11180140-张良娟-MYH7.pdf	2020-08-21 00:00:00+08	393	405
236	11180138-陈霞-PAH.pdf	2020-08-21 00:00:00+08	391	403
237	11180136-米雪-F8.pdf	2020-08-21 00:00:00+08	389	401
238	11180134-陆伟飞-FLG.pdf	2020-08-21 00:00:00+08	387	399
239	11180132-徐丹-IGHMBP2.pdf	2020-08-21 00:00:00+08	385	397
240	11180130-陈洁-GRIN2D.pdf	2020-08-21 00:00:00+08	383	395
241	11180128-温丽娟-COL4A5.pdf	2020-08-21 00:00:00+08	381	393
242	11180126-刘晶晶-F8.pdf	2020-08-21 00:00:00+08	379	391
243	11180122-朱梦娇-CRYBB2.pdf	2020-08-21 00:00:00+08	375	387
244	11180118-杨永祥-IL2RG.pdf	2020-08-21 00:00:00+08	371	383
245	11180117-韩春华-PKD2.pdf	2020-08-21 00:00:00+08	370	382
246	11180116-余素瑶-GBE1.pdf	2020-08-21 00:00:00+08	369	381
247	11180112-朱元春-VHL.pdf	2020-08-21 00:00:00+08	366	377
248	11180110-马丹华-PRODH.pdf	2020-08-21 00:00:00+08	364	375
249	11180108-袁晓慧-EDA.pdf	2020-08-21 00:00:00+08	362	373
250	11180106-张晶-CRYAA.pdf	2020-08-21 00:00:00+08	360	371
251	11180104-陈桂香-地贫.pdf	2020-08-21 00:00:00+08	358	369
252	11180103-陈凯-PKD1.pdf	2020-08-21 00:00:00+08	357	368
253	11180102-张孜安-FGFR3.pdf	2020-08-21 00:00:00+08	356	367
254	11180100-汤文娟-FBN1.pdf	2020-08-21 00:00:00+08	354	365
255	11180098-崔芳-F8.pdf	2020-08-21 00:00:00+08	352	363
256	11180092-成晶晖-F8.pdf	2020-08-21 00:00:00+08	347	358
257	11180091-韩翠萍-F8.pdf	2020-08-21 00:00:00+08	346	357
258	11180090-杨玉萍-PKHD1.pdf	2020-08-21 00:00:00+08	345	356
259	11180089-唐悦-BRCA1.pdf	2020-08-21 00:00:00+08	343	355
260	11180089-唐悦-BRCA1.pdf	2020-08-21 00:00:00+08	344	355
261	11180088-黄彩虹-TSC2.pdf	2020-08-21 00:00:00+08	779	354
262	11180087-胡志芳-ARR3.pdf	2020-08-21 00:00:00+08	342	353
263	11180085-蔡霖-FBN1.pdf	2020-08-21 00:00:00+08	340	351
264	11180084-杨梅-SRD5A2.pdf	2020-08-21 00:00:00+08	339	350
265	11180083-孙婷-SRD5A2.pdf	2020-08-21 00:00:00+08	338	349
266	11180081-陆鹏屹-F8.pdf	2020-08-21 00:00:00+08	336	347
267	11180079-王文君-F8.pdf	2020-08-21 00:00:00+08	334	345
268	11180078-江丽-PHF8.pdf	2020-08-21 00:00:00+08	333	344
269	11180076-宋福贵-BICC1.pdf	2020-08-21 00:00:00+08	331	342
270	11180075-沈圣云-KMT2D.pdf	2020-08-21 00:00:00+08	330	341
271	11180074-张艳玲-F8.pdf	2020-08-21 00:00:00+08	329	340
272	11180073-王怡菲-CHEK2.pdf	2020-08-21 00:00:00+08	328	339
273	11180072-艾莎莎-F8.pdf	2020-08-21 00:00:00+08	327	338
274	11180071-郜文玲-FOXF1.pdf	2020-08-21 00:00:00+08	326	337
275	11180070-张晓娜-IL2RG.pdf	2020-08-21 00:00:00+08	325	336
276	11180069-高嫄-MECP2.pdf	2020-08-21 00:00:00+08	324	335
277	11180067-周丽玲-F9.pdf	2020-08-21 00:00:00+08	323	334
278	11180066-张旭-ANK1.pdf	2020-08-21 00:00:00+08	322	333
279	11180065-周丽丽-F8.pdf	2020-08-21 00:00:00+08	321	332
280	11180064-张军令-KDM5C.pdf	2020-08-21 00:00:00+08	320	331
281	11180063-张律-CALR.pdf	2020-08-21 00:00:00+08	319	330
282	11180061-梁珍敏-FBN1.pdf	2020-08-21 00:00:00+08	778	328
283	11180059-张小伟-CLCN7.pdf	2020-08-21 00:00:00+08	777	326
284	11180058-侯元丽-NF1.pdf	2020-08-21 00:00:00+08	313	325
285	11180057-张海宏-NF1.pdf	2020-08-21 00:00:00+08	313	324
286	11180056-张婧屹-EPHB4.pdf	2020-08-21 00:00:00+08	311	323
287	11180056-张婧屹-EPHB4.pdf	2020-08-21 00:00:00+08	312	323
288	11180053-余臻-WDR73.pdf	2020-08-21 00:00:00+08	309	320
289	11180052-田超-WDR19.pdf	2020-08-21 00:00:00+08	308	319
290	11180051-范静-SLC5A7.pdf	2020-08-21 00:00:00+08	307	318
291	11180050-王丽-GJB2.pdf	2020-08-21 00:00:00+08	306	317
292	11180048-刘冰冰-PKD1.pdf	2020-08-21 00:00:00+08	304	315
293	11180046-路晓叶-F8.pdf	2020-08-21 00:00:00+08	302	313
294	11180045-胡玲-F8.pdf	2020-08-21 00:00:00+08	143	312
295	11180044-马素珍-IL2RG.pdf	2020-08-21 00:00:00+08	301	311
296	11180043-陈睿-RB1.pdf	2020-08-21 00:00:00+08	300	310
297	11180042-王洁-FGFR3.pdf	2020-08-21 00:00:00+08	356	309
298	11180041-袁媛-F8.pdf	2020-08-21 00:00:00+08	299	308
299	11180040-崔云芳-F9.pdf	2020-08-21 00:00:00+08	298	307
300	11180039-琚榕榕-SLC26A4.pdf	2020-08-21 00:00:00+08	297	306
301	11180038-陈素娅-F8.pdf	2020-08-21 00:00:00+08	296	305
302	11180037-吾露萍-GJB2.pdf	2020-08-21 00:00:00+08	295	304
303	11180036-沈丹-STS.pdf	2020-08-21 00:00:00+08	293	303
304	11180036-沈丹-STS.pdf	2020-08-21 00:00:00+08	294	303
305	11180035-彭丹丹-F8.pdf	2020-08-21 00:00:00+08	292	302
306	11180034-欧阳宇-SUFU.pdf	2020-08-21 00:00:00+08	291	301
307	11180033-王焘-COL7A1.pdf	2020-08-21 00:00:00+08	290	300
308	11180032-邓慧-PKD1.pdf	2020-08-21 00:00:00+08	289	299
309	11180031-冯桃桃-AMPD2.pdf	2020-08-21 00:00:00+08	288	298
310	11180030-王婕-COL1A1.pdf	2020-08-21 00:00:00+08	287	297
311	11180029-刘梅-GALNS.pdf	2020-08-21 00:00:00+08	286	296
312	11180028-董丽华-TTR.pdf	2020-08-21 00:00:00+08	285	295
313	11180024-许连凤-COL6A1.pdf	2020-08-21 00:00:00+08	281	291
314	11180023-张曼曼-COL1A1.pdf	2020-08-21 00:00:00+08	280	290
315	11180022-姚梦雪-F8.pdf	2020-08-21 00:00:00+08	279	289
316	11180021-叶俊琪-COL4A5.pdf	2020-08-21 00:00:00+08	278	288
317	11180020-张宏霞-EDA.pdf	2020-08-21 00:00:00+08	277	287
318	11180018-施妹妹-F8.pdf	2020-08-21 00:00:00+08	275	285
319	11180017-汪苏云-F8.pdf	2020-08-21 00:00:00+08	274	284
320	11180016-朱从霄-FLG.pdf	2020-08-21 00:00:00+08	273	283
321	11180015-高发修-MUT.pdf	2020-08-21 00:00:00+08	272	282
322	11180012-王圣芳-BCKDHB.pdf	2020-08-21 00:00:00+08	269	279
323	11180011-汪廷惠-NF2.pdf	2020-08-21 00:00:00+08	268	278
324	11180010-黄巧芳-ANK1.pdf	2020-08-21 00:00:00+08	267	277
325	11180009-李丰芝-F8.pdf	2020-08-21 00:00:00+08	266	276
326	11180008-王晓春-PKHD1.pdf	2020-08-21 00:00:00+08	265	275
327	11180007-芮华政-MAGEL2.pdf	2020-08-21 00:00:00+08	264	274
328	11180006-王元琼-ABCD1.pdf	2020-08-21 00:00:00+08	263	273
329	11180005-吴国珍-NPHS1.pdf	2020-08-21 00:00:00+08	262	272
330	11180004-冯海娟-COL6A2.pdf	2020-08-21 00:00:00+08	213	271
331	11180003-廖玲娟-F8.pdf	2020-08-21 00:00:00+08	261	270
332	11180002-张璐-TRPS1.pdf	2020-08-21 00:00:00+08	260	269
333	11180001-吴岐珍-GAA.pdf	2020-08-21 00:00:00+08	259	268
334	11170108-周赟-CEP290.pdf	2020-08-21 00:00:00+08	257	267
335	11170108-周赟-CEP290.pdf	2020-08-21 00:00:00+08	258	267
336	11170107-戚卉雯-FBN1.pdf	2020-08-21 00:00:00+08	256	266
337	11170106-周佳美-AGXT.pdf	2020-08-21 00:00:00+08	255	265
338	11170104-康俊鸿-CYP21A2.pdf	2020-08-21 00:00:00+08	253	263
339	11170103-宋佳青-RPGR.pdf	2020-08-21 00:00:00+08	252	262
340	11170102-张庆泉-COL4A5.pdf	2020-08-21 00:00:00+08	251	261
341	11170101-刘江丽-RB1.pdf	2020-08-21 00:00:00+08	250	260
342	11170099-范娟娟-OCA2.pdf	2020-08-21 00:00:00+08	248	258
343	11170098-杜茜-F8.pdf	2020-08-21 00:00:00+08	247	257
344	11170097- 陈琳-OCA2.pdf	2020-08-21 00:00:00+08	246	256
345	11170096-包雪芳-CAPN3.pdf	2020-08-21 00:00:00+08	245	255
346	11170095-张朵朵-SLC25A13.pdf	2020-08-21 00:00:00+08	244	254
347	11170094-刘煜-COL1A1.pdf	2020-08-21 00:00:00+08	243	253
348	11170093-王森-PAH.pdf	2020-08-21 00:00:00+08	242	252
349	11170091-马月-ALPL.pdf	2020-08-21 00:00:00+08	240	250
350	11170090-戴铭辰-PIGA.pdf	2020-08-21 00:00:00+08	239	249
351	11170089-赵雪霞-PANK2.pdf	2020-08-21 00:00:00+08	238	248
352	11170088-叶巧萍-F8.pdf	2020-08-21 00:00:00+08	237	247
353	11170085-张静静-CYP21A2.pdf	2020-08-21 00:00:00+08	234	244
354	11170084-曹杰-STS.pdf	2020-08-21 00:00:00+08	233	243
355	11170083-王琳琳-ABCC8.pdf	2020-08-21 00:00:00+08	232	242
356	11170082-卢凤英-SRD5A2.pdf	2020-08-21 00:00:00+08	231	241
357	11170081-陈会君-PMP22.pdf	2020-08-21 00:00:00+08	230	240
358	11170080-包乐燕-SLC26A4.pdf	2020-08-21 00:00:00+08	229	239
359	11170079-周海花-TSPAN12.pdf	2020-08-21 00:00:00+08	228	238
360	11170078-俞霞-MKS1.pdf	2020-08-21 00:00:00+08	227	237
361	11170076-徐晓燕-TSPAN12.pdf	2020-08-21 00:00:00+08	226	235
362	11170075-许宗宇-OCA2.pdf	2020-08-21 00:00:00+08	225	234
363	11170074-唐金枝-ATRX.pdf	2020-08-21 00:00:00+08	224	233
364	11170073-朱瑞-LAMB2.pdf	2020-08-21 00:00:00+08	223	232
365	11170071-曹令娴-FGFR3.pdf	2020-08-21 00:00:00+08	357	230
366	11170070-沈蓓蕾-PLP1.pdf	2020-08-21 00:00:00+08	220	229
367	11170069-何文-PKD1.pdf	2020-08-21 00:00:00+08	219	228
368	11170067-王新悦-TSC2.pdf	2020-08-21 00:00:00+08	218	226
369	11170066-王秀真-RAG1.pdf	2020-08-21 00:00:00+08	217	225
370	11170065-陈俊楠-EXT1.pdf	2020-08-21 00:00:00+08	216	224
371	11170064-朱丹丹-BTK.pdf	2020-08-21 00:00:00+08	215	223
372	11170063-邹蕾蕾-PKD1.pdf	2020-08-21 00:00:00+08	214	222
373	11170062-曾艳-COL6A2.pdf	2020-08-21 00:00:00+08	213	221
374	11170061-吴晓兰-EDA.pdf	2020-08-21 00:00:00+08	212	220
375	11170060-周旖旎-DMD.pdf	2020-08-21 00:00:00+08	211	219
376	11170059-吕剑云-NF1.pdf	2020-08-21 00:00:00+08	210	218
377	11170058-余德丽-ATRX.pdf	2020-08-21 00:00:00+08	209	217
378	11170057-黄琬淇-NF1.pdf	2020-08-21 00:00:00+08	208	216
379	11170056-唐鑫鑫-ACADVL.pdf	2020-08-21 00:00:00+08	207	215
380	11170055-董萌萌-MUT.pdf	2020-08-21 00:00:00+08	206	214
381	11170054-伊永胜-LDLR.pdf	2020-08-21 00:00:00+08	205	213
382	11170053-范雪芹-RET.pdf	2020-08-21 00:00:00+08	204	212
383	11170052-周频之小子-MBTPS2.pdf	2020-08-21 00:00:00+08	203	211
384	11170051-张梦婷-PKD1.pdf	2020-08-21 00:00:00+08	202	210
385	11170050-何颖颖-CYP21A2.pdf	2020-08-21 00:00:00+08	201	209
386	11170049-陈燕-TYR.pdf	2020-08-21 00:00:00+08	200	208
387	11170047-周秀连-COL4A5.pdf	2020-08-21 00:00:00+08	198	206
388	11170046-俞飞-NPHS1.pdf	2020-08-21 00:00:00+08	197	205
389	11170045-徐清华-ARSA.pdf	2020-08-21 00:00:00+08	196	204
390	11170044-李伟波-IL10RA.pdf	2020-08-21 00:00:00+08	195	203
391	11170043-程红-NF1.pdf	2020-08-21 00:00:00+08	194	202
392	11170042-冯辉-FGFR3.pdf	2020-08-21 00:00:00+08	356	201
393	11170041-吴仙兵-UBE3A.pdf	2020-08-21 00:00:00+08	193	200
394	11170040-戎英静-ABCD1.pdf	2020-08-21 00:00:00+08	192	199
395	11170039-梁宇青-DYNC2H1.pdf	2020-08-21 00:00:00+08	191	198
396	11170038-黄彩凤-COL1A1.pdf	2020-08-21 00:00:00+08	190	197
397	11170037-吴三妹-OCA2.pdf	2020-08-21 00:00:00+08	189	196
398	11170036-覃碧芳-HBA.pdf	2020-08-21 00:00:00+08	119	195
399	11170035-宋冬妹-IL2RG.pdf	2020-08-21 00:00:00+08	188	194
400	11170034-王珊珊-NEB.pdf	2020-08-21 00:00:00+08	187	193
401	11170033-张爱华-IL7R.pdf	2020-08-21 00:00:00+08	186	192
402	11170032-陆士成-PKD1.pdf	2020-08-21 00:00:00+08	185	191
403	11170030-叶柳菁-RPGR.pdf	2020-08-21 00:00:00+08	183	189
404	11170029-裴萍萍-STS.pdf	2020-08-21 00:00:00+08	182	188
405	11170028-王俊霞-SCN1A.pdf	2020-08-21 00:00:00+08	181	187
406	11170027-戴花-STS.pdf	2020-08-21 00:00:00+08	180	186
407	11170026-樊华-COL2A1.pdf	2020-08-21 00:00:00+08	179	185
408	11170025-胡李文-ATP7B.pdf	2020-08-21 00:00:00+08	178	184
409	11170024-谈云-DMD.pdf	2020-08-21 00:00:00+08	177	183
410	11170023-吕玲玲-TYR.pdf	2020-08-21 00:00:00+08	176	182
411	11170022-陈采红-CNGA1.pdf	2020-08-21 00:00:00+08	175	181
412	11170021-陈瑶-NF1.pdf	2020-08-21 00:00:00+08	174	180
413	11170020-陈佳妮-ABCA4.pdf	2020-08-21 00:00:00+08	173	179
414	11170019-周子怡-G6PC.pdf	2020-08-21 00:00:00+08	172	178
415	11170018-徐原-OTC.pdf	2020-08-21 00:00:00+08	171	177
416	11170017-廖永光-MIP.pdf	2020-08-21 00:00:00+08	170	176
417	11170016-陈欣玫-PKHD1.pdf	2020-08-21 00:00:00+08	169	175
418	11170015-俞璐萍-CYP17A1.pdf	2020-08-21 00:00:00+08	168	174
419	11170014-孙瑞晨-LIG4.pdf	2020-08-21 00:00:00+08	167	173
420	11170013-申俊杰-COL4A5.pdf	2020-08-21 00:00:00+08	166	172
421	11170012-王园卿-TYR.pdf	2020-08-21 00:00:00+08	165	171
422	11170011-李娜-NHS.pdf	2020-08-21 00:00:00+08	164	170
423	11170010-潘皓轩-SCN1A.pdf	2020-08-21 00:00:00+08	163	169
424	11170009-仇毓-UNC80.pdf	2020-08-21 00:00:00+08	162	168
425	11170007-胡振晔-CRYGC.pdf	2020-08-21 00:00:00+08	775	166
426	11170006-倪建军-TYR.pdf	2020-08-21 00:00:00+08	159	165
427	11170005-翁玉群-GUCY2D.pdf	2020-08-21 00:00:00+08	158	164
428	11170003-赵海-IRF6.pdf	2020-08-21 00:00:00+08	156	162
429	11170002-沈李倩-FMR1.pdf	2020-08-21 00:00:00+08	155	161
430	11170001-余勐-F8.pdf	2020-08-21 00:00:00+08	154	160
431	11160085-周莉萍-ACADVL.pdf	2020-08-21 00:00:00+08	153	159
432	11160084-张健-DYSF.pdf	2020-08-21 00:00:00+08	152	158
433	11160083-张雅琳-EXT2.pdf	2020-08-21 00:00:00+08	151	157
434	11160082-俞仙亚-COL7A1.pdf	2020-08-21 00:00:00+08	150	156
435	11160081-袁喆静-NF1.pdf	2020-08-21 00:00:00+08	149	155
436	11160080-张灿微-OPA1.pdf	2020-08-21 00:00:00+08	148	154
437	11160079-韩中雪-ASL.pdf	2020-08-21 00:00:00+08	147	153
438	11160078-张汉林-BSCL2.pdf	2020-08-21 00:00:00+08	146	152
439	11160077-黄贵花-ATRX.pdf	2020-08-21 00:00:00+08	145	151
440	11160076-杨爱华-SRD5A2.pdf	2020-08-21 00:00:00+08	144	150
441	11160075-郑航芝-STS.pdf	2020-08-21 00:00:00+08	24	149
442	11160074-曾春云-F8.pdf	2020-08-21 00:00:00+08	143	148
443	11160073-王梓旭-UBE3A.pdf	2020-08-21 00:00:00+08	142	147
444	11160072-陈艳-MT-TL1.pdf	2020-08-21 00:00:00+08	141	146
445	11160071-耿英慈-TYR.pdf	2020-08-21 00:00:00+08	140	145
446	11160070-汪红英-DMD.pdf	2020-08-21 00:00:00+08	139	144
447	11160069-曲明阳-GJB2.pdf	2020-08-21 00:00:00+08	138	143
448	11160068-黄春艳-PKD1.pdf	2020-08-21 00:00:00+08	137	142
449	11160066-王玲群-RAG2.pdf	2020-08-21 00:00:00+08	135	140
450	11160064-王萍-FANCA.pdf	2020-08-21 00:00:00+08	133	138
451	11160062-戴懿-TSC1.pdf	2020-08-21 00:00:00+08	131	136
452	11160061-诸寅-NF1.pdf	2020-08-21 00:00:00+08	130	135
453	11160060-唐箫-TCIRG1.pdf	2020-08-21 00:00:00+08	129	134
454	11160059-钱洁-EXT1.pdf	2020-08-21 00:00:00+08	128	133
455	11160058-周婧雯-BRAF.pdf	2020-08-21 00:00:00+08	127	132
456	11160057-裴硕-BRCA1.pdf	2020-08-21 00:00:00+08	126	131
457	11160056-张叶-TP53.pdf	2020-08-21 00:00:00+08	125	130
458	11160054-朱文俊-IL7R.pdf	2020-08-21 00:00:00+08	123	128
459	11160053-向晓艳-FGFR3.pdf	2020-08-21 00:00:00+08	356	127
460	11160052-施春女-ADGRG1.pdf	2020-08-21 00:00:00+08	122	126
461	11160051-魏晓琴-OTC.pdf	2020-08-21 00:00:00+08	121	125
462	11160050-程兵兵-WAS.pdf	2020-08-21 00:00:00+08	120	124
463	11160049-程雪花-HBA-HBB.pdf	2020-08-21 00:00:00+08	119	123
464	11160048-高文-FLNB.pdf	2020-08-21 00:00:00+08	118	122
465	11160047-吴桂萍-CLCN5.pdf	2020-08-21 00:00:00+08	117	121
466	11160046-刘则馥-PKLR.pdf	2020-08-21 00:00:00+08	116	120
467	11160045-余音-FOXP3.pdf	2020-08-21 00:00:00+08	115	119
468	11160044-姜晰-EVC2.pdf	2020-08-21 00:00:00+08	114	118
469	11160043-包秋珍-FMR1.pdf	2020-08-21 00:00:00+08	113	117
470	11160042-陶源-CDH1.pdf	2020-08-21 00:00:00+08	112	116
471	11160041-郭淑杰-F9.pdf	2020-08-21 00:00:00+08	111	115
472	11160040-宗乐-MAGEL2.pdf	2020-08-21 00:00:00+08	110	114
473	11160039-杨春霞-COL1A1.pdf	2020-08-21 00:00:00+08	2	113
474	11160038-马月玲-FBN1.pdf	2020-08-21 00:00:00+08	109	112
475	11160037-袁慧娟-SHOX.pdf	2020-08-21 00:00:00+08	108	111
476	11160036-陈思斯-NF1.pdf	2020-08-21 00:00:00+08	107	110
477	11160034-李培凯-COL4A5.pdf	2020-08-21 00:00:00+08	105	108
478	11160033-李丽娜-PLA2G6.pdf	2020-08-21 00:00:00+08	104	107
479	11160032-朱晓艳-GNPTAB.pdf	2020-08-21 00:00:00+08	103	106
480	11160031-杨思怡-G6PD.pdf	2020-08-21 00:00:00+08	102	105
481	11160029-王妤扬-FGFR3.pdf	2020-08-21 00:00:00+08	60	103
482	11160028-刘峰-DMD.pdf	2020-08-21 00:00:00+08	100	102
483	11160027-郑达权-GUCY2D.pdf	2020-08-21 00:00:00+08	99	101
484	11160026-王艺睿-LMNA.pdf	2020-08-21 00:00:00+08	98	100
485	11160025-叶晨焕-MSH2.pdf	2020-08-21 00:00:00+08	97	99
486	11160024-陈洋多-TYR.pdf	2020-08-21 00:00:00+08	96	98
487	11160023-胡晓敏-KDM6A.pdf	2020-08-21 00:00:00+08	95	97
488	11160022-李遵容-TSC2.pdf	2020-08-21 00:00:00+08	94	96
489	11160021-周笑飞-NF1.pdf	2020-08-21 00:00:00+08	93	95
490	11160020-许湘洪-RMND1.pdf	2020-08-21 00:00:00+08	92	94
491	11160019-裘李英-SERPINB7.pdf	2020-08-21 00:00:00+08	91	93
492	11160018-李建娟-ITGB4.pdf	2020-08-21 00:00:00+08	90	92
493	11160017-汪桂芳-DIAPH2.pdf	2020-08-21 00:00:00+08	89	91
494	11160016-李招弟-CD40LG.pdf	2020-08-21 00:00:00+08	88	90
495	11160015-万海云-IDUA.pdf	2020-08-21 00:00:00+08	87	89
496	11160014-李美红-HBA1.pdf	2020-08-21 00:00:00+08	86	88
497	11160013-侯丽侠-GJB2.pdf	2020-08-21 00:00:00+08	85	87
498	11160012-王慧强-RAG2.pdf	2020-08-21 00:00:00+08	84	86
499	11160011-梁峰-PKD1.pdf	2020-08-21 00:00:00+08	20	85
500	11160010-顾晓琦-ELN.pdf	2020-08-21 00:00:00+08	83	84
501	11160009-胡曼-NF1.pdf	2020-08-21 00:00:00+08	82	83
502	11160006-简嘉-FLG.pdf	2020-08-21 00:00:00+08	80	81
503	11160005-李公祥-FLG.pdf	2020-08-21 00:00:00+08	79	80
504	11160004-楚艳丽-SGSH.pdf	2020-08-21 00:00:00+08	78	79
505	11160003-李春霞-BTK.pdf	2020-08-21 00:00:00+08	77	78
506	11160002-裴玲-TYR.pdf	2020-08-21 00:00:00+08	76	77
507	11160001-沈维佳-TSC2.pdf	2020-08-21 00:00:00+08	75	76
508	11150069-黄芳-NPHP3.pdf	2020-08-21 00:00:00+08	74	75
509	11150068-周蓉-FBN1.pdf	2020-08-21 00:00:00+08	73	74
510	11150067-夏岚-ADA.pdf	2020-08-21 00:00:00+08	72	73
511	11150066-陈兴峰-DMD.pdf	2020-08-21 00:00:00+08	71	72
512	11150064-施霞敏-SLC17A8.pdf	2020-08-21 00:00:00+08	69	70
513	11150063-叶红-IL2RG.pdf	2020-08-21 00:00:00+08	68	69
514	11150062-叶优艳-BRCA2.pdf	2020-08-21 00:00:00+08	67	68
515	11150061-金韶华-DMD.pdf	2020-08-21 00:00:00+08	66	67
516	11150060-朱殿云-SMN1.pdf	2020-08-21 00:00:00+08	65	66
517	11150059-钱枫-GJB2.pdf	2020-08-21 00:00:00+08	64	65
518	11150058-孙银华-PKD1.pdf	2020-08-21 00:00:00+08	63	64
519	11150057-金花-DMD.pdf	2020-08-21 00:00:00+08	62	63
520	11150056-冯惠英-CLO4A4.pdf	2020-08-21 00:00:00+08	61	62
521	11150055-刘平-FGFR3.pdf	2020-08-21 00:00:00+08	60	61
522	11150054-徐建余-PAX6.pdf	2020-08-21 00:00:00+08	59	60
523	11150053-尹鹏-PKD1.pdf	2020-08-21 00:00:00+08	58	59
524	11150051-李慢-SH2D1A.pdf	2020-08-21 00:00:00+08	56	57
525	11150050-沈晓杰-G6PC.pdf	2020-08-21 00:00:00+08	55	56
526	11150049-姚盈-LDLR.pdf	2020-08-21 00:00:00+08	54	55
527	11150048-汪琴-DYSF.pdf	2020-08-21 00:00:00+08	53	54
528	11150047-齐巧艳-GFAP.pdf	2020-08-21 00:00:00+08	52	53
529	11150046-虞磊-BTK.pdf	2020-08-21 00:00:00+08	51	52
530	11150045-朱念念-FGFR3.pdf	2020-08-21 00:00:00+08	50	51
531	11150044-平霞霞-RAG1.pdf	2020-08-21 00:00:00+08	49	50
532	11150043-庞霞-PKHD1.pdf	2020-08-21 00:00:00+08	48	49
533	11150042-沈萍-JAG1.pdf	2020-08-21 00:00:00+08	47	48
534	11150041-徐枫琳-CEP290.pdf	2020-08-21 00:00:00+08	46	47
535	11150040-齐芳灵-COL4A5.pdf	2020-08-21 00:00:00+08	45	46
536	11150039-刘琴-GCDH.pdf	2020-08-21 00:00:00+08	44	45
537	11150038-何建兵-FBN1.pdf	2020-08-21 00:00:00+08	43	44
538	11150037-黄伟华-COL4A5.pdf	2020-08-21 00:00:00+08	42	43
539	11150036-吴丹-HBA1.pdf	2020-08-21 00:00:00+08	41	42
540	11150035-陆锋-PMP22.pdf	2020-08-21 00:00:00+08	40	41
541	11150034-虞菲敏-DMD.pdf	2020-08-21 00:00:00+08	39	40
542	11150033-韩寅卿-TGFBR1.pdf	2020-08-21 00:00:00+08	38	39
543	11150032-陈逸雯-SMC1A.pdf	2020-08-21 00:00:00+08	37	38
544	11150030-涂燕华-ABCD1.pdf	2020-08-21 00:00:00+08	36	37
545	11150029-陈莉-SMN1.pdf	2020-08-21 00:00:00+08	35	36
546	11150028-何晓晔-TSC1.pdf	2020-08-21 00:00:00+08	34	35
547	11150027-李丽萍-FGFR3.pdf	2020-08-21 00:00:00+08	356	34
548	11150026-顾晓庆-TYR.pdf	2020-08-21 00:00:00+08	33	33
549	11150024-林绍擎-PKD1.pdf	2020-08-21 00:00:00+08	31	31
550	11150023-林碧芬-ATP7B.pdf	2020-08-21 00:00:00+08	30	30
551	11150022-李琳-PKHD1.pdf	2020-08-21 00:00:00+08	29	29
552	11150021-王益儿-PBCKDHA.pdf	2020-08-21 00:00:00+08	28	28
553	11150020-张婷-SMN1.pdf	2020-08-21 00:00:00+08	11	27
554	11150019-刘静-IL2RG.pdf	2020-08-21 00:00:00+08	26	26
555	11150018-蒋海芹-NTRK1.pdf	2020-08-21 00:00:00+08	25	25
556	11150017-沈浩-STS.pdf	2020-08-21 00:00:00+08	24	24
557	11150016-杨洁-WAS.pdf	2020-08-21 00:00:00+08	23	23
558	11150015-张余-COMP.pdf	2020-08-21 00:00:00+08	22	22
559	11150014-王志浩-GJB2.pdf	2020-08-21 00:00:00+08	21	21
560	11150013-王珏-PKD1.pdf	2020-08-21 00:00:00+08	20	20
561	11150012-姜春霞-GRIN2B.pdf	2020-08-21 00:00:00+08	19	19
562	11150011-谢芳君-ATP7B.pdf	2020-08-21 00:00:00+08	18	18
563	11150010-叶璟-PKD1.pdf	2020-08-21 00:00:00+08	17	17
564	11150008-郑向红-IL2RG.pdf	2020-08-21 00:00:00+08	15	15
565	11150006-赵燕婷-EXT1.pdf	2020-08-21 00:00:00+08	13	13
566	11150005-夏红燕-DMD.pdf	2020-08-21 00:00:00+08	12	12
567	11150004-徐绿叶-SMN1.pdf	2020-08-21 00:00:00+08	11	11
568	11150002-孙洁-ADA.pdf	2020-08-21 00:00:00+08	9	9
569	11150001-侯晓匀-PKHD1.pdf	2020-08-21 00:00:00+08	8	8
570	11140007-张梓健-IDS.pdf	2020-08-21 00:00:00+08	7	7
571	11140006-吴永胜-WAS.pdf	2020-08-21 00:00:00+08	6	6
572	11140005-叶劲松-PKD1.pdf	2020-08-21 00:00:00+08	5	5
573	11140004-华峻-FLG.pdf	2020-08-21 00:00:00+08	4	4
574	11140003-张文栋-DMD.pdf	2020-08-21 00:00:00+08	3	3
575	11140002-叶连敏-COL1A1.pdf	2020-08-21 00:00:00+08	2	2
576	11140001-姜璐琰-NTRK1.pdf	2020-08-21 00:00:00+08	1	1
\.


--
-- Data for Name: report_sample; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.report_sample (id, family, name, updated_at) FROM stdin;
1	11140001	姜璐琰	2020-08-21 00:00:00+08
2	11140002	叶连敏	2020-08-21 00:00:00+08
3	11140003	张文栋	2020-08-21 00:00:00+08
4	11140004	华峻	2020-08-21 00:00:00+08
5	11140005	叶劲松	2020-08-21 00:00:00+08
6	11140006	吴永胜	2020-08-21 00:00:00+08
7	11140007	张梓健	2020-08-21 00:00:00+08
8	11150001	侯晓匀	2020-08-21 00:00:00+08
9	11150002	孙洁	2020-08-21 00:00:00+08
10	11150003	周蓝	2020-08-21 00:00:00+08
11	11150004	徐绿叶	2020-08-21 00:00:00+08
12	11150005	夏红燕	2020-08-21 00:00:00+08
13	11150006	赵燕婷	2020-08-21 00:00:00+08
14	11150007	周扬	2020-08-21 00:00:00+08
15	11150008	郑向红	2020-08-21 00:00:00+08
16	11150009	何莉	2020-08-21 00:00:00+08
17	11150010	叶璟	2020-08-21 00:00:00+08
18	11150011	谢芳君	2020-08-21 00:00:00+08
19	11150012	姜春霞	2020-08-21 00:00:00+08
20	11150013	王珏	2020-08-21 00:00:00+08
21	11150014	王志浩	2020-08-21 00:00:00+08
22	11150015	张余	2020-08-21 00:00:00+08
23	11150016	杨洁	2020-08-21 00:00:00+08
24	11150017	沈浩	2020-08-21 00:00:00+08
25	11150018	蒋海芹	2020-08-21 00:00:00+08
26	11150019	刘静	2020-08-21 00:00:00+08
27	11150020	张婷	2020-08-21 00:00:00+08
28	11150021	王益儿	2020-08-21 00:00:00+08
29	11150022	李琳	2020-08-21 00:00:00+08
30	11150023	林碧芬	2020-08-21 00:00:00+08
31	11150024	林绍擎	2020-08-21 00:00:00+08
32	11150025	朱孟娟	2020-08-21 00:00:00+08
33	11150026	顾晓庆	2020-08-21 00:00:00+08
34	11150027	李丽萍	2020-08-21 00:00:00+08
35	11150028	何晓晔	2020-08-21 00:00:00+08
36	11150029	陈莉	2020-08-21 00:00:00+08
37	11150030	涂燕华	2020-08-21 00:00:00+08
38	11150032	陈逸雯	2020-08-21 00:00:00+08
39	11150033	韩寅卿	2020-08-21 00:00:00+08
40	11150034	虞菲敏	2020-08-21 00:00:00+08
41	11150035	陆锋	2020-08-21 00:00:00+08
42	11150036	吴丹	2020-08-21 00:00:00+08
43	11150037	黄伟华	2020-08-21 00:00:00+08
44	11150038	何建兵	2020-08-21 00:00:00+08
45	11150039	刘琴	2020-08-21 00:00:00+08
46	11150040	齐芳灵	2020-08-21 00:00:00+08
47	11150041	徐枫琳	2020-08-21 00:00:00+08
48	11150042	沈萍	2020-08-21 00:00:00+08
49	11150043	庞霞	2020-08-21 00:00:00+08
50	11150044	平霞霞	2020-08-21 00:00:00+08
51	11150045	朱念念	2020-08-21 00:00:00+08
52	11150046	虞磊	2020-08-21 00:00:00+08
53	11150047	齐巧艳	2020-08-21 00:00:00+08
54	11150048	汪琴	2020-08-21 00:00:00+08
55	11150049	姚盈	2020-08-21 00:00:00+08
56	11150050	沈晓杰	2020-08-21 00:00:00+08
57	11150051	李慢	2020-08-21 00:00:00+08
58	11150052	丁苔	2020-08-21 00:00:00+08
59	11150053	尹鹏	2020-08-21 00:00:00+08
60	11150054	徐建余	2020-08-21 00:00:00+08
61	11150055	刘平	2020-08-21 00:00:00+08
62	11150056	冯惠英	2020-08-21 00:00:00+08
63	11150057	金花	2020-08-21 00:00:00+08
64	11150058	孙银华	2020-08-21 00:00:00+08
65	11150059	钱枫	2020-08-21 00:00:00+08
66	11150060	朱殿云	2020-08-21 00:00:00+08
67	11150061	金韶华	2020-08-21 00:00:00+08
68	11150062	叶优艳	2020-08-21 00:00:00+08
69	11150063	叶红	2020-08-21 00:00:00+08
70	11150064	施霞敏	2020-08-21 00:00:00+08
71	11150065	陈霞	2020-08-21 00:00:00+08
72	11150066	陈兴峰	2020-08-21 00:00:00+08
73	11150067	夏岚	2020-08-21 00:00:00+08
74	11150068	周蓉	2020-08-21 00:00:00+08
75	11150069	黄芳	2020-08-21 00:00:00+08
76	11160001	沈维佳	2020-08-21 00:00:00+08
77	11160002	裴玲	2020-08-21 00:00:00+08
78	11160003	李春霞	2020-08-21 00:00:00+08
79	11160004	楚艳丽	2020-08-21 00:00:00+08
80	11160005	李公祥	2020-08-21 00:00:00+08
81	11160006	简嘉	2020-08-21 00:00:00+08
82	11160007	金燕苹	2020-08-21 00:00:00+08
83	11160009	胡曼	2020-08-21 00:00:00+08
84	11160010	顾晓琦	2020-08-21 00:00:00+08
85	11160011	梁峰	2020-08-21 00:00:00+08
86	11160012	王慧强	2020-08-21 00:00:00+08
87	11160013	侯丽侠	2020-08-21 00:00:00+08
88	11160014	李美红	2020-08-21 00:00:00+08
89	11160015	万海云	2020-08-21 00:00:00+08
90	11160016	李招弟	2020-08-21 00:00:00+08
91	11160017	汪桂芳	2020-08-21 00:00:00+08
92	11160018	李建娟	2020-08-21 00:00:00+08
93	11160019	裘李英	2020-08-21 00:00:00+08
94	11160020	许湘洪	2020-08-21 00:00:00+08
95	11160021	周笑飞	2020-08-21 00:00:00+08
96	11160022	李遵容	2020-08-21 00:00:00+08
97	11160023	胡晓敏	2020-08-21 00:00:00+08
98	11160024	陈洋多	2020-08-21 00:00:00+08
99	11160025	叶晨焕	2020-08-21 00:00:00+08
100	11160026	王艺睿	2020-08-21 00:00:00+08
101	11160027	郑达权	2020-08-21 00:00:00+08
102	11160028	刘峰	2020-08-21 00:00:00+08
103	11160029	王妤扬	2020-08-21 00:00:00+08
104	11160030	窦圣金	2020-08-21 00:00:00+08
105	11160031	杨思怡	2020-08-21 00:00:00+08
106	11160032	朱晓艳	2020-08-21 00:00:00+08
107	11160033	李丽娜	2020-08-21 00:00:00+08
108	11160034	李培凯	2020-08-21 00:00:00+08
109	11160035	陆晓虹婴儿	2020-08-21 00:00:00+08
110	11160036	陈思斯	2020-08-21 00:00:00+08
111	11160037	袁惠娟	2020-08-21 00:00:00+08
112	11160038	马月玲	2020-08-21 00:00:00+08
113	11160039	杨春霞	2020-08-21 00:00:00+08
114	11160040	宗乐	2020-08-21 00:00:00+08
115	11160041	郭淑杰	2020-08-21 00:00:00+08
116	11160042	陶源	2020-08-21 00:00:00+08
117	11160043	包秋珍	2020-08-21 00:00:00+08
118	11160044	姜晰	2020-08-21 00:00:00+08
119	11160045	余音	2020-08-21 00:00:00+08
120	11160046	刘则馥	2020-08-21 00:00:00+08
121	11160047	吴桂萍	2020-08-21 00:00:00+08
122	11160048	高文	2020-08-21 00:00:00+08
123	11160049	程雪花	2020-08-21 00:00:00+08
124	11160050	程兵兵	2020-08-21 00:00:00+08
125	11160051	魏晓琴	2020-08-21 00:00:00+08
126	11160052	施春女	2020-08-21 00:00:00+08
127	11160053	向晓艳	2020-08-21 00:00:00+08
128	11160054	朱文俊	2020-08-21 00:00:00+08
129	11160055	傅政玺	2020-08-21 00:00:00+08
130	11160056	张叶	2020-08-21 00:00:00+08
131	11160057	裴硕	2020-08-21 00:00:00+08
132	11160058	周婧雯	2020-08-21 00:00:00+08
133	11160059	钱洁	2020-08-21 00:00:00+08
134	11160060	唐箫	2020-08-21 00:00:00+08
135	11160061	诸寅	2020-08-21 00:00:00+08
136	11160062	戴懿	2020-08-21 00:00:00+08
137	11160063	刘艳华	2020-08-21 00:00:00+08
138	11160064	王萍	2020-08-21 00:00:00+08
139	11160065	陈敏燕	2020-08-21 00:00:00+08
140	11160066	王玲群	2020-08-21 00:00:00+08
141	11160067	裘咏梅	2020-08-21 00:00:00+08
142	11160068	黄春艳	2020-08-21 00:00:00+08
143	11160069	曲明阳	2020-08-21 00:00:00+08
144	11160070	汪红英	2020-08-21 00:00:00+08
145	11160071	耿英慈	2020-08-21 00:00:00+08
146	11160072	陈艳	2020-08-21 00:00:00+08
147	11160073	王梓旭	2020-08-21 00:00:00+08
148	11160074	曾春云	2020-08-21 00:00:00+08
149	11160075	郑航芝	2020-08-21 00:00:00+08
150	11160076	杨爱华	2020-08-21 00:00:00+08
151	11160077	黄贵花	2020-08-21 00:00:00+08
152	11160078	张汉林	2020-08-21 00:00:00+08
153	11160079	韩中雪	2020-08-21 00:00:00+08
154	11160080	张灿微	2020-08-21 00:00:00+08
155	11160081	袁喆静	2020-08-21 00:00:00+08
156	11160082	俞仙亚	2020-08-21 00:00:00+08
157	11160083	张雅琳	2020-08-21 00:00:00+08
158	11160084	张健	2020-08-21 00:00:00+08
159	11160085	周莉萍	2020-08-21 00:00:00+08
160	11170001	余勐	2020-08-21 00:00:00+08
161	11170002	沈李倩	2020-08-21 00:00:00+08
162	11170003	赵海	2020-08-21 00:00:00+08
163	11170004	朱莉	2020-08-21 00:00:00+08
164	11170005	翁玉群	2020-08-21 00:00:00+08
165	11170006	倪建军	2020-08-21 00:00:00+08
166	11170007	胡振晔	2020-08-21 00:00:00+08
167	11170008	于艳	2020-08-21 00:00:00+08
168	11170009	仇毓	2020-08-21 00:00:00+08
169	11170010	潘皓轩	2020-08-21 00:00:00+08
170	11170011	李娜	2020-08-21 00:00:00+08
171	11170012	王园卿	2020-08-21 00:00:00+08
172	11170013	申俊杰	2020-08-21 00:00:00+08
173	11170014	孙瑞晨	2020-08-21 00:00:00+08
174	11170015	俞璐萍	2020-08-21 00:00:00+08
175	11170016	陈欣玫	2020-08-21 00:00:00+08
176	11170017	廖永光	2020-08-21 00:00:00+08
177	11170018	徐原	2020-08-21 00:00:00+08
178	11170019	周子怡	2020-08-21 00:00:00+08
179	11170020	陈佳妮	2020-08-21 00:00:00+08
180	11170021	陈瑶	2020-08-21 00:00:00+08
181	11170022	陈采红	2020-08-21 00:00:00+08
182	11170023	吕玲玲	2020-08-21 00:00:00+08
183	11170024	谈云	2020-08-21 00:00:00+08
184	11170025	胡李文	2020-08-21 00:00:00+08
185	11170026	樊华	2020-08-21 00:00:00+08
186	11170027	戴花	2020-08-21 00:00:00+08
187	11170028	王俊霞	2020-08-21 00:00:00+08
188	11170029	裴萍萍	2020-08-21 00:00:00+08
189	11170030	叶柳菁	2020-08-21 00:00:00+08
190	11170031	苏守蓉	2020-08-21 00:00:00+08
191	11170032	陆士成	2020-08-21 00:00:00+08
192	11170033	张爱华	2020-08-21 00:00:00+08
193	11170034	王珊珊	2020-08-21 00:00:00+08
194	11170035	宋冬妹	2020-08-21 00:00:00+08
195	11170036	覃碧芳	2020-08-21 00:00:00+08
196	11170037	吴三妹	2020-08-21 00:00:00+08
197	11170038	黄彩凤	2020-08-21 00:00:00+08
198	11170039	梁宇青	2020-08-21 00:00:00+08
199	11170040	戎英静	2020-08-21 00:00:00+08
200	11170041	吴仙兵	2020-08-21 00:00:00+08
201	11170042	冯辉	2020-08-21 00:00:00+08
202	11170043	程红	2020-08-21 00:00:00+08
203	11170044	李伟波	2020-08-21 00:00:00+08
204	11170045	徐清华	2020-08-21 00:00:00+08
205	11170046	俞飞	2020-08-21 00:00:00+08
206	11170047	周秀连	2020-08-21 00:00:00+08
207	11170048	邵军	2020-08-21 00:00:00+08
208	11170049	陈燕	2020-08-21 00:00:00+08
209	11170050	何颖颖	2020-08-21 00:00:00+08
210	11170051	张梦婷	2020-08-21 00:00:00+08
211	11170052	周频之小子	2020-08-21 00:00:00+08
212	11170053	范雪芹	2020-08-21 00:00:00+08
213	11170054	伊永胜	2020-08-21 00:00:00+08
214	11170055	董萌萌	2020-08-21 00:00:00+08
215	11170056	唐鑫鑫	2020-08-21 00:00:00+08
216	11170057	黄琬淇	2020-08-21 00:00:00+08
217	11170058	余德丽	2020-08-21 00:00:00+08
218	11170059	吕剑云	2020-08-21 00:00:00+08
219	11170060	周旖旎	2020-08-21 00:00:00+08
220	11170061	吴晓兰	2020-08-21 00:00:00+08
221	11170062	曾艳	2020-08-21 00:00:00+08
222	11170063	邹蕾蕾	2020-08-21 00:00:00+08
223	11170064	朱丹丹	2020-08-21 00:00:00+08
224	11170065	陈俊楠	2020-08-21 00:00:00+08
225	11170066	王秀真	2020-08-21 00:00:00+08
226	11170067	王新悦	2020-08-21 00:00:00+08
227	11170068	曹令娴	2020-08-21 00:00:00+08
228	11170069	何文	2020-08-21 00:00:00+08
229	11170070	沈蓓蕾	2020-08-21 00:00:00+08
230	11170071	曹令娴	2020-08-21 00:00:00+08
231	11170072	丁翠红	2020-08-21 00:00:00+08
232	11170073	朱瑞	2020-08-21 00:00:00+08
233	11170074	唐金枝	2020-08-21 00:00:00+08
234	11170075	许宗宇	2020-08-21 00:00:00+08
235	11170076	徐晓燕	2020-08-21 00:00:00+08
236	11170077	廖丽媛	2020-08-21 00:00:00+08
237	11170078	俞霞	2020-08-21 00:00:00+08
238	11170079	周海花	2020-08-21 00:00:00+08
239	11170080	包乐燕	2020-08-21 00:00:00+08
240	11170081	陈会君	2020-08-21 00:00:00+08
241	11170082	卢凤英	2020-08-21 00:00:00+08
242	11170083	王琳琳	2020-08-21 00:00:00+08
243	11170084	曹杰	2020-08-21 00:00:00+08
244	11170085	张静静	2020-08-21 00:00:00+08
245	11170086	徐丽华	2020-08-21 00:00:00+08
246	11170087	王冬梅	2020-08-21 00:00:00+08
247	11170088	叶巧萍	2020-08-21 00:00:00+08
248	11170089	赵雪霞	2020-08-21 00:00:00+08
249	11170090	戴铭辰	2020-08-21 00:00:00+08
250	11170091	马月	2020-08-21 00:00:00+08
251	11170092	钱留芳	2020-08-21 00:00:00+08
252	11170093	王森	2020-08-21 00:00:00+08
253	11170094	刘煜	2020-08-21 00:00:00+08
254	11170095	张朵朵	2020-08-21 00:00:00+08
255	11170096	包雪芳	2020-08-21 00:00:00+08
256	11170097	陈琳	2020-08-21 00:00:00+08
257	11170098	杜茜	2020-08-21 00:00:00+08
258	11170099	范娟娟	2020-08-21 00:00:00+08
259	11170100	杜茜璐	2020-08-21 00:00:00+08
260	11170101	刘江丽	2020-08-21 00:00:00+08
261	11170102	张庆泉	2020-08-21 00:00:00+08
262	11170103	宋佳青	2020-08-21 00:00:00+08
263	11170104	康俊鸿	2020-08-21 00:00:00+08
264	11170105	江桂枝	2020-08-21 00:00:00+08
265	11170106	周佳美	2020-08-21 00:00:00+08
266	11170107	戚卉雯	2020-08-21 00:00:00+08
267	11170108	周赟	2020-08-21 00:00:00+08
268	11180001	吴歧珍	2020-08-21 00:00:00+08
269	11180002	张璐	2020-08-21 00:00:00+08
270	11180003	廖玲娟	2020-08-21 00:00:00+08
271	11180004	冯海娟	2020-08-21 00:00:00+08
272	11180005	吴国珍	2020-08-21 00:00:00+08
273	11180006	王元琼	2020-08-21 00:00:00+08
274	11180007	芮华政	2020-08-21 00:00:00+08
275	11180008	王晓春	2020-08-21 00:00:00+08
276	11180009	李丰芝	2020-08-21 00:00:00+08
277	11180010	黄巧芳	2020-08-21 00:00:00+08
278	11180011	汪廷惠	2020-08-21 00:00:00+08
279	11180012	王圣芳	2020-08-21 00:00:00+08
280	11180013	王友谊	2020-08-21 00:00:00+08
281	11180014	刘妍	2020-08-21 00:00:00+08
282	11180015	高发修	2020-08-21 00:00:00+08
283	11180016	朱从霄	2020-08-21 00:00:00+08
284	11180017	汪苏云	2020-08-21 00:00:00+08
285	11180018	施妹妹	2020-08-21 00:00:00+08
286	11180019	李霆	2020-08-21 00:00:00+08
287	11180020	张宏霞	2020-08-21 00:00:00+08
288	11180021	叶俊琪	2020-08-21 00:00:00+08
289	11180022	姚梦雪	2020-08-21 00:00:00+08
290	11180023	张曼曼	2020-08-21 00:00:00+08
291	11180024	许连凤	2020-08-21 00:00:00+08
292	11180025	谢昶	2020-08-21 00:00:00+08
293	11180026	马自然	2020-08-21 00:00:00+08
294	11180027	施伟韬	2020-08-21 00:00:00+08
295	11180028	董丽华	2020-08-21 00:00:00+08
296	11180029	刘梅	2020-08-21 00:00:00+08
297	11180030	王婕	2020-08-21 00:00:00+08
298	11180031	冯桃桃	2020-08-21 00:00:00+08
299	11180032	邓慧	2020-08-21 00:00:00+08
300	11180033	王焘	2020-08-21 00:00:00+08
301	11180034	欧阳宇	2020-08-21 00:00:00+08
302	11180035	彭丹丹	2020-08-21 00:00:00+08
303	11180036	沈丹	2020-08-21 00:00:00+08
304	11180037	吾露萍	2020-08-21 00:00:00+08
305	11180038	陈素娅	2020-08-21 00:00:00+08
306	11180039	琚榕榕	2020-08-21 00:00:00+08
307	11180040	崔云芳	2020-08-21 00:00:00+08
308	11180041	袁媛	2020-08-21 00:00:00+08
309	11180042	王洁	2020-08-21 00:00:00+08
310	11180043	陈睿	2020-08-21 00:00:00+08
311	11180044	马素珍	2020-08-21 00:00:00+08
312	11180045	胡玲	2020-08-21 00:00:00+08
313	11180046	路晓叶	2020-08-21 00:00:00+08
314	11180047	蒋文瀚	2020-08-21 00:00:00+08
315	11180048	刘冰冰	2020-08-21 00:00:00+08
316	11180049	谭雯	2020-08-21 00:00:00+08
317	11180050	王丽	2020-08-21 00:00:00+08
318	11180051	范静	2020-08-21 00:00:00+08
319	11180052	田超	2020-08-21 00:00:00+08
320	11180053	余臻	2020-08-21 00:00:00+08
321	11180054	刘锐	2020-08-21 00:00:00+08
322	11180055	丁	2020-08-21 00:00:00+08
323	11180056	张婧屹	2020-08-21 00:00:00+08
324	11180057	张海宏	2020-08-21 00:00:00+08
325	11180058	侯元丽	2020-08-21 00:00:00+08
326	11180059	张小伟	2020-08-21 00:00:00+08
327	11180060	徐丽华	2020-08-21 00:00:00+08
328	11180061	梁珍敏	2020-08-21 00:00:00+08
329	11180062	林少婷	2020-08-21 00:00:00+08
330	11180063	张律	2020-08-21 00:00:00+08
331	11180064	张军令	2020-08-21 00:00:00+08
332	11180065	周丽丽	2020-08-21 00:00:00+08
333	11180066	张旭	2020-08-21 00:00:00+08
334	11180067	周丽玲	2020-08-21 00:00:00+08
335	11180069	高嫄	2020-08-21 00:00:00+08
336	11180070	张晓娜	2020-08-21 00:00:00+08
337	11180071	郜文玲	2020-08-21 00:00:00+08
338	11180072	艾莎莎	2020-08-21 00:00:00+08
339	11180073	王怡菲	2020-08-21 00:00:00+08
340	11180074	张艳玲	2020-08-21 00:00:00+08
341	11180075	沈圣云	2020-08-21 00:00:00+08
342	11180076	宋福贵	2020-08-21 00:00:00+08
343	11180077	沈娇芸	2020-08-21 00:00:00+08
344	11180078	江丽	2020-08-21 00:00:00+08
345	11180079	王文君	2020-08-21 00:00:00+08
346	11180080	储静	2020-08-21 00:00:00+08
347	11180081	陆鹏屹	2020-08-21 00:00:00+08
348	11180082	沈彭恺	2020-08-21 00:00:00+08
349	11180083	孙婷	2020-08-21 00:00:00+08
350	11180084	杨梅	2020-08-21 00:00:00+08
351	11180085	蔡霖	2020-08-21 00:00:00+08
352	11180086	冯晓璐	2020-08-21 00:00:00+08
353	11180087	胡志芳	2020-08-21 00:00:00+08
354	11180088	黄彩虹	2020-08-21 00:00:00+08
355	11180089	唐悦	2020-08-21 00:00:00+08
356	11180090	杨玉萍	2020-08-21 00:00:00+08
357	11180091	韩翠萍	2020-08-21 00:00:00+08
358	11180092	成晶晖	2020-08-21 00:00:00+08
359	11180093	金叶	2020-08-21 00:00:00+08
360	11180095	金叶	2020-08-21 00:00:00+08
361	11180096	尚坤	2020-08-21 00:00:00+08
362	11180097	陈燕	2020-08-21 00:00:00+08
363	11180098	崔芳	2020-08-21 00:00:00+08
364	11180099	周加婷	2020-08-21 00:00:00+08
365	11180100	汤文娟	2020-08-21 00:00:00+08
366	11180101	朱冬冬	2020-08-21 00:00:00+08
367	11180102	张孜安	2020-08-21 00:00:00+08
368	11180103	吴霜	2020-08-21 00:00:00+08
369	11180104	陈桂香	2020-08-21 00:00:00+08
370	11180105	叶明珠	2020-08-21 00:00:00+08
371	11180106	张晶	2020-08-21 00:00:00+08
372	11180107	沈岗莉	2020-08-21 00:00:00+08
373	11180108	袁晓慧	2020-08-21 00:00:00+08
374	11180109	张一逸	2020-08-21 00:00:00+08
375	11180110	马丹华	2020-08-21 00:00:00+08
376	11180111	陈巧玲	2020-08-21 00:00:00+08
377	11180112	朱元春	2020-08-21 00:00:00+08
378	11180113	左旭	2020-08-21 00:00:00+08
379	11180114	王申	2020-08-21 00:00:00+08
380	11180115	于杨	2020-08-21 00:00:00+08
381	11180116	余素瑶	2020-08-21 00:00:00+08
382	11180117	韩春华	2020-08-21 00:00:00+08
383	11180118	杨永祥	2020-08-21 00:00:00+08
384	11180119	缪小利	2020-08-21 00:00:00+08
385	11180120	栾得地	2020-08-21 00:00:00+08
386	11180121	杨阳	2020-08-21 00:00:00+08
387	11180122	朱梦娇	2020-08-21 00:00:00+08
388	11180123	徐燕	2020-08-21 00:00:00+08
389	11180124	章文仙	2020-08-21 00:00:00+08
390	11180125	陈袁洁	2020-08-21 00:00:00+08
391	11180126	刘晶晶	2020-08-21 00:00:00+08
392	11180127	江思平	2020-08-21 00:00:00+08
393	11180128	温丽娟	2020-08-21 00:00:00+08
394	11180129	周贇	2020-08-21 00:00:00+08
395	11180130	陈洁	2020-08-21 00:00:00+08
396	11180131	周美燕	2020-08-21 00:00:00+08
397	11180132	徐丹	2020-08-21 00:00:00+08
398	11180133	张秀红	2020-08-21 00:00:00+08
399	11180134	陆伟飞	2020-08-21 00:00:00+08
400	11180135	龚树菊	2020-08-21 00:00:00+08
401	11180136	米雪	2020-08-21 00:00:00+08
402	11180137	李瑞	2020-08-21 00:00:00+08
403	11180138	陈霞	2020-08-21 00:00:00+08
404	11180139	谭玉婷	2020-08-21 00:00:00+08
405	11180140	张良娟	2020-08-21 00:00:00+08
406	11180141	祝嫣婷	2020-08-21 00:00:00+08
407	11180142	黄巧玲	2020-08-21 00:00:00+08
408	11180143	赵雪	2020-08-21 00:00:00+08
409	11180144	余漫	2020-08-21 00:00:00+08
410	11180145	姚人杰	2020-08-21 00:00:00+08
411	11180146	寇坦纳	2020-08-21 00:00:00+08
412	11180147	浦梦婷	2020-08-21 00:00:00+08
413	11180148	龚君芳	2020-08-21 00:00:00+08
414	11180149	何宇浩	2020-08-21 00:00:00+08
415	11180150	龚君芳	2020-08-21 00:00:00+08
416	11180151	沈红	2020-08-21 00:00:00+08
417	11180152	戴雯	2020-08-21 00:00:00+08
418	11180153	韦秋惠	2020-08-21 00:00:00+08
419	11180154	施丽君	2020-08-21 00:00:00+08
420	11180155	刘静	2020-08-21 00:00:00+08
421	11180156	朱冬林	2020-08-21 00:00:00+08
422	11180157	沈骏婕	2020-08-21 00:00:00+08
423	11180158	刘曼	2020-08-21 00:00:00+08
424	11180159	王连连	2020-08-21 00:00:00+08
425	11180160	郑洁	2020-08-21 00:00:00+08
426	11180161	陆琳琰	2020-08-21 00:00:00+08
427	11180162	余素瑶	2020-08-21 00:00:00+08
428	11180163	陆琳琰	2020-08-21 00:00:00+08
429	11180164	邢兰香	2020-08-21 00:00:00+08
430	11180165	李爽	2020-08-21 00:00:00+08
431	11180166	李建美	2020-08-21 00:00:00+08
432	11180167	李爽	2020-08-21 00:00:00+08
433	11180168	管峻	2020-08-21 00:00:00+08
434	11180169	林静	2020-08-21 00:00:00+08
435	11180170	黄大敏	2020-08-21 00:00:00+08
436	11180171	孙勇	2020-08-21 00:00:00+08
437	11180173	林碧端	2020-08-21 00:00:00+08
438	11180175	孟莹莹	2020-08-21 00:00:00+08
439	11181001	张泽阳	2020-08-21 00:00:00+08
440	11181002	朱柳平	2020-08-21 00:00:00+08
441	11181003	史沫	2020-08-21 00:00:00+08
442	11181004	郑毓秀	2020-08-21 00:00:00+08
443	11181005	李媛媛	2020-08-21 00:00:00+08
444	11181006	胡珍	2020-08-21 00:00:00+08
445	11181007	王艺	2020-08-21 00:00:00+08
446	11181008	王淑贤	2020-08-21 00:00:00+08
447	11181009	王丽	2020-08-21 00:00:00+08
448	11181010	张香萍	2020-08-21 00:00:00+08
449	11181011	谢佳霞	2020-08-21 00:00:00+08
450	11181012	周魏	2020-08-21 00:00:00+08
451	11181013	董秋丽	2020-08-21 00:00:00+08
452	11181014	李慧	2020-08-21 00:00:00+08
453	11181015	杜晓璐	2020-08-21 00:00:00+08
454	11181016	周思怡	2020-08-21 00:00:00+08
455	11181017	\N	2020-08-21 00:00:00+08
456	11180177	乐丹	2020-08-21 00:00:00+08
458	11180172	王小凤	2020-08-21 00:00:00+08
459	11180174	徐晶	2020-08-21 00:00:00+08
460	11180176	何长美	2020-08-21 00:00:00+08
461	11180178	欧阳宇	2020-08-21 00:00:00+08
462	11180179	王敏	2020-08-21 00:00:00+08
463	11180180	孙立丽	2020-08-21 00:00:00+08
464	11181018	王判	2020-08-21 00:00:00+08
465	11180181	刘春霞	2020-08-21 00:00:00+08
466	11181019	李梅霞	2020-08-21 00:00:00+08
467	11180183	唐怡	2020-08-21 00:00:00+08
468	11180184	徐杰	2020-08-21 00:00:00+08
469	11180185	董莉莉	2020-08-21 00:00:00+08
470	11180186	高梦茹	2020-08-21 00:00:00+08
471	11180187	董莉莉	2020-08-21 00:00:00+08
472	11180188	朱治芳	2020-08-21 00:00:00+08
473	11180189	赵芬	2020-08-21 00:00:00+08
474	11180190	柯文珺	2020-08-21 00:00:00+08
475	11180191	谭亚茹	2020-08-21 00:00:00+08
476	11180192	朱孟华	2020-08-21 00:00:00+08
477	11180193	杨红磊	2020-08-21 00:00:00+08
478	11180194	刘佳	2020-08-21 00:00:00+08
479	11180195	彭思	2020-08-21 00:00:00+08
481	11190021	鲁爱莲	2020-08-21 00:00:00+08
482	11190022	邵佩娜	2020-08-21 00:00:00+08
483	11190023	邵佩娜	2020-08-21 00:00:00+08
484	11190024	张颖	2020-08-21 00:00:00+08
485	11190025	陈心怡	2020-08-21 00:00:00+08
486	11190026	谢芝妮	2020-08-21 00:00:00+08
487	11190027	周清勤	2020-08-21 00:00:00+08
488	11190028	陈丹	2020-08-21 00:00:00+08
489	11190029	王莺	2020-08-21 00:00:00+08
490	11190030	赵艳平	2020-08-21 00:00:00+08
491	11190031	徐婷	2020-08-21 00:00:00+08
492	11190032	刘劝劝	2020-08-21 00:00:00+08
493	11190033	董森琴	2020-08-21 00:00:00+08
494	11190034	石文君	2020-08-21 00:00:00+08
495	11190035	陈晶	2020-08-21 00:00:00+08
496	11190036	李悦	2020-08-21 00:00:00+08
497	11190037	鲁进	2020-08-21 00:00:00+08
498	11190038	许婷婷	2020-08-21 00:00:00+08
499	11190039	程小燕	2020-08-21 00:00:00+08
500	11190040	郭玉琴	2020-08-21 00:00:00+08
501	11190041	郭玉琴	2020-08-21 00:00:00+08
502	11190042	吕静宜	2020-08-21 00:00:00+08
503	11190043	王晓春	2020-08-21 00:00:00+08
504	11190044	王维维	2020-08-21 00:00:00+08
505	11190045	张蓉蓉	2020-08-21 00:00:00+08
506	11190046	朱白桦	2020-08-21 00:00:00+08
507	11190047	王利	2020-08-21 00:00:00+08
508	11190048	姚玲玲	2020-08-21 00:00:00+08
509	11190049	徐冲	2020-08-21 00:00:00+08
510	11190050	徐海静	2020-08-21 00:00:00+08
511	11190051	杨媛媛	2020-08-21 00:00:00+08
512	11190052	陈丹	2020-08-21 00:00:00+08
513	11190053	张刘慧	2020-08-21 00:00:00+08
514	11190054	陈凡	2020-08-21 00:00:00+08
515	11190055	冯建锋	2020-08-21 00:00:00+08
516	11190056	冯保会	2020-08-21 00:00:00+08
517	11190057	靳素娟	2020-08-21 00:00:00+08
518	11190058	孙立梅	2020-08-21 00:00:00+08
519	11190059	朱晓静	2020-08-21 00:00:00+08
520	11190060	丁改娟	2020-08-21 00:00:00+08
521	11190061	朱晓静	2020-08-21 00:00:00+08
522	11190062	吕荟萍	2020-08-21 00:00:00+08
523	11190063	杨艳	2020-08-21 00:00:00+08
524	11190064	郁晓芸	2020-08-21 00:00:00+08
525	11190065	黄云	2020-08-21 00:00:00+08
526	11190066	阮婷婷	2020-08-21 00:00:00+08
527	11190067	徐斌	2020-08-21 00:00:00+08
528	11190068	徐斌	2020-08-21 00:00:00+08
529	11190069	张蓉蓉	2020-08-21 00:00:00+08
530	11190070	侍子涵	2020-08-21 00:00:00+08
531	11190071	王超	2020-08-21 00:00:00+08
532	11190072	张语阳	2020-08-21 00:00:00+08
533	11190073	黄亚萍	2020-08-21 00:00:00+08
534	11190074	赵海霞	2020-08-21 00:00:00+08
535	11190075	刘崚昱	2020-08-21 00:00:00+08
536	11190076	邓小珠	2020-08-21 00:00:00+08
537	11190078	魏晨欢	2020-08-21 00:00:00+08
538	11190079	闵靖	2020-08-21 00:00:00+08
539	11190080	陈琦	2020-08-21 00:00:00+08
540	11190081	丁芸琦	2020-08-21 00:00:00+08
541	11190082	潘越	2020-08-21 00:00:00+08
542	11190083	庞凝	2020-08-21 00:00:00+08
543	11190084	高婷婷	2020-08-21 00:00:00+08
544	11190085	许诗文	2020-08-21 00:00:00+08
545	11190086	朱丽丽	2020-08-21 00:00:00+08
546	11190087	陈鎏	2020-08-21 00:00:00+08
547	11190088	贾文娟	2020-08-21 00:00:00+08
548	11190089	段晨晨	2020-08-21 00:00:00+08
549	11190090	王鑫	2020-08-21 00:00:00+08
550	11190091	王翠	2020-08-21 00:00:00+08
551	11190093	袁韵	2020-08-21 00:00:00+08
552	11190094	刘倩	2020-08-21 00:00:00+08
553	11190095	陈丽婷	2020-08-21 00:00:00+08
554	11190096	黄春园	2020-08-21 00:00:00+08
555	11191002	司玮	2020-08-21 00:00:00+08
556	11191003	赵泽	2020-08-21 00:00:00+08
557	11191004	陈艳	2020-08-21 00:00:00+08
558	11191005	张洋	2020-08-21 00:00:00+08
559	11191006	刘璐	2020-08-21 00:00:00+08
560	11190099	张霞	2020-08-21 00:00:00+08
561	11190097	欧阳文君	2020-08-21 00:00:00+08
562	11190098	贺曦	2020-08-21 00:00:00+08
563	11190100	王婷	2020-08-21 00:00:00+08
564	11190101	许璟婧	2020-08-21 00:00:00+08
565	11190102	许方方	2020-08-21 00:00:00+08
566	11190103	张小慢	2020-08-21 00:00:00+08
567	11190104	姜淼	2020-08-21 00:00:00+08
568	11190105	雷萍萍	2020-08-21 00:00:00+08
569	11190106	李琼	2020-08-21 00:00:00+08
570	11190107	姜晓颖	2020-08-21 00:00:00+08
571	11190108	邱小红	2020-08-21 00:00:00+08
572	11190109	左剑伟	2020-08-21 00:00:00+08
573	11190110	许茹燕	2020-08-21 00:00:00+08
574	11190111	徐巧	2020-08-21 00:00:00+08
575	11190112	程杰	2020-08-21 00:00:00+08
576	11190113	张磊	2020-08-21 00:00:00+08
577	11190114	徐巧	2020-08-21 00:00:00+08
578	11190115	黄诗语	2020-08-21 00:00:00+08
579	11190116	汪俊	2020-08-21 00:00:00+08
580	11190117	章丹平	2020-08-21 00:00:00+08
581	11190118	潘越	2020-08-21 00:00:00+08
582	11190119	李茜	2020-08-21 00:00:00+08
583	11190120	刘倩倩	2020-08-21 00:00:00+08
584	11190121	龙凤梅	2020-08-21 00:00:00+08
585	11190122	宋柳	2020-08-21 00:00:00+08
586	11190123	刘洋	2020-08-21 00:00:00+08
587	11190124	宋柳	2020-08-21 00:00:00+08
588	11190125	颜李娜	2020-08-21 00:00:00+08
589	11190126	于建莉	2020-08-21 00:00:00+08
590	11190127	杨欣	2020-08-21 00:00:00+08
591	11190128	\N	2020-08-21 00:00:00+08
592	11190129	杨莉娜	2020-08-21 00:00:00+08
593	11190130	戴海莹	2020-08-21 00:00:00+08
594	11190131	严志琴	2020-08-21 00:00:00+08
595	11190132	张二敏	2020-08-21 00:00:00+08
596	11190133	路敏	2020-08-21 00:00:00+08
597	11190134	赵培红	2020-08-21 00:00:00+08
598	11191007	何芳艳	2020-08-21 00:00:00+08
599	11191008	虞晓梅	2020-08-21 00:00:00+08
600	11191009	李雪	2020-08-21 00:00:00+08
601	11190136	孔梦梦	2020-08-21 00:00:00+08
602	11190137	陈笑	2020-08-21 00:00:00+08
603	11190139	徐霞	2020-08-21 00:00:00+08
604	11190140	韩晓辰	2020-08-21 00:00:00+08
605	11190142	韩晓辰	2020-08-21 00:00:00+08
606	11190143	王珍珍	2020-08-21 00:00:00+08
607	11190135	朱恩	2020-08-21 00:00:00+08
608	11190138	顾婷	2020-08-21 00:00:00+08
609	11190141	曹海霞	2020-08-21 00:00:00+08
610	11190144	凌娟	2020-08-21 00:00:00+08
611	11190147	金小晚	2020-08-21 00:00:00+08
612	11190150	李婉玲	2020-08-21 00:00:00+08
613	11190145	何莉莉	2020-08-21 00:00:00+08
614	11190146	胡从华	2020-08-21 00:00:00+08
615	11190148	汪勇	2020-08-21 00:00:00+08
616	11190149	徐文	2020-08-21 00:00:00+08
617	11190151	周大鹏	2020-08-21 00:00:00+08
618	11190152	周炫彤	2020-08-21 00:00:00+08
619	11190154	马蓓颖	2020-08-21 00:00:00+08
620	11190157	高婷	2020-08-21 00:00:00+08
621	11190158	陈静	2020-08-21 00:00:00+08
622	11191010	\N	2020-08-21 00:00:00+08
623	11190153	王程	2020-08-21 00:00:00+08
624	11190156	范龙梅	2020-08-21 00:00:00+08
625	11190159	黄海军	2020-08-21 00:00:00+08
626	11190162	刘明霞	2020-08-21 00:00:00+08
627	11190163	于懿	2020-08-21 00:00:00+08
628	11190164	陶佳丽	2020-08-21 00:00:00+08
629	11190166	张珺	2020-08-21 00:00:00+08
630	11190165	胡丽珊	2020-08-21 00:00:00+08
631	11190168	廖婧	2020-08-21 00:00:00+08
632	11190167	曹赟	2020-08-21 00:00:00+08
633	11190169	薛慧	2020-08-21 00:00:00+08
634	11190170	王超容	2020-08-21 00:00:00+08
635	11190172	蔡玉莲	2020-08-21 00:00:00+08
636	11190160	章玉萍	2020-08-21 00:00:00+08
637	11190161	张玲瑜	2020-08-21 00:00:00+08
638	11190175	秦文灏	2020-08-21 00:00:00+08
639	11190176	杨嘉艳	2020-08-21 00:00:00+08
640	11190171	郭燕飞	2020-08-21 00:00:00+08
641	11190174	刘培源	2020-08-21 00:00:00+08
642	11190177	陈相如	2020-08-21 00:00:00+08
643	11190180	陈相如	2020-08-21 00:00:00+08
644	11190178	徐燕娜	2020-08-21 00:00:00+08
645	11190179	顾英韬	2020-08-21 00:00:00+08
646	11190181	李善敏	2020-08-21 00:00:00+08
647	11190182	杨亚云	2020-08-21 00:00:00+08
648	11190184	周琰	2020-08-21 00:00:00+08
649	11190185	程其桃	2020-08-21 00:00:00+08
650	11190183	吴伊丽	2020-08-21 00:00:00+08
651	11190186	陈玉芳	2020-08-21 00:00:00+08
652	11190189	常英健	2020-08-21 00:00:00+08
653	11190192	姜琦	2020-08-21 00:00:00+08
654	11190195	金勤	2020-08-21 00:00:00+08
655	11191011	姚珏	2020-08-21 00:00:00+08
656	11190190	叶星星	2020-08-21 00:00:00+08
657	11190191	东天	2020-08-21 00:00:00+08
658	11190193	王彩霞	2020-08-21 00:00:00+08
659	11190194	赵瑜	2020-08-21 00:00:00+08
660	11190196	孙体香	2020-08-21 00:00:00+08
661	11190197	金静	2020-08-21 00:00:00+08
662	11190187	应晓艳	2020-08-21 00:00:00+08
663	11190198	韩晓梅	2020-08-21 00:00:00+08
664	11190188	周国亮	2020-08-21 00:00:00+08
665	11190199	汤舒媛	2020-08-21 00:00:00+08
666	11190200	王娜	2020-08-21 00:00:00+08
667	11190202	周国亮	2020-08-21 00:00:00+08
668	11190203	朱盈盈	2020-08-21 00:00:00+08
669	11190205	刘莉娜	2020-08-21 00:00:00+08
670	11190201	徐葛玲	2020-08-21 00:00:00+08
671	11190204	张昱鑫	2020-08-21 00:00:00+08
672	11190207	王秀英	2020-08-21 00:00:00+08
673	11190206	陆霖	2020-08-21 00:00:00+08
674	11190208	林佳丽	2020-08-21 00:00:00+08
675	11190210	张亚萍	2020-08-21 00:00:00+08
676	11190213	吴溶溶	2020-08-21 00:00:00+08
677	11190209	周婧倩	2020-08-21 00:00:00+08
678	11190211	周俊俊	2020-08-21 00:00:00+08
679	11190212	李东乐	2020-08-21 00:00:00+08
680	11190214	顾莹莹	2020-08-21 00:00:00+08
681	11190215	傅宸睿	2020-08-21 00:00:00+08
682	11190217	杜雪围	2020-08-21 00:00:00+08
683	11190220	谢漫漫	2020-08-21 00:00:00+08
684	11190221	董玉芳	2020-08-21 00:00:00+08
685	11191012	董芳	2020-08-21 00:00:00+08
686	11190219	戴娟	2020-08-21 00:00:00+08
687	11190216	阮阳娜	2020-08-21 00:00:00+08
688	11190222	陆小红	2020-08-21 00:00:00+08
689	11190225	秦和	2020-08-21 00:00:00+08
690	11190223	赵玲	2020-08-21 00:00:00+08
691	11190224	刘瑜	2020-08-21 00:00:00+08
692	11190226	项雷	2020-08-21 00:00:00+08
693	11190227	LINJIA	2020-08-21 00:00:00+08
694	11190228	喻春梅	2020-08-21 00:00:00+08
695	11190229	黄挺	2020-08-21 00:00:00+08
696	11190230	马振震	2020-08-21 00:00:00+08
697	11190231	刘慧	2020-08-21 00:00:00+08
698	11190235	郑庆庆	2020-08-21 00:00:00+08
699	11190232	黄芬	2020-08-21 00:00:00+08
700	11190236	毛芳	2020-08-21 00:00:00+08
701	11190233	戴逸韵	2020-08-21 00:00:00+08
702	11200001	余志杰	2020-08-21 00:00:00+08
703	11200002	贾雪菱	2020-08-21 00:00:00+08
704	11200003	黄小芳	2020-08-21 00:00:00+08
705	11200004	胥剑奇	2020-08-21 00:00:00+08
706	11200005	庄建华	2020-08-21 00:00:00+08
707	11200007	周晓云	2020-08-21 00:00:00+08
708	11200008	李敏	2020-08-21 00:00:00+08
709	11200009	陈晨	2020-08-21 00:00:00+08
710	11200010	薛琴	2020-08-21 00:00:00+08
711	11200011	张浦麒	2020-08-21 00:00:00+08
712	11200012	陈燕燕	2020-08-21 00:00:00+08
713	11200013	庄建华	2020-08-21 00:00:00+08
714	11200014	陈琳	2020-08-21 00:00:00+08
715	11200015	冯春梅	2020-08-21 00:00:00+08
716	11200016	任建玲	2020-08-21 00:00:00+08
717	11200017	章珺	2020-08-21 00:00:00+08
718	11200018	仝妍	2020-08-21 00:00:00+08
719	11200019	管文华	2020-08-21 00:00:00+08
720	11200020	李科梅	2020-08-21 00:00:00+08
721	11200021	李红华	2020-08-21 00:00:00+08
722	11200022	李婧	2020-08-21 00:00:00+08
723	11200023	孙洁	2020-08-21 00:00:00+08
724	11200024	王明路	2020-08-21 00:00:00+08
725	11200025	李影	2020-08-21 00:00:00+08
726	11200026	胡青	2020-08-21 00:00:00+08
727	11200027	张磊胎儿	2020-08-21 00:00:00+08
728	11200028	戴文娟	2020-08-21 00:00:00+08
729	11200029	马玲	2020-08-21 00:00:00+08
730	11200030	谢启玲	2020-08-21 00:00:00+08
731	11200031	何兰兰	2020-08-21 00:00:00+08
732	11200032	柯留虹	2020-08-21 00:00:00+08
733	11200034	丁桂荣	2020-08-21 00:00:00+08
734	11200035	李晶	2020-08-21 00:00:00+08
735	11200036	张静	2020-08-21 00:00:00+08
736	11200037	易荣杨	2020-08-21 00:00:00+08
737	11200038	黄巧玲	2020-08-21 00:00:00+08
738	11200039	李晶	2020-08-21 00:00:00+08
739	11200040	张雨嘉	2020-08-21 00:00:00+08
740	11200042	谢美兰	2020-08-21 00:00:00+08
741	20200001	范敏清	2020-08-21 00:00:00+08
742	11200043	陆薇	2020-08-21 00:00:00+08
743	11200044	王月英	2020-08-21 00:00:00+08
744	11200046	黄凤琴	2020-08-21 00:00:00+08
745	11200047	任冉冉	2020-08-21 00:00:00+08
746	11200048	陶丽	2020-08-21 00:00:00+08
747	20200002	周红地	2020-08-21 00:00:00+08
748	11200051	朱佳颖	2020-08-21 00:00:00+08
749	11200052	陈菁	2020-08-21 00:00:00+08
750	11200054	张桂芹	2020-08-21 00:00:00+08
751	11200055	余江小	2020-08-21 00:00:00+08
752	11200056	刘幸幸	2020-08-21 00:00:00+08
753	11200058	王琪	2020-08-21 00:00:00+08
754	11200059	冯小月	2020-08-21 00:00:00+08
755	20200004	苏芳	2020-08-21 00:00:00+08
756	11200050	陈如希	2020-08-21 00:00:00+08
757	11200060	苏芳	2020-08-21 00:00:00+08
758	11200062	林夏筠	2020-08-21 00:00:00+08
759	11200063	刘小飞	2020-08-21 00:00:00+08
760	11200064	张玲玲	2020-08-21 00:00:00+08
761	11200066	张玲玲	2020-08-21 00:00:00+08
762	11200067	桂春雨	2020-08-21 00:00:00+08
763	11200068	范锦璐	2020-08-21 00:00:00+08
764	11200070	彭盼盼	2020-08-21 00:00:00+08
765	11200071	董明芝	2020-08-21 00:00:00+08
766	11200072	车雪娟	2020-08-21 00:00:00+08
767	11200074	任哲	2020-08-21 00:00:00+08
768	11200075	胡莉莉	2020-08-21 00:00:00+08
769	11200076	沈钱菁	2020-08-21 00:00:00+08
770	11200078	倪慧	2020-08-21 00:00:00+08
771	11200079	袁菲霞	2020-08-21 00:00:00+08
772	20200005	苏晓莹	2020-08-21 00:00:00+08
773	20200006	王秀云	2020-08-21 00:00:00+08
774	11200080	徐蓓	2020-08-21 00:00:00+08
775	11200082	张璐	2020-08-21 00:00:00+08
776	11200083	蒋丽霞	2020-08-21 00:00:00+08
777	11200084	李飞弦	2020-08-21 00:00:00+08
778	11200086	陈春宇	2020-08-21 00:00:00+08
779	11200087	王浩勤	2020-08-21 00:00:00+08
780	11200088	宋兰兰	2020-08-21 00:00:00+08
781	11200090	马洪丹	2020-08-21 00:00:00+08
782	11200091	幸先红	2020-08-21 00:00:00+08
783	11200092	郑升跃	2020-08-21 00:00:00+08
784	11200094	张茜	2020-08-21 00:00:00+08
785	11200095	李倩	2020-08-21 00:00:00+08
786	11200096	张佳雪	2020-08-21 00:00:00+08
787	11200098	陈勋	2020-08-21 00:00:00+08
788	11200099	孙云平	2020-08-21 00:00:00+08
789	11200100	徐苏波	2020-08-21 00:00:00+08
790	11200102	杨晓丽	2020-08-21 00:00:00+08
791	11200103	张玉琴	2020-08-21 00:00:00+08
792	11200104	叶艺红	2020-08-21 00:00:00+08
793	11200106	王晓慧	2020-08-21 00:00:00+08
794	11200107	孙梦云	2020-08-21 00:00:00+08
795	11200108	苏经纬	2020-08-21 00:00:00+08
796	11200110	刘康	2020-08-21 00:00:00+08
797	11200111	王静	2020-08-21 00:00:00+08
798	11200112	陈员	2020-08-21 00:00:00+08
799	11200114	李静	2020-08-21 00:00:00+08
800	20200007	陈萍	2020-08-21 00:00:00+08
801	11200115	于雁	2020-08-21 00:00:00+08
802	11200116	叶欣	2020-08-21 00:00:00+08
803	20200008	黄美丽	2020-08-21 00:00:00+08
804	20200009	徐花香	2020-08-21 00:00:00+08
805	11200118	项冰冰	2020-08-21 00:00:00+08
806	11200119	王彩霞	2020-08-21 00:00:00+08
807	11200123	邵雨婷	2020-08-21 00:00:00+08
808	11200124	胡末凤	2020-08-21 00:00:00+08
809	11200126	狄娜	2020-08-21 00:00:00+08
810	11200127	张莉	2020-08-21 00:00:00+08
811	11200128	谢素梅	2020-08-21 00:00:00+08
812	11200130	马银萍	2020-08-21 00:00:00+08
813	11200131	陈劼	2020-08-21 00:00:00+08
814	11200132	任慿	2020-08-21 00:00:00+08
815	11200134	王帅	2020-08-21 00:00:00+08
816	11200135	苏燕丽	2020-08-21 00:00:00+08
817	11200136	王星卓	2020-08-21 00:00:00+08
818	11200139	廖慧玲	2020-08-21 00:00:00+08
\.


--
-- Data for Name: tutorial_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tutorial_person (id, name) FROM stdin;
1	Jieter
2	Bradley
3	A
4	B
5	C
6	D
7	E
8	F
9	G
10	H
11	A
12	B
13	C
14	D
15	E
16	F
17	G
18	H
19	A
20	B
21	C
22	D
23	E
24	F
25	G
26	H
27	A
28	B
29	C
30	D
31	E
32	F
33	G
34	H
35	A
36	B
37	C
38	D
39	E
40	F
41	G
42	H
43	A
44	B
45	C
46	D
47	E
48	F
49	G
50	H
51	A
52	B
53	C
54	D
55	E
56	F
57	G
58	H
59	A
60	B
61	C
62	D
63	E
64	F
65	G
66	H
67	A
68	B
69	C
70	D
71	E
72	F
73	G
74	H
75	A
76	B
77	C
78	D
79	E
80	F
81	G
82	H
83	A
84	B
85	C
86	D
87	E
88	F
89	G
90	H
91	A
92	B
93	C
94	D
95	E
96	F
97	G
98	H
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: report_pathogenicity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.report_pathogenicity_id_seq', 1, false);


--
-- Name: report_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.report_report_id_seq', 1, false);


--
-- Name: report_sample_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.report_sample_id_seq', 1, false);


--
-- Name: tutorial_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tutorial_person_id_seq', 98, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: report_pathogenicity report_pathogenicity_disease_gene_variant_85ce3c1a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_pathogenicity
    ADD CONSTRAINT report_pathogenicity_disease_gene_variant_85ce3c1a_uniq UNIQUE (disease, gene, variant);


--
-- Name: report_pathogenicity report_pathogenicity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_pathogenicity
    ADD CONSTRAINT report_pathogenicity_pkey PRIMARY KEY (id);


--
-- Name: report_report report_report_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_report
    ADD CONSTRAINT report_report_pkey PRIMARY KEY (id);


--
-- Name: report_sample report_sample_family_name_e8dea1f5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_sample
    ADD CONSTRAINT report_sample_family_name_e8dea1f5_uniq UNIQUE (family, name);


--
-- Name: report_sample report_sample_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_sample
    ADD CONSTRAINT report_sample_pkey PRIMARY KEY (id);


--
-- Name: tutorial_person tutorial_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorial_person
    ADD CONSTRAINT tutorial_person_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: report_report_pathogenicity_id_9b1843a7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX report_report_pathogenicity_id_9b1843a7 ON public.report_report USING btree (pathogenicity_id);


--
-- Name: report_report_sample_id_6a9a13a6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX report_report_sample_id_6a9a13a6 ON public.report_report USING btree (sample_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: report_report report_report_pathogenicity_id_9b1843a7_fk_report_pa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_report
    ADD CONSTRAINT report_report_pathogenicity_id_9b1843a7_fk_report_pa FOREIGN KEY (pathogenicity_id) REFERENCES public.report_pathogenicity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: report_report report_report_sample_id_6a9a13a6_fk_report_sample_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.report_report
    ADD CONSTRAINT report_report_sample_id_6a9a13a6_fk_report_sample_id FOREIGN KEY (sample_id) REFERENCES public.report_sample(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

