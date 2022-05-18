--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: hoang
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO hoang;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: hoang
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO hoang;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hoang
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: hoang
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO hoang;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: hoang
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO hoang;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hoang
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: hoang
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO hoang;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: hoang
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO hoang;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hoang
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: hoang
--

CREATE TABLE public.admin_users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.admin_users OWNER TO hoang;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: hoang
--

CREATE SEQUENCE public.admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO hoang;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hoang
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: hoang
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO hoang;

--
-- Name: companies; Type: TABLE; Schema: public; Owner: hoang
--

CREATE TABLE public.companies (
    id bigint NOT NULL,
    name character varying,
    from_year integer,
    to_year integer,
    location character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    title character varying
);


ALTER TABLE public.companies OWNER TO hoang;

--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: hoang
--

CREATE SEQUENCE public.companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_id_seq OWNER TO hoang;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hoang
--

ALTER SEQUENCE public.companies_id_seq OWNED BY public.companies.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: hoang
--

CREATE TABLE public.projects (
    id bigint NOT NULL,
    company_id bigint,
    name character varying,
    from_year integer,
    to_year integer,
    summary text,
    challenge text,
    resolution text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    code_url text,
    live_url text
);


ALTER TABLE public.projects OWNER TO hoang;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: hoang
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO hoang;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hoang
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: hoang
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO hoang;

--
-- Name: taggings; Type: TABLE; Schema: public; Owner: hoang
--

CREATE TABLE public.taggings (
    id bigint NOT NULL,
    tag_id integer,
    taggable_type character varying,
    taggable_id integer,
    tagger_type character varying,
    tagger_id integer,
    context character varying(128),
    created_at timestamp without time zone,
    tenant character varying(128)
);


ALTER TABLE public.taggings OWNER TO hoang;

--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: hoang
--

CREATE SEQUENCE public.taggings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggings_id_seq OWNER TO hoang;

--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hoang
--

ALTER SEQUENCE public.taggings_id_seq OWNED BY public.taggings.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: hoang
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    taggings_count integer DEFAULT 0
);


