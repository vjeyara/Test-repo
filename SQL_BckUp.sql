--
-- PostgreSQL database dump
--


--
-- TOC entry 177 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1973 (class 0 OID 0)
-- Dependencies: 177
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 176 (class 3079 OID 24613)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 1974 (class 0 OID 0)
-- Dependencies: 176
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 173 (class 1259 OID 24596)
-- Name: AD_DIM; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "AD_DIM" (
    ad_id character varying(20) NOT NULL,
    ad_name character varying,
    ad_payout_per_view integer
);


ALTER TABLE public."AD_DIM" OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 24581)
-- Name: SESSION_VIDEO_DETAIL; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "SESSION_VIDEO_DETAIL" (
    video_id character varying(20) NOT NULL,
    view_date date,
    view_flag character(3),
    like_flag character(3),
    dislike_flag character(3),
    ad_completion_flag character(3),
    ad_id character varying(20),
    session_id bigint NOT NULL
);


ALTER TABLE public."SESSION_VIDEO_DETAIL" OWNER TO postgres;

--
-- TOC entry 174 (class 1259 OID 24622)
-- Name: SESSION_VIDEO_DETAIL_session_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "SESSION_VIDEO_DETAIL_session_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SESSION_VIDEO_DETAIL_session_id_seq" OWNER TO postgres;

--
-- TOC entry 1975 (class 0 OID 0)
-- Dependencies: 174
-- Name: SESSION_VIDEO_DETAIL_session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "SESSION_VIDEO_DETAIL_session_id_seq" OWNED BY "SESSION_VIDEO_DETAIL".session_id;


--
-- TOC entry 172 (class 1259 OID 24590)
-- Name: USER_DIM; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "USER_DIM" (
    user_id character varying(20) NOT NULL,
    user_name character varying
);


ALTER TABLE public."USER_DIM" OWNER TO postgres;

--
-- TOC entry 171 (class 1259 OID 24584)
-- Name: VIDEO_DIM; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "VIDEO_DIM" (
    video_id character varying(20) NOT NULL,
    video_name character varying,
    uploaded_id character varying(20),
    category character varying(40)
);


ALTER TABLE public."VIDEO_DIM" OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 24898)
-- Name: VIDEO_MEASURES_TABLE; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "VIDEO_MEASURES_TABLE" (
    video_id character varying(20),
    view_count integer,
    like_count integer,
    dislike_count integer,
    ad_completion_count integer
);


ALTER TABLE public."VIDEO_MEASURES_TABLE" OWNER TO postgres;

--
-- TOC entry 1843 (class 2604 OID 24902)
-- Name: session_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SESSION_VIDEO_DETAIL" ALTER COLUMN session_id SET DEFAULT nextval('"SESSION_VIDEO_DETAIL_session_id_seq"'::regclass);


--
-- TOC entry 1962 (class 0 OID 24596)
-- Dependencies: 173
-- Data for Name: AD_DIM; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "AD_DIM" (ad_id, ad_name, ad_payout_per_view) VALUES ('1MU', 'Nike', 30);
INSERT INTO "AD_DIM" (ad_id, ad_name, ad_payout_per_view) VALUES ('6AA', 'Alaska Airlines', 10);
INSERT INTO "AD_DIM" (ad_id, ad_name, ad_payout_per_view) VALUES ('1AD', 'Adidas', 20);
INSERT INTO "AD_DIM" (ad_id, ad_name, ad_payout_per_view) VALUES ('4ZZ', 'Zappo', 15);
INSERT INTO "AD_DIM" (ad_id, ad_name, ad_payout_per_view) VALUES ('9HJ', 'Burger Kind', 20);
INSERT INTO "AD_DIM" (ad_id, ad_name, ad_payout_per_view) VALUES ('30C', 'American Eagle', 10);
INSERT INTO "AD_DIM" (ad_id, ad_name, ad_payout_per_view) VALUES ('40C', 'Lenova', 20);
INSERT INTO "AD_DIM" (ad_id, ad_name, ad_payout_per_view) VALUES ('AAK', 'Bud', 15);
INSERT INTO "AD_DIM" (ad_id, ad_name, ad_payout_per_view) VALUES ('T3A', 'Exon', 20);
INSERT INTO "AD_DIM" (ad_id, ad_name, ad_payout_per_view) VALUES ('ASD', 'Costco', 15);


--
-- TOC entry 1959 (class 0 OID 24581)
-- Dependencies: 170
-- Data for Name: SESSION_VIDEO_DETAIL; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('33', '2014-08-11', 'Y  ', 'N  ', 'N  ', 'Y  ', '1MU', 8);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('11', '2014-08-11', 'Y  ', 'Y  ', 'N  ', 'N  ', '6AA', 9);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('01', '2014-08-11', 'Y  ', 'Y  ', 'N  ', 'Y  ', '1MU', 10);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('44', '2014-08-11', 'Y  ', 'N  ', 'Y  ', 'N  ', '1AD', 11);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('33', '2014-08-11', 'Y  ', 'N  ', 'Y  ', 'Y  ', '4ZZ', 12);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('33', '2014-08-11', 'Y  ', 'N  ', 'Y  ', 'Y  ', '1MU', 13);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('01', '2014-08-11', 'Y  ', 'N  ', 'Y  ', 'Y  ', 'TSA', 14);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('01', '2014-08-11', 'Y  ', 'Y  ', 'N  ', 'Y  ', '1MU', 15);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('31', '2014-08-11', 'Y  ', 'Y  ', 'N  ', 'Y  ', '9HJ', 16);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('49', '2014-08-11', 'Y  ', 'Y  ', 'N  ', 'Y  ', 'ASD', 17);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('71', '2014-08-11', 'Y  ', 'Y  ', 'N  ', 'Y  ', '30C', 18);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('11', '2014-08-11', 'Y  ', 'N  ', 'N  ', 'Y  ', '30C', 19);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('01', '2014-08-11', 'Y  ', 'N  ', 'N  ', 'Y  ', '30C', 20);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('44', '2014-08-11', 'Y  ', 'N  ', 'Y  ', 'N  ', '4ZZ', 21);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('71', '2014-08-11', 'Y  ', 'N  ', 'Y  ', 'N  ', '4ZZ', 22);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('49', '2014-08-11', 'Y  ', 'N  ', 'N  ', 'N  ', '1MU', 23);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('49', '2014-08-11', 'Y  ', 'N  ', 'N  ', 'N  ', '6AA', 24);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('49', '2014-08-11', 'Y  ', 'N  ', 'N  ', 'N  ', '9HJ', 25);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('40', '2014-08-11', 'Y  ', 'N  ', 'N  ', 'N  ', 'AAK', 26);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('22', '2014-08-11', 'Y  ', 'N  ', 'N  ', 'Y  ', 'AAK', 27);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('22', '2014-08-11', 'Y  ', 'N  ', 'Y  ', 'Y  ', '40C', 28);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('30', '2014-08-11', 'Y  ', 'Y  ', 'N  ', 'Y  ', '40C', 29);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('30', '2014-08-11', 'Y  ', 'Y  ', 'N  ', 'Y  ', '9HJ', 30);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('46', '2014-08-11', 'Y  ', 'Y  ', 'N  ', 'N  ', '30C', 31);
INSERT INTO "SESSION_VIDEO_DETAIL" (video_id, view_date, view_flag, like_flag, dislike_flag, ad_completion_flag, ad_id, session_id) VALUES ('46', '2014-08-11', 'Y  ', 'Y  ', 'N  ', 'N  ', 'TSA', 32);



--
-- TOC entry 1976 (class 0 OID 0)
-- Dependencies: 174
-- Name: SESSION_VIDEO_DETAIL_session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"SESSION_VIDEO_DETAIL_session_id_seq"', 4, true);