ALTER TABLE public.tags OWNER TO hoang;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: hoang
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO hoang;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hoang
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: companies id; Type: DEFAULT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: taggings id; Type: DEFAULT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.taggings ALTER COLUMN id SET DEFAULT nextval('public.taggings_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
2	logo	Company	1	2	2022-04-06 13:05:16.60696
3	logo	Company	2	3	2022-04-06 13:39:05.274409
4	image	Project	6	4	2022-05-18 12:34:55.841064
5	image	Project	7	5	2022-05-18 13:06:09.818341
6	image	Project	8	6	2022-05-18 13:15:44.481183
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
2	82nsse04c2smwqrn13z62i8a06k6	east-agile-logo_70x70.png	image/png	{"identified":true,"analyzed":true}	cloudinary	1042	MPUFVALbldTzmtMyfEfUiw==	2022-04-06 13:05:16.601743
3	leg0qug68uqf9nmkrcx3v81kdtqv	ne_70x70.png	image/png	{"identified":true,"analyzed":true}	cloudinary	1647	AsSDCBYsn29Sp8ToReEBAQ==	2022-04-06 13:39:05.269
4	tny1sh2x5hv1x4qbrdcd87ibkgb9	e1g12l8y50mo0pgfa1zi6ti03pg0.png	image/png	{"identified":true,"analyzed":true}	cloudinary	21870	B6cQcQVLryGyERvVBAhlaw==	2022-05-18 12:34:55.769301
5	25ophgmbsg7pw2lzl0nz6dgppnyv	i67v522nbwurt8e6cqqvmjfjfy83.png	image/png	{"identified":true,"analyzed":true}	cloudinary	116098	g1tmU5yhg3SDidkEGCFZQA==	2022-05-18 13:06:09.813626
6	89t5qw1i9fv6iu9n5bwn39p8x8rz	yeuftvcewnou3gxe63prjw1wac9c.png	image/png	{"identified":true,"analyzed":true}	cloudinary	490751	WabHFY0yvaPJax9+FRJKTg==	2022-05-18 13:15:44.47706
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY public.admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
1	admin@example.com	$2a$12$DY.hzXf389DajPlXRQAqcOPr8EmAW29PC8.k8ZfcOh7rqvCvlVHPm	\N	\N	2022-04-05 13:29:06.355107	2022-04-05 13:25:16.688624	2022-04-05 13:29:06.355677
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2022-04-05 13:25:02.731483	2022-04-05 13:25:02.731483
\.


--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY public.companies (id, name, from_year, to_year, location, created_at, updated_at, title) FROM stdin;
1	East Agile	2014	2016	Ho Chi Minh City, Vietnam	2022-04-05 13:36:27.759917	2022-04-06 13:05:16.610637	Ruby On Rails Developer 
2	Net Engine	2016	2022	Brisbane, Australia	2022-04-05 13:42:08.653221	2022-04-13 13:50:08.036935	Ruby On Rails Developer - Remote
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY public.projects (id, company_id, name, from_year, to_year, summary, challenge, resolution, created_at, updated_at, code_url, live_url) FROM stdin;
6	\N	Flappy Bird AI	2020	2021	Constructing an AI for Flappy Bird to play the game itself.	We need the bird to be able to make decision which action they should take at a given time through unsupervised learning and evolution.	We implement neural networks as brains for the birds. For each generation, we mutate the candidates, let them compete and do the natural selection.	2022-05-18 12:34:55.607158	2022-05-18 12:36:45.986176	https://github.com/hoang-phan/flappy_bird_ai	https://flappybirdai.onrender.com/
4	2	Padmore City	2018	2022	Learning website where providers offer online courses in form of interesting games	Ability to support questions/answers as casual conversation, rating task and award achievement automatically	Implement varies of conversations and multi-choice questions, configurable achievement system based on completed tasks metrics	2022-04-11 12:46:56.455723	2022-04-11 12:56:19.337695	\N	\N
2	2	Scout Recruit	2016	2022	Complete solution for HR users to post job ad, recruit candidates and integrate with other platforms	Biggest project so far in my career with a wide variety of features: Questionnaire, Booking system, Email/SMS automation, 3rd party integrations...	Make a wide variety of questions in job ads with auto-rating metrics. Use Twilio/Sendgrind for SMS/Emails. Implement each integration according to their public/private API documentation	2022-04-11 12:23:40.94895	2022-04-11 13:07:03.600068	\N	\N
1	1	OppSites	2014	2016	Real estate website for the landlords to advertise their properties visually in the map.	Ability to display the lands' borders on the map, query by longitude, latitude and nearby properties.	Use Google Map JS API to draw polygons, save them along with properties' information to PostgreSQL and use PostGIS to query	2022-04-11 12:10:40.222886	2022-04-11 13:08:29.804923	\N	\N
5	2	CompliLearn	2018	2019	Learning website for schools to manage their courses and staff	Build 3rd party login for Go1 and different school portals	Use Auth0 with Custom Social Login scripts to configure OAuth for Go1/school portals	2022-04-11 12:55:30.244273	2022-04-11 13:09:32.89567	\N	\N
7	\N	Sudoku Solver	2021	2022	A web app letting user input their sudoku by numbers or image and solve it	The biggest challenge is how to read the sudoku from image, I also want to improve the sudoku algorithm on the internet so it is faster for every input combination.	I derive an improved Sudoku algorithm that gives dramatic performance gain over the solution on the Internet, use Python OpenCV and Tesseract OCR to read input from image.	2022-05-18 13:06:08.683333	2022-05-18 13:06:09.82224	https://github.com/hoang-phan/sudoku-solver	http://hoang-sudoku-solver.herokuapp.com/
3	2	Scout Onboard	2018	2022	Complete solution for HR users to manage the onboarding process of eligible candidates	We need to create and customize the offer letter, approval process, ability for candidate to sign and accept as well as negotiate the offer	Take advantage of Rails event machine and Mustache placeholders for offer process, JS signature pad and canvas manipulation to capture candidate signature. Rendering and saving base64 image of the signatures to db.	2022-04-11 12:35:59.454419	2022-05-18 12:14:17.685944		https://scouttalentonboard.com/
8	\N	Personal Website	2021	2022	A portfolio playground for showing my information and skillset	Creative website, integrate most interesting and cutting-edge technologies I learned recently	Incorporating dynamic data from local backend server and build up static website with NextJS, 3D layout with ThreeJS	2022-05-18 13:15:44.357135	2022-05-18 13:15:44.484558	https://github.com/hoang-phan/hoangphan-portfolio	
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY public.schema_migrations (version) FROM stdin;
20220405132345
20220405133049
20220406125631
20220405133259
20220516033037
20220516033038
20220516033039
20220516033040
20220516033041
20220516033042
20220516033043
\.


--
-- Data for Name: taggings; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY public.taggings (id, tag_id, taggable_type, taggable_id, tagger_type, tagger_id, context, created_at, tenant) FROM stdin;
2	2	Project	6	\N	\N	tags	2022-05-18 12:36:46.062973	\N
3	3	Project	6	\N	\N	tags	2022-05-18 12:36:46.078446	\N
4	4	Project	6	\N	\N	tags	2022-05-18 12:36:46.094295	\N
5	5	Project	6	\N	\N	tags	2022-05-18 12:36:46.109738	\N
6	6	Project	7	\N	\N	tags	2022-05-18 13:06:08.751395	\N
7	7	Project	7	\N	\N	tags	2022-05-18 13:06:08.76804	\N
8	8	Project	7	\N	\N	tags	2022-05-18 13:06:08.784222	\N
9	9	Project	7	\N	\N	tags	2022-05-18 13:06:09.776725	\N
10	10	Project	7	\N	\N	tags	2022-05-18 13:06:09.794981	\N
11	11	Project	8	\N	\N	tags	2022-05-18 13:15:44.407874	\N
12	12	Project	8	\N	\N	tags	2022-05-18 13:15:44.42354	\N
13	13	Project	8	\N	\N	tags	2022-05-18 13:15:44.440745	\N
14	5	Project	8	\N	\N	tags	2022-05-18 13:15:44.455988	\N
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: hoang
--

COPY public.tags (id, name, created_at, updated_at, taggings_count) FROM stdin;
1	https://github.com/hoang-phan/flappy_bird_ai	2022-05-18 12:34:55.679619	2022-05-18 12:34:55.679619	0
2	JS	2022-05-18 12:36:46.01152	2022-05-18 12:36:46.01152	1
3	Neural network	2022-05-18 12:36:46.01959	2022-05-18 12:36:46.01959	1
4	AI	2022-05-18 12:36:46.026546	2022-05-18 12:36:46.026546	1
6	Rails	2022-05-18 13:06:08.703443	2022-05-18 13:06:08.703443	1
7	Python	2022-05-18 13:06:08.710577	2022-05-18 13:06:08.710577	1
8	OpenCV	2022-05-18 13:06:08.718363	2022-05-18 13:06:08.718363	1
9	Tesseract	2022-05-18 13:06:08.725038	2022-05-18 13:06:08.725038	1
10	Algorithm	2022-05-18 13:06:08.733102	2022-05-18 13:06:08.733102	1
11	NextJS	2022-05-18 13:15:44.373318	2022-05-18 13:15:44.373318	1
12	ThreeJS	2022-05-18 13:15:44.379938	2022-05-18 13:15:44.379938	1
13	3D Animation	2022-05-18 13:15:44.386494	2022-05-18 13:15:44.386494	1
5	2D Animation	2022-05-18 12:36:46.03316	2022-05-18 12:36:46.03316	2
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hoang
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 6, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hoang
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 6, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hoang
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hoang
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hoang
--

SELECT pg_catalog.setval('public.companies_id_seq', 2, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hoang
--

SELECT pg_catalog.setval('public.projects_id_seq', 8, true);


--
-- Name: taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hoang
--

SELECT pg_catalog.setval('public.taggings_id_seq', 14, true);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hoang
--

SELECT pg_catalog.setval('public.tags_id_seq', 13, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: taggings taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: hoang
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: hoang
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: hoang
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: hoang
--

CREATE UNIQUE INDEX index_admin_users_on_email ON public.admin_users USING btree (email);


--
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: hoang
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON public.admin_users USING btree (reset_password_token);


--
-- Name: index_companies_on_from_year; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_companies_on_from_year ON public.companies USING btree (from_year);


--
-- Name: index_companies_on_to_year; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_companies_on_to_year ON public.companies USING btree (to_year);


--
-- Name: index_projects_on_company_id; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_projects_on_company_id ON public.projects USING btree (company_id);


--
-- Name: index_projects_on_from_year; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_projects_on_from_year ON public.projects USING btree (from_year);


--
-- Name: index_projects_on_to_year; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_projects_on_to_year ON public.projects USING btree (to_year);


--
-- Name: index_taggings_on_context; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_taggings_on_context ON public.taggings USING btree (context);


--
-- Name: index_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_taggings_on_tag_id ON public.taggings USING btree (tag_id);


--
-- Name: index_taggings_on_taggable_id; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_taggings_on_taggable_id ON public.taggings USING btree (taggable_id);


--
-- Name: index_taggings_on_taggable_type; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_taggings_on_taggable_type ON public.taggings USING btree (taggable_type);


--
-- Name: index_taggings_on_taggable_type_and_taggable_id; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_taggings_on_taggable_type_and_taggable_id ON public.taggings USING btree (taggable_type, taggable_id);


--
-- Name: index_taggings_on_tagger_id; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_taggings_on_tagger_id ON public.taggings USING btree (tagger_id);


--
-- Name: index_taggings_on_tagger_id_and_tagger_type; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_taggings_on_tagger_id_and_tagger_type ON public.taggings USING btree (tagger_id, tagger_type);


--
-- Name: index_taggings_on_tagger_type_and_tagger_id; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_taggings_on_tagger_type_and_tagger_id ON public.taggings USING btree (tagger_type, tagger_id);


--
-- Name: index_taggings_on_tenant; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX index_taggings_on_tenant ON public.taggings USING btree (tenant);


--
-- Name: index_tags_on_name; Type: INDEX; Schema: public; Owner: hoang
--

CREATE UNIQUE INDEX index_tags_on_name ON public.tags USING btree (name);


--
-- Name: taggings_idx; Type: INDEX; Schema: public; Owner: hoang
--

CREATE UNIQUE INDEX taggings_idx ON public.taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);


--
-- Name: taggings_idy; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX taggings_idy ON public.taggings USING btree (taggable_id, taggable_type, tagger_id, context);


--
-- Name: taggings_taggable_context_idx; Type: INDEX; Schema: public; Owner: hoang
--

CREATE INDEX taggings_taggable_context_idx ON public.taggings USING btree (taggable_id, taggable_type, context);


--
-- Name: projects fk_rails_44a549d7b3; Type: FK CONSTRAINT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT fk_rails_44a549d7b3 FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: taggings fk_rails_9fcd2e236b; Type: FK CONSTRAINT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT fk_rails_9fcd2e236b FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: hoang
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- PostgreSQL database dump complete
--