--
-- TOC entry 1961 (class 0 OID 24590)
-- Dependencies: 172
-- Data for Name: USER_DIM; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "USER_DIM" (user_id, user_name) VALUES ('brazil21', 'Eduardo silva');
INSERT INTO "USER_DIM" (user_id, user_name) VALUES ('crazy1', 'walter white');
INSERT INTO "USER_DIM" (user_id, user_name) VALUES ('metaldust', 'John Chester');
INSERT INTO "USER_DIM" (user_id, user_name) VALUES ('joker', 'Heath Reamer');
INSERT INTO "USER_DIM" (user_id, user_name) VALUES ('beckham23', 'John Beckham');
INSERT INTO "USER_DIM" (user_id, user_name) VALUES ('muscle1', 'Mike Martin');
INSERT INTO "USER_DIM" (user_id, user_name) VALUES ('1lamb', 'David Lamb');
INSERT INTO "USER_DIM" (user_id, user_name) VALUES ('meglued', 'Ram Prasad');
INSERT INTO "USER_DIM" (user_id, user_name) VALUES ('kelly88', 'Kelly Ross');
INSERT INTO "USER_DIM" (user_id, user_name) VALUES ('markmav', 'Mark Cuban');
INSERT INTO "USER_DIM" (user_id, user_name) VALUES ('Jam2', 'Ed Stein');


--
-- TOC entry 1960 (class 0 OID 24584)
-- Dependencies: 171
-- Data for Name: VIDEO_DIM; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "VIDEO_DIM" (video_id, video_name, uploaded_id, category) VALUES ('33', 'world cup highlights', 'brazil21', 'sports');
INSERT INTO "VIDEO_DIM" (video_id, video_name, uploaded_id, category) VALUES ('11', 'best banter', 'crazy1', 'commedy');
INSERT INTO "VIDEO_DIM" (video_id, video_name, uploaded_id, category) VALUES ('01', 'best of vines', 'crazy1', 'commedy');
INSERT INTO "VIDEO_DIM" (video_id, video_name, uploaded_id, category) VALUES ('44	', 'crazy train', 'metaldust', 'music');
INSERT INTO "VIDEO_DIM" (video_id, video_name, uploaded_id, category) VALUES ('31', 'batman vs superman trailer', 'joker', 'movies');
INSERT INTO "VIDEO_DIM" (video_id, video_name, uploaded_id, category) VALUES ('40', 'soccer skills', 'beckham23', 'sports');
INSERT INTO "VIDEO_DIM" (video_id, video_name, uploaded_id, category) VALUES ('49', 'abs workout', 'muscle1', 'activity');
INSERT INTO "VIDEO_DIM" (video_id, video_name, uploaded_id, category) VALUES ('71', 'billboard 2014 hits', '1lamb', 'music');
INSERT INTO "VIDEO_DIM" (video_id, video_name, uploaded_id, category) VALUES ('22', 'F1 best races', 'meglued', 'sports');
INSERT INTO "VIDEO_DIM" (video_id, video_name, uploaded_id, category) VALUES ('46', 'wolvernies trailer', 'joker', 'movies');
INSERT INTO "VIDEO_DIM" (video_id, video_name, uploaded_id, category) VALUES ('30', 'postgre tutorial', 'meglued', 'educational');


--
-- TOC entry 1964 (class 0 OID 24898)
-- Dependencies: 175
-- Data for Name: VIDEO_MEASURES_TABLE; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 1845 (class 2606 OID 24626)
-- Name: SESSION_VIDEO_DETAIL_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "SESSION_VIDEO_DETAIL"
    ADD CONSTRAINT "SESSION_VIDEO_DETAIL_pkey" PRIMARY KEY (session_id);


--
-- TOC entry 1851 (class 2606 OID 24606)
-- Name: ad_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "AD_DIM"
    ADD CONSTRAINT ad_id PRIMARY KEY (ad_id);


--
-- TOC entry 1849 (class 2606 OID 24608)
-- Name: user_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "USER_DIM"
    ADD CONSTRAINT user_id PRIMARY KEY (user_id);


--
-- TOC entry 1847 (class 2606 OID 24610)
-- Name: video_id; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "VIDEO_DIM"
    ADD CONSTRAINT video_id PRIMARY KEY (video_id);


--
-- TOC entry 1972 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2014-08-13 00:12:49

--
-- PostgreSQL database dump complete
--


;;;