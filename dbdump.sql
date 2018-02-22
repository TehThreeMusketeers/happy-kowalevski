--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: accounts_user; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE accounts_user (
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    id uuid NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    gender character varying(1) NOT NULL,
    confirmed_email boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    activation_key uuid NOT NULL,
    date_updated timestamp with time zone NOT NULL,
    access_token character varying(50) NOT NULL,
    refresh_token character varying(50) NOT NULL
);


ALTER TABLE accounts_user OWNER TO djangoreactredux;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO djangoreactredux;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO djangoreactredux;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO djangoreactredux;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO djangoreactredux;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO djangoreactredux;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO djangoreactredux;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: devices_amblightreading; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_amblightreading (
    id integer NOT NULL,
    value double precision NOT NULL,
    date timestamp with time zone NOT NULL,
    device_id integer NOT NULL
);


ALTER TABLE devices_amblightreading OWNER TO djangoreactredux;

--
-- Name: devices_amblightreading_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_amblightreading_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_amblightreading_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_amblightreading_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_amblightreading_id_seq OWNED BY devices_amblightreading.id;


--
-- Name: devices_device; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_device (
    id integer NOT NULL,
    "deviceId" character varying(50) NOT NULL,
    date timestamp with time zone NOT NULL,
    "deviceType_id" integer NOT NULL,
    user_id uuid NOT NULL,
    "deviceName" character varying(50),
    group_id integer
);


ALTER TABLE devices_device OWNER TO djangoreactredux;

--
-- Name: devices_device_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_device_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_device_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_device_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_device_id_seq OWNED BY devices_device.id;


--
-- Name: devices_deviceevent; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_deviceevent (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    device_id integer NOT NULL,
    trigger_id integer NOT NULL
);


ALTER TABLE devices_deviceevent OWNER TO djangoreactredux;

--
-- Name: devices_deviceevent_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_deviceevent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_deviceevent_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_deviceevent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_deviceevent_id_seq OWNED BY devices_deviceevent.id;


--
-- Name: devices_devicegroup; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_devicegroup (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(140),
    user_id uuid NOT NULL,
    "groupType_id" integer NOT NULL,
    state_id integer NOT NULL
);


ALTER TABLE devices_devicegroup OWNER TO djangoreactredux;

--
-- Name: devices_devicegroup_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_devicegroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_devicegroup_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_devicegroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_devicegroup_id_seq OWNED BY devices_devicegroup.id;


--
-- Name: devices_devicegrouptrigger; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_devicegrouptrigger (
    id integer NOT NULL,
    value character varying(50) NOT NULL,
    group_id integer NOT NULL,
    operator_id integer NOT NULL,
    valuetype_id integer NOT NULL
);


ALTER TABLE devices_devicegrouptrigger OWNER TO djangoreactredux;

--
-- Name: devices_devicegrouptrigger_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_devicegrouptrigger_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_devicegrouptrigger_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_devicegrouptrigger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_devicegrouptrigger_id_seq OWNED BY devices_devicegrouptrigger.id;


--
-- Name: devices_devicegrouptriggerlocalaction; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_devicegrouptriggerlocalaction (
    id integer NOT NULL,
    trigger_id integer NOT NULL,
    function character varying(50) NOT NULL,
    funcname character varying
);


ALTER TABLE devices_devicegrouptriggerlocalaction OWNER TO djangoreactredux;

--
-- Name: devices_devicegrouptriggerlocalaction_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_devicegrouptriggerlocalaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_devicegrouptriggerlocalaction_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_devicegrouptriggerlocalaction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_devicegrouptriggerlocalaction_id_seq OWNED BY devices_devicegrouptriggerlocalaction.id;


--
-- Name: devices_devicegrouptriggeroperator; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_devicegrouptriggeroperator (
    id integer NOT NULL,
    operator character varying(2) NOT NULL
);


ALTER TABLE devices_devicegrouptriggeroperator OWNER TO djangoreactredux;

--
-- Name: devices_devicegrouptriggeroperator_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_devicegrouptriggeroperator_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_devicegrouptriggeroperator_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_devicegrouptriggeroperator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_devicegrouptriggeroperator_id_seq OWNED BY devices_devicegrouptriggeroperator.id;


--
-- Name: devices_devicegrouptype; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_devicegrouptype (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE devices_devicegrouptype OWNER TO djangoreactredux;

--
-- Name: devices_devicegrouptype_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_devicegrouptype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_devicegrouptype_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_devicegrouptype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_devicegrouptype_id_seq OWNED BY devices_devicegrouptype.id;


--
-- Name: devices_devicegrouptypestate; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_devicegrouptypestate (
    id integer NOT NULL,
    state character varying(50) NOT NULL,
    devicegrouptype_id integer NOT NULL
);


ALTER TABLE devices_devicegrouptypestate OWNER TO djangoreactredux;

--
-- Name: devices_devicegrouptypestate_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_devicegrouptypestate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_devicegrouptypestate_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_devicegrouptypestate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_devicegrouptypestate_id_seq OWNED BY devices_devicegrouptypestate.id;


--
-- Name: devices_devicegrouptypevariable; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_devicegrouptypevariable (
    id integer NOT NULL,
    variable character varying(50) NOT NULL,
    devicegrouptype_id integer NOT NULL,
    "variableType" character varying(50) NOT NULL
);


ALTER TABLE devices_devicegrouptypevariable OWNER TO djangoreactredux;

--
-- Name: devices_devicegrouptypevariable_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_devicegrouptypevariable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_devicegrouptypevariable_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_devicegrouptypevariable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_devicegrouptypevariable_id_seq OWNED BY devices_devicegrouptypevariable.id;


--
-- Name: devices_devicetype; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_devicetype (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(140),
    "firmwareVersion" integer NOT NULL
);


ALTER TABLE devices_devicetype OWNER TO djangoreactredux;

--
-- Name: devices_devicetype_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_devicetype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_devicetype_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_devicetype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_devicetype_id_seq OWNED BY devices_devicetype.id;


--
-- Name: devices_devicetypefunc; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_devicetypefunc (
    id integer NOT NULL,
    "funcName" character varying(50) NOT NULL
);


ALTER TABLE devices_devicetypefunc OWNER TO djangoreactredux;

--
-- Name: devices_devicetypefunc_devicetype; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_devicetypefunc_devicetype (
    id integer NOT NULL,
    devicetypefunc_id integer NOT NULL,
    devicetype_id integer NOT NULL
);


ALTER TABLE devices_devicetypefunc_devicetype OWNER TO djangoreactredux;

--
-- Name: devices_devicetypefunc_devicetype_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_devicetypefunc_devicetype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_devicetypefunc_devicetype_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_devicetypefunc_devicetype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_devicetypefunc_devicetype_id_seq OWNED BY devices_devicetypefunc_devicetype.id;


--
-- Name: devices_devicetypefunc_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_devicetypefunc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_devicetypefunc_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_devicetypefunc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_devicetypefunc_id_seq OWNED BY devices_devicetypefunc.id;


--
-- Name: devices_humreading; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_humreading (
    id integer NOT NULL,
    value double precision NOT NULL,
    date timestamp with time zone NOT NULL,
    device_id integer NOT NULL
);


ALTER TABLE devices_humreading OWNER TO djangoreactredux;

--
-- Name: devices_humreading_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_humreading_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_humreading_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_humreading_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_humreading_id_seq OWNED BY devices_humreading.id;


--
-- Name: devices_movementreading; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_movementreading (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    device_id integer NOT NULL
);


ALTER TABLE devices_movementreading OWNER TO djangoreactredux;

--
-- Name: devices_movementreading_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_movementreading_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_movementreading_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_movementreading_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_movementreading_id_seq OWNED BY devices_movementreading.id;


--
-- Name: devices_tempreading; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE devices_tempreading (
    id integer NOT NULL,
    value double precision NOT NULL,
    date timestamp with time zone NOT NULL,
    device_id integer NOT NULL
);


ALTER TABLE devices_tempreading OWNER TO djangoreactredux;

--
-- Name: devices_tempreading_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE devices_tempreading_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE devices_tempreading_id_seq OWNER TO djangoreactredux;

--
-- Name: devices_tempreading_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE devices_tempreading_id_seq OWNED BY devices_tempreading.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id uuid NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO djangoreactredux;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO djangoreactredux;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO djangoreactredux;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO djangoreactredux;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO djangoreactredux;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: djangoreactredux
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO djangoreactredux;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: djangoreactredux
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO djangoreactredux;

--
-- Name: knox_authtoken; Type: TABLE; Schema: public; Owner: djangoreactredux
--

CREATE TABLE knox_authtoken (
    digest character varying(128) NOT NULL,
    salt character varying(16) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id uuid NOT NULL,
    expires timestamp with time zone,
    token_key character varying(8) NOT NULL
);


ALTER TABLE knox_authtoken OWNER TO djangoreactredux;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: devices_amblightreading id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_amblightreading ALTER COLUMN id SET DEFAULT nextval('devices_amblightreading_id_seq'::regclass);


--
-- Name: devices_device id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_device ALTER COLUMN id SET DEFAULT nextval('devices_device_id_seq'::regclass);


--
-- Name: devices_deviceevent id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_deviceevent ALTER COLUMN id SET DEFAULT nextval('devices_deviceevent_id_seq'::regclass);


--
-- Name: devices_devicegroup id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegroup ALTER COLUMN id SET DEFAULT nextval('devices_devicegroup_id_seq'::regclass);


--
-- Name: devices_devicegrouptrigger id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptrigger ALTER COLUMN id SET DEFAULT nextval('devices_devicegrouptrigger_id_seq'::regclass);


--
-- Name: devices_devicegrouptriggerlocalaction id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptriggerlocalaction ALTER COLUMN id SET DEFAULT nextval('devices_devicegrouptriggerlocalaction_id_seq'::regclass);


--
-- Name: devices_devicegrouptriggeroperator id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptriggeroperator ALTER COLUMN id SET DEFAULT nextval('devices_devicegrouptriggeroperator_id_seq'::regclass);


--
-- Name: devices_devicegrouptype id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptype ALTER COLUMN id SET DEFAULT nextval('devices_devicegrouptype_id_seq'::regclass);


--
-- Name: devices_devicegrouptypestate id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptypestate ALTER COLUMN id SET DEFAULT nextval('devices_devicegrouptypestate_id_seq'::regclass);


--
-- Name: devices_devicegrouptypevariable id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptypevariable ALTER COLUMN id SET DEFAULT nextval('devices_devicegrouptypevariable_id_seq'::regclass);


--
-- Name: devices_devicetype id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicetype ALTER COLUMN id SET DEFAULT nextval('devices_devicetype_id_seq'::regclass);


--
-- Name: devices_devicetypefunc id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicetypefunc ALTER COLUMN id SET DEFAULT nextval('devices_devicetypefunc_id_seq'::regclass);


--
-- Name: devices_devicetypefunc_devicetype id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicetypefunc_devicetype ALTER COLUMN id SET DEFAULT nextval('devices_devicetypefunc_devicetype_id_seq'::regclass);


--
-- Name: devices_humreading id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_humreading ALTER COLUMN id SET DEFAULT nextval('devices_humreading_id_seq'::regclass);


--
-- Name: devices_movementreading id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_movementreading ALTER COLUMN id SET DEFAULT nextval('devices_movementreading_id_seq'::regclass);


--
-- Name: devices_tempreading id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_tempreading ALTER COLUMN id SET DEFAULT nextval('devices_tempreading_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: accounts_user; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY accounts_user (password, last_login, is_superuser, id, first_name, last_name, email, gender, confirmed_email, is_staff, is_active, date_joined, activation_key, date_updated, access_token, refresh_token) FROM stdin;
pbkdf2_sha256$20000$fSnaTbagnHiD$lZ5k1ZHDNM4oZir2IrWIrcRh0bEh4wYu+uuhh4ZZ9ZQ=	2015-12-29 00:57:23.201+00	t	7c32d60d-6312-42f6-a73a-22da56b07374	FirstName	LastName	a@a.com	M	f	t	t	2015-12-29 00:57:23.201+00	64f5b041-81ed-4251-bf62-54b9c0a14848	2015-12-29 00:57:23.201+00		
pbkdf2_sha256$36000$Qyv5qZgDmlPV$41d1qn16wAMKho0CQ+UrV5xHMQ4koNmDnVwJktg7JsM=	\N	f	c4bf092a-4398-4cae-9958-5924c4b69659	billy	bob	what@blah123.com	M	f	f	t	2018-02-08 19:57:51.258764+00	ad26a81c-a1c1-4f13-9f44-ca1d181b6b3a	2018-02-08 19:57:51.47939+00	a3cf98d7e3741c39381f86680c1456ba6ceca3ba	d9024f3c6f25a5222347ed0202bac5b4cf994f1d
pbkdf2_sha256$36000$BBDlWim9b1ti$U847VW+pwPCMTxXEzhdIvj+uVJBlaMM4O5nWDZrUdYU=	\N	f	f513414b-02ee-4c1d-b27a-ff5af6ea8155	bubble	cat	awesome@email.com	M	f	f	t	2018-02-10 12:54:43.887352+00	5bdb036a-2154-4380-aa3c-aa3d370f01a3	2018-02-10 12:54:43.953264+00	8c32a04605d74ef84f77b7a5001978eb7ecf886d	52fe75d5e584d2aaa3ad0362216b01147394f255
pbkdf2_sha256$36000$AJw9wIKHzSaW$w+cee7yxcYSPFxV/VnfSZSi8V248IWAkT83VNsGwAXY=	\N	f	0a565f30-6822-4168-8ce9-c0c5bccfbe0c	George	Anderson	george@anderson.com	M	f	f	t	2018-02-11 12:50:23.218043+00	34c2d17f-adce-428c-8b8c-90569163f973	2018-02-11 12:50:23.293397+00	2f82bebdc2de49d1dc42d7d2c61ff2c2139d8811	f6371849ff93dcf2f1745b1d1e7978a850858870
password	\N	f	a88f34b2-e123-4123-b90e-ab1377accbba	George	Anderson	sick1@email.com	M	f	f	t	2018-01-30 21:25:45.592585+00	e493f5f0-729f-47b9-9741-9d4ff36b511f	2018-01-30 21:25:45.592612+00	blah	bah
password	\N	f	958f7294-7fcb-4deb-828f-5c17dc22c1e6	George	Anderson	sexy@sex.com	M	f	f	t	2018-01-30 21:44:51.675679+00	a96dcb97-7bf5-41f9-838e-4b59d260100f	2018-01-30 21:44:51.675706+00	blah	bah
password	\N	f	8ca6efab-9f2b-47ce-bbcf-7e355c9dcc84	Orber	Jesus	orber@email.com	M	f	f	t	2018-01-31 13:37:09.888178+00	a2bfe327-643d-448d-9bf5-3c93b3cb5e1e	2018-01-31 13:37:09.8882+00	blah	bah
password	\N	f	80f9e214-743a-41a7-a079-9051089baae9	George	Anderson	sexy@sex1.com	M	f	f	t	2018-01-31 16:06:48.560254+00	0211f14b-cd11-4621-a53d-1a6eb45e9a8d	2018-01-31 16:06:48.560281+00	blah	bah
password	\N	f	228b4a2c-79c8-47e7-8151-7b85d2f0dfc2	Orber	Soaresasdasd	asdasd@asdad.com	M	f	f	t	2018-01-31 22:07:14.533079+00	4fb9332c-357c-4a26-b860-4f9737ea0ae4	2018-01-31 22:07:14.533101+00	blah	bah
password	\N	f	b58f0e0c-78fd-4a51-954b-6d55ae148103	abcd	abcd	abcd@abcd.com	M	f	f	t	2018-01-31 22:15:28.972426+00	0be0e952-6829-4a72-9271-ab95f8b42bc5	2018-01-31 22:15:28.972451+00	blah	bah
password	\N	f	1bc620ea-1a89-4070-92fc-112f317d8603	abcd	abcd	abccd@abcd.com	M	f	f	t	2018-01-31 22:32:16.225177+00	750e2dd6-375b-422d-b450-9457a6b4ed02	2018-01-31 22:32:16.225201+00	blah	bah
password	\N	f	53eafd41-4344-4e93-b6aa-68a1ed0ef592	Abcd	Abcd	abcccd@abcd.com	M	f	f	t	2018-01-31 22:52:38.417723+00	0a997c43-470a-4fd6-a0a4-cb068e462547	2018-01-31 22:52:38.417748+00	blah	bah
password	\N	f	01089cb4-a88c-4cd3-b6c6-3f77af7030b3	Abcd	Abcd	abcdd@hotmail.com	M	f	f	t	2018-01-31 23:07:29.076273+00	ffec9d93-310e-4944-9097-aca6bcb9a9c8	2018-01-31 23:07:29.076297+00	blah	bah
password	\N	f	1583f87f-1e0e-4af3-9430-81be43689eeb	Orber	Jesus	orbser@email.com	M	f	f	t	2018-01-31 23:10:52.066273+00	906c4aa6-47a5-4d21-be65-a3b568c9a6ad	2018-01-31 23:10:52.066293+00	blah	bah
password	\N	f	a577571e-523c-43a9-8b3f-de7e556fa814	Orber	Orber	orber@hotmails.com	M	f	f	t	2018-01-31 23:28:55.069191+00	1f55034f-c9e7-4e50-a55d-9c48240c30ed	2018-01-31 23:28:55.069218+00	blah	bah
password	\N	f	01ce92a3-ec68-477a-82d4-6973346f9def	Orber	Orber	orber@hi.com	M	f	f	t	2018-01-31 23:30:57.364588+00	5e811868-adb9-4cd8-9123-53d743e96a6a	2018-01-31 23:30:57.364612+00	blah	bah
password	\N	f	2c9cc20a-32fc-4edb-9172-4043ef179515	Orber	Orber	hi@bye.com	M	f	f	t	2018-01-31 23:32:37.6653+00	e4eeeec4-52dc-4302-b632-17d0229b5121	2018-01-31 23:32:37.665321+00	blah	bah
password	\N	f	60c44efe-c6c6-4bf5-a699-82ec150a4bd9	123	123	123@123.com	M	f	f	t	2018-01-31 23:44:03.902325+00	8967ba32-4f3b-4809-8a0e-a4214e452bd3	2018-01-31 23:44:03.902346+00	blah	bah
1	\N	f	acf2441d-790d-4906-a368-a1376ff49cf4	1	1	1@1.com	M	f	f	t	2018-01-31 23:48:59.48948+00	1c74ca8d-86c8-443a-97b0-7cff8f3a58ca	2018-01-31 23:48:59.489502+00	blah	bah
password	\N	f	9da65aae-fe81-4361-abaa-394fb5c87ad5	2	22	222@222.com	M	f	f	t	2018-01-31 23:58:21.099153+00	f94c4744-3c59-4af6-9ef2-a226c80d9444	2018-01-31 23:58:21.099197+00	blah	bah
password	\N	f	4e0c2a19-2b1e-4d7c-b5f4-aa04e27ae4ef	333	333	333@333.com	M	f	f	t	2018-02-01 00:02:10.406894+00	f84502f5-4fea-4027-b7c9-fa388cf65eb2	2018-02-01 00:02:10.406919+00	blah	bah
pbkdf2_sha256$36000$DCqaQt1xPeez$W92boNDz4NhaU6/uxqjbVAOXiUhbgqY6twjKgech9Ss=	\N	f	17102244-d489-43a1-a039-c306629318ec	the	dude	super@email.com	M	f	f	t	2018-02-01 10:36:51.805123+00	73ee831c-124a-4c63-8418-915219f7a911	2018-02-01 10:36:51.84213+00	42ddea29a7373418cd53a01bd56b774dd2717a4a	5ea8809ee499dccbd762fd99e217971c6b32c46a
pbkdf2_sha256$36000$exe46qlhbseH$mWw4ok2kBiXw4+ABGlYLb3jiQYpW5NOZkJlJPmDUKEk=	\N	f	22ffee70-1949-4c39-af2f-250a73932138	the	dude	best111@email.com	M	f	f	t	2018-02-01 11:55:43.351946+00	f9770c91-21a4-4629-bf00-dec8a03b64b1	2018-02-01 11:55:43.450614+00	e747313f9acac39a8318ba5a5276f5dab9025f2d	8c313930fa105aafc703ea1a99930bf4f5bf84e4
pbkdf2_sha256$36000$kw7ruea2o68h$2BkrLGX/ZU8l/rvRiD0mgjDmERjTMgSfEBRILvuHEY8=	\N	f	19768bab-08da-431a-945d-0150beb8a137	test	mctest	kolevv@protonmail.com	M	f	f	t	2018-02-01 13:30:27.92093+00	930677c0-2ce9-45ad-993f-5e2e3e4e1d64	2018-02-01 13:30:27.958002+00	01bdbaa839d80f4559237549da1c442de126aa3d	5a9dd1971b14848ac210afe8c42cdcbe130dc0fa
pbkdf2_sha256$36000$FpG24eaNcgZQ$1dFD9iamBpQ5pjB1zq6VXr8H5SfjJERBLj6fghOLlRc=	\N	f	65ee0594-6d5f-4b0d-bf8c-78c7b92775e3	demo	demo	nomad519@abv.bg	M	f	f	t	2018-02-01 13:38:28.361597+00	34a83181-a026-47fb-a545-53eea539603e	2018-02-01 13:38:28.398703+00	a08db898d493523093a7471df8298b3297f836ca	34b4348239de0ee7db1da5aeb7f1652d0286ebd6
pbkdf2_sha256$36000$4l5OxiuM7d7W$CsdEsFUGVrUXA6j+jssO8BMDylmGh3YVPV5DXzlkMdc=	\N	f	3afd7691-173e-45f4-99ec-f1a9a68354de	the	dude	best1131@email.com	M	f	f	t	2018-02-01 14:30:02.070603+00	cdb9f95e-2f42-4350-9db2-72a5b303bf19	2018-02-01 14:30:02.1101+00	d4bbfc615372798929b6eff74ac1275275093bc8	34255845ce6c1964ad991a501c47ff94c0f5fd50
pbkdf2_sha256$36000$0Y77kecAt1Eu$+PeWkRWAkr9ojybpxSypHUXu0A7Yj7L+j9/0SfMLPFc=	\N	f	cb33f9b2-75b1-48e6-bf62-7d57ad2d0008	rrkrjfj	jdjgn	kale@gmail.com	M	f	f	t	2018-02-01 14:36:27.139297+00	d63c6a72-9954-4ed5-83f8-3091ef604fe6	2018-02-01 14:36:27.17801+00	5f4f108f550079c946c1753e85ae3601163a531b	588af6e0d684e9f0287da4e9c6e9f3fd7975b518
pbkdf2_sha256$36000$4PWlcx3byqMp$unzL6Kz5by5FuuhK/L+V4KrCdRfh47+NXZGr+bQyjhw=	\N	f	7334b038-a02b-4f40-9b78-f300d7a49c60	Orber	Soeares	orber@west.com	M	f	f	t	2018-02-04 10:32:08.659269+00	4f5107fb-1fc2-4354-985e-fca84707d7b6	2018-02-04 10:32:08.697606+00	44d6168a108e3b3fa55380f9eedf4a902e97b248	3eb630dd1c98c5df82557381cfc0a8a241ef1f83
pbkdf2_sha256$36000$YKTNlpVaRc2R$I+EymE1rzVCo7zgFRQls2iLSFq1HEIxU7gCoHBrLst0=	\N	f	f159ac6a-2999-4cf3-a4cb-4cdcbcb00594	Orber	Jesus	rebro@email.com	M	f	f	t	2018-02-04 12:22:40.741609+00	5a24c26b-0af6-45c1-b5c9-18fe87ae5c01	2018-02-04 12:22:40.779963+00	de2cf7219093b81d1ef7e167a3a258d89fa52ecb	957c3aaecac79aaf920a41dda645ed57fae18454
pbkdf2_sha256$36000$w0eKfTd8Uxjp$C1oBP3QQQpzjfCUX2h8oRks0ce6N+u+7lnz/dae29JI=	\N	f	564974ae-251b-46c3-b1af-f7767e608276	Hello	World	hello@world.com	M	f	f	t	2018-02-04 16:44:02.355291+00	0d62d905-a3a8-49c0-983a-40432b39204d	2018-02-04 16:44:02.394208+00	79b87c850d4e22443f290c201b72636478357f3d	933dcafeb1b207e0c209cfb04fde430a9693e5b2
pbkdf2_sha256$36000$FNqpVA8w7KGl$YURiRM1FlLIGXQa+B7wzbRKn/jIqCfhVvIhVSg0xhUU=	\N	f	c3a99af0-3784-45a6-a079-048c2919b0c9	Foo	Bar	foo@bar.com	M	f	f	t	2018-02-04 20:23:41.921637+00	0d11c0ed-6ff7-4e63-a379-c1db197f94e6	2018-02-04 20:23:41.959638+00	ea578066ccbe23e19645164a176bd08fd6b76178	d23cc940cf185c5f9f346dccc4a477c2914d48f9
pbkdf2_sha256$36000$E2WkcCakOM8x$9gk2CbjXC8FPKVeLCoFOQrgI+jLfPZsdOS/ISF5VORE=	\N	f	b28714ee-021d-40d3-8afb-c2076ca4061b	mmmm	mmmm	blunt@gmail.com	M	f	f	t	2018-02-05 16:35:43.211502+00	ea66474e-e56a-4998-9106-434a0fbc4182	2018-02-05 16:35:43.248907+00	b1c9f7bcfd58f62e517f7ae143e2558a1b995f66	4a1b92346b918a6d6569a41bedd373e7936b04b2
pbkdf2_sha256$36000$3N0iIW7bzNSX$nvwVAOP513DAsShAwhmNJgevu9O5ek52mJnWfpI342Y=	\N	f	473ae343-ec98-4b63-b6a7-2b0a725083b5	rooster	rooster	rooster@gmail.com	M	f	f	t	2018-02-06 17:47:18.420913+00	8a9f5d07-76b9-468c-8773-bdb28204edc1	2018-02-06 17:47:18.460088+00	e3f9019e48eb1242c38aba9823b30b4a9e53ed50	df6eb809c95d4bfc1eb730d7bfb080e9a886c06d
pbkdf2_sha256$36000$gO1XebtAUGML$lHe/b4acpSGHmamIwSJ2yN4MarhVeZ4e/ZE8iXAdeSk=	\N	f	7e495599-9400-4ede-840c-2de96a2390b1	Bar	Foo	bar@foo.com	M	f	f	t	2018-02-07 00:12:36.507573+00	9902e68c-4a68-4418-b561-8d486e3a696c	2018-02-07 00:12:36.576867+00	404655aef059cedf5e5efd3c11d46ee0cb4dcc0c	88ffd266b26ea5954386dab9d97ff9479127d1a6
pbkdf2_sha256$36000$WY1hFnRaZNXE$CzJs6UqlpkNLetxpufLLtNVkB75zXinFKkC04WcQTQs=	\N	f	1db5836b-7167-43fc-81b2-1c38751c39ab	Citizen	Four	snowden@gmail.com	M	f	f	t	2018-02-08 14:56:20.875397+00	135a2d7f-37ac-4311-a255-44306527ce66	2018-02-08 14:56:20.913449+00	786436ff9fa5fd74a147c07ff02894ffbb87e77b	57305ec03c87879286b58c25abff1310300c9d57
pbkdf2_sha256$36000$gmRzJ0bkZ4kA$kd79H0YI2+98k4Q3ypoUjJt53wI7N47CDwHXPJfi3bU=	\N	f	143b1fa2-1261-413b-aed9-6f4a60b8ddaf	end	mylife	end@gmail.com	M	f	f	t	2018-02-08 15:32:05.491995+00	db1ec11e-ef57-4fd1-896b-61ad36dcf4c4	2018-02-08 15:32:05.530474+00	56d442bd96d9414ae87922a76036ebefe8f0792e	da519c45100be6e511d912df5100c071ffa6ea5a
pbkdf2_sha256$36000$6IrjJQiFNwud$TotQ7VjyRcRx1kN2W+0R3M4NDdcm3UIfJVE7UVvGcfE=	\N	f	7ce7e75f-6285-488e-a285-a3dc3d5098da	dot	dot	dot@gmail.com	M	f	f	t	2018-02-08 16:15:31.021342+00	777e39df-3a2d-41cf-8f9e-1c965c96fc23	2018-02-08 16:15:31.060468+00	21c39763a7eb387610f00823310f989a1042348d	1b4fa673b749b91913155c718e1ce40393ab23ab
pbkdf2_sha256$36000$lZk29nhgKAVh$OS9mKbtt6cFyXveNZ14adDmwqy3y1LxNoFlWr37yB7s=	\N	f	c370c7ef-49d0-4a43-91ec-6bc3e90bcd35	meme	meme	meme@gmail.com	M	f	f	t	2018-02-08 16:18:01.657226+00	b7f9f13c-5933-494c-8d61-a2a674e56f18	2018-02-08 16:18:01.695618+00	5bef5e59e124388aa9aa153747e94f37b87f888b	bd18afb3710f24b312e7bd9df071114750ae1f3b
pbkdf2_sha256$36000$Ic3rQdgwoUui$SzJURjTx4sMmidqmn/LR15vAV5s/wLWomTX02mgHBLg=	\N	f	6a1fae25-5dff-42a3-a914-099b57ca1087	Orber	Jesus	zzzz@email.com	M	f	f	t	2018-02-08 16:19:12.863479+00	63779247-7bf0-4507-949e-d48e4c962494	2018-02-08 16:19:12.901942+00	e0c5473bb786c089a6ca0dce0adc443386ce322f	f61ae01c73cf3550d477ca6aa529726c95dea9b2
pbkdf2_sha256$36000$sSviBsOz5KwY$3DTJctzBjheXyznzLmO9OPgii1cRVnbLJmbYDrJ8G9A=	\N	f	e59b1571-14b9-4d22-a8db-991941fe0950	fast	boi	fast@gmail.com	M	f	f	t	2018-02-08 16:24:03.163071+00	5d3f85e0-fba0-43e7-be58-457fd5c528b2	2018-02-08 16:24:03.201969+00	4e466282b22d7e27e683084454ea62e09708485f	f0af858f6e929b31d49d1881c6ec521785cb05c0
pbkdf2_sha256$36000$3pIQP0R6Ofvy$czOrgAoGpve+6dCA6h1r5d/smKdPm1NT3Scpqf/C7bU=	\N	f	70816b37-fa53-4d02-8899-ee4bbf95ffcf	Foofoo	Barbar	foofoo@barbar.com	M	f	f	t	2018-02-08 16:41:27.364013+00	0b62edec-6686-435b-875e-526675ef87ed	2018-02-08 16:41:27.404471+00	ceb8ba80b4e463888b0cb9b0aac20a89f4404165	fcc7f43883fca20eaa14fbb324dca920cd9cf93b
pbkdf2_sha256$36000$3QAD6mbAxvyt$rct0EftTULh793LWnnkLNvkG8xa+PysA2Lr2tl8uOro=	\N	f	042c8584-18ff-4780-9969-88f1d825e0a3	Poop	Poop	poop@email.com	M	f	f	t	2018-02-08 16:56:35.837706+00	8fb2eac9-47b2-4182-9425-5c38afe671cb	2018-02-08 16:56:35.874578+00	de12dbe2c696b2d3ac0b101fac04db358f90f84d	8c795056b2bc7b1d8bb0ef885c7b5d6284a3b613
pbkdf2_sha256$36000$JmIj4R74TLXq$nt1h5f5x46tlX6XfLVNQ0KLsFQiHsirFDdKft5qQXEE=	\N	f	f0f2d2b5-efe2-4711-a25d-3b1f16de7a73	Demo	User	test@demo.com	M	f	f	t	2018-02-08 23:15:34.482092+00	5d2a0561-df9e-4612-b0b6-4b093b13751e	2018-02-08 23:15:34.518526+00	3d70546870896f2cf19a636163370fb33ac5c1e6	b4c14c46b7fa2ebeb6fc98879966d436cf2d40a3
pbkdf2_sha256$36000$9FMdpyybDzPY$HHQdL62pFOZZG17u1yNw/TzH0n3wNk9y0Cr8yd+r684=	\N	f	6b3de4c4-6ed8-45e0-b712-efb25c766a7b	bubble	cat	awesomeone@email.com	M	f	f	t	2018-02-10 13:50:32.32635+00	1f3248b0-015a-4805-8019-9a5e51181e4d	2018-02-10 13:50:32.375035+00	3d54c6a3978aa1d24295395a314e8e994607db0f	06dc8ef975e59b677738da9bb134a2e80e97cac3
pbkdf2_sha256$36000$yZlZlI7sehlt$gPiRHPEYQgACwyuNB6X4t7tvRBOrPoLtl3dQ0ZIYHIY=	\N	f	5246d09b-adf1-45ce-b96f-53d1e2ae76e3	Cristian	Chistol	tst@email.com	M	f	f	t	2018-02-10 14:18:24.607061+00	938c77e7-7edb-4664-836c-5514d1a9ddb5	2018-02-10 14:18:24.76439+00	4e3a877fee40026d1ab33058bb86e5bbd1a83f98	cf20383f61f1a82d6a1bb1e6f7c6153c5fa4cc65
pbkdf2_sha256$36000$vrJ8hjs4ChvM$LUv91AHDFJ9ygbVvA1AhaBRrnuYqxfp8e0I55XZPjSA=	\N	f	2b78309f-22bd-4aa0-bfcf-224a2e12065d	Steve	Jobs	jobs@afterlife.com	M	f	f	t	2018-02-12 17:08:27.241998+00	b787b77d-600e-4880-99dd-41d67e8fa0bd	2018-02-12 17:08:27.344709+00	dca55e2cd945f6715428665922b6889e34bd2d2d	4a08cf2f00aa9e546fb11f8b13cb61c5f4f4a77f
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add group	1	add_group
2	Can change group	1	change_group
3	Can delete group	1	delete_group
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add content type	3	add_contenttype
8	Can change content type	3	change_contenttype
9	Can delete content type	3	delete_contenttype
10	Can add session	4	add_session
11	Can change session	4	change_session
12	Can delete session	4	delete_session
13	Can add log entry	5	add_logentry
14	Can change log entry	5	change_logentry
15	Can delete log entry	5	delete_logentry
16	Can add auth token	6	add_authtoken
17	Can change auth token	6	change_authtoken
18	Can delete auth token	6	delete_authtoken
19	Can add user	7	add_user
20	Can change user	7	change_user
21	Can delete user	7	delete_user
22	Can add device type	8	add_devicetype
23	Can change device type	8	change_devicetype
24	Can delete device type	8	delete_devicetype
25	Can add amb light reading	9	add_amblightreading
26	Can change amb light reading	9	change_amblightreading
27	Can delete amb light reading	9	delete_amblightreading
28	Can add device group type variable	10	add_devicegrouptypevariable
29	Can change device group type variable	10	change_devicegrouptypevariable
30	Can delete device group type variable	10	delete_devicegrouptypevariable
31	Can add device group type	11	add_devicegrouptype
32	Can change device group type	11	change_devicegrouptype
33	Can delete device group type	11	delete_devicegrouptype
34	Can add hum reading	12	add_humreading
35	Can change hum reading	12	change_humreading
36	Can delete hum reading	12	delete_humreading
37	Can add device group type state	13	add_devicegrouptypestate
38	Can change device group type state	13	change_devicegrouptypestate
39	Can delete device group type state	13	delete_devicegrouptypestate
40	Can add movement reading	14	add_movementreading
41	Can change movement reading	14	change_movementreading
42	Can delete movement reading	14	delete_movementreading
43	Can add device	15	add_device
44	Can change device	15	change_device
45	Can delete device	15	delete_device
46	Can add device type func	16	add_devicetypefunc
47	Can change device type func	16	change_devicetypefunc
48	Can delete device type func	16	delete_devicetypefunc
49	Can add device group	17	add_devicegroup
50	Can change device group	17	change_devicegroup
51	Can delete device group	17	delete_devicegroup
52	Can add temp reading	18	add_tempreading
53	Can change temp reading	18	change_tempreading
54	Can delete temp reading	18	delete_tempreading
55	Can add device group trigger	19	add_devicegrouptrigger
56	Can change device group trigger	19	change_devicegrouptrigger
57	Can delete device group trigger	19	delete_devicegrouptrigger
58	Can add device group trigger operator	20	add_devicegrouptriggeroperator
59	Can change device group trigger operator	20	change_devicegrouptriggeroperator
60	Can delete device group trigger operator	20	delete_devicegrouptriggeroperator
61	Can add device group trigger local action	21	add_devicegrouptriggerlocalaction
62	Can change device group trigger local action	21	change_devicegrouptriggerlocalaction
63	Can delete device group trigger local action	21	delete_devicegrouptriggerlocalaction
64	Can add device event	22	add_deviceevent
65	Can change device event	22	change_deviceevent
66	Can delete device event	22	delete_deviceevent
\.


--
-- Data for Name: devices_amblightreading; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_amblightreading (id, value, date, device_id) FROM stdin;
\.


--
-- Data for Name: devices_device; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_device (id, "deviceId", date, "deviceType_id", user_id, "deviceName", group_id) FROM stdin;
6	testId	2018-02-13 15:16:16.52227+00	1	0a565f30-6822-4168-8ce9-c0c5bccfbe0c	sexy new Name	\N
1	asd123	2018-02-01 10:40:06.180475+00	1	17102244-d489-43a1-a039-c306629318ec	Allen!	\N
2	askdhbadsasd	2018-02-06 16:52:14.852613+00	1	f159ac6a-2999-4cf3-a4cb-4cdcbcb00594	\N	\N
3	orber	2018-02-06 22:48:21.315386+00	1	f159ac6a-2999-4cf3-a4cb-4cdcbcb00594	\N	\N
4	newDev	2018-02-06 23:13:04.870015+00	1	c3a99af0-3784-45a6-a079-048c2919b0c9	\N	\N
5	newDe313v	2018-02-06 23:17:07.770316+00	1	c3a99af0-3784-45a6-a079-048c2919b0c9	\N	\N
7	sa	2018-02-09 12:46:00.293163+00	1	f0f2d2b5-efe2-4711-a25d-3b1f16de7a73	\N	\N
8	sasa	2018-02-11 15:39:53.712091+00	1	f0f2d2b5-efe2-4711-a25d-3b1f16de7a73	popp	\N
9	4e001f001951363036373538	2018-02-12 18:02:24.698901+00	3	2b78309f-22bd-4aa0-bfcf-224a2e12065d	demosensorboard	7
10	1c0036001447343433313338	2018-02-12 18:32:42.825977+00	3	2b78309f-22bd-4aa0-bfcf-224a2e12065d	\N	7
\.


--
-- Data for Name: devices_deviceevent; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_deviceevent (id, date, device_id, trigger_id) FROM stdin;
1	2018-02-15 00:46:54.25414+00	10	17
2	2018-02-15 00:49:26.67433+00	10	17
3	2018-02-15 00:49:50.697171+00	10	17
\.


--
-- Data for Name: devices_devicegroup; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_devicegroup (id, name, description, user_id, "groupType_id", state_id) FROM stdin;
2	My Burglar Alarm	\N	2b78309f-22bd-4aa0-bfcf-224a2e12065d	1	1
7	My sick group	\N	2b78309f-22bd-4aa0-bfcf-224a2e12065d	1	1
\.


--
-- Data for Name: devices_devicegrouptrigger; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_devicegrouptrigger (id, value, group_id, operator_id, valuetype_id) FROM stdin;
4	10	2	3	4
5	10	2	3	4
6	10	2	3	4
7	10	2	3	4
8	10	2	3	4
9	10	2	3	4
10	10	2	3	4
11	10	2	3	4
12	10	2	3	4
13	10	2	3	4
14	10	2	3	4
16	40	7	6	4
17	40	7	6	4
18	40	7	6	4
\.


--
-- Data for Name: devices_devicegrouptriggerlocalaction; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_devicegrouptriggerlocalaction (id, trigger_id, function, funcname) FROM stdin;
1	4	1	\N
2	5	1	\N
3	6	1	\N
4	7	1	\N
5	8	1	\N
6	9	1	\N
7	10	1	\N
8	11	1	\N
9	12	1	\N
10	13	1	\N
11	14	1	\N
12	16	blah	\N
13	17	blah	\N
14	18	blah	\N
\.


--
-- Data for Name: devices_devicegrouptriggeroperator; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_devicegrouptriggeroperator (id, operator) FROM stdin;
1	<
2	>
3	<=
4	>=
5	=
6	!=
\.


--
-- Data for Name: devices_devicegrouptype; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_devicegrouptype (id, name) FROM stdin;
1	Burglar Alarm
\.


--
-- Data for Name: devices_devicegrouptypestate; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_devicegrouptypestate (id, state, devicegrouptype_id) FROM stdin;
1	ARMED	1
2	DISARMED	1
\.


--
-- Data for Name: devices_devicegrouptypevariable; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_devicegrouptypevariable (id, variable, devicegrouptype_id, "variableType") FROM stdin;
4	light	1	
5	sound	1	
6	motion	1	
\.


--
-- Data for Name: devices_devicetype; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_devicetype (id, name, description, "firmwareVersion") FROM stdin;
3	Blinky	\N	1
1	Tinker	\N	2
\.


--
-- Data for Name: devices_devicetypefunc; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_devicetypefunc (id, "funcName") FROM stdin;
1	digitalread
\.


--
-- Data for Name: devices_devicetypefunc_devicetype; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_devicetypefunc_devicetype (id, devicetypefunc_id, devicetype_id) FROM stdin;
\.


--
-- Data for Name: devices_humreading; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_humreading (id, value, date, device_id) FROM stdin;
\.


--
-- Data for Name: devices_movementreading; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_movementreading (id, date, device_id) FROM stdin;
\.


--
-- Data for Name: devices_tempreading; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY devices_tempreading (id, value, date, device_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	auth	group
2	auth	permission
3	contenttypes	contenttype
4	sessions	session
5	admin	logentry
6	knox	authtoken
7	accounts	user
8	devices	devicetype
9	devices	amblightreading
10	devices	devicegrouptypevariable
11	devices	devicegrouptype
12	devices	humreading
13	devices	devicegrouptypestate
14	devices	movementreading
15	devices	device
16	devices	devicetypefunc
17	devices	devicegroup
18	devices	tempreading
19	devices	devicegrouptrigger
20	devices	devicegrouptriggeroperator
21	devices	devicegrouptriggerlocalaction
22	devices	deviceevent
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-02-14 14:28:24.668085+00
2	contenttypes	0002_remove_content_type_name	2018-02-14 14:28:24.701094+00
3	auth	0001_initial	2018-02-14 14:28:24.79812+00
4	auth	0002_alter_permission_name_max_length	2018-02-14 14:28:24.842187+00
5	auth	0003_alter_user_email_max_length	2018-02-14 14:28:24.881327+00
6	auth	0004_alter_user_username_opts	2018-02-14 14:28:24.909106+00
7	auth	0005_alter_user_last_login_null	2018-02-14 14:28:24.936018+00
8	auth	0006_require_contenttypes_0002	2018-02-14 14:28:24.943661+00
9	accounts	0001_initial	2018-02-14 14:28:25.053775+00
10	accounts	0002_clean_user_model	2018-02-14 14:28:25.19467+00
11	accounts	0003_auto_20180131_0003	2018-02-14 14:28:25.264664+00
12	admin	0001_initial	2018-02-14 14:28:25.334068+00
13	admin	0002_logentry_remove_auto_add	2018-02-14 14:28:25.379906+00
14	auth	0007_alter_validators_add_error_messages	2018-02-14 14:28:25.413755+00
15	auth	0008_alter_user_username_max_length	2018-02-14 14:28:25.449062+00
16	devices	0001_initial	2018-02-14 14:28:25.678765+00
17	devices	0002_device_devicename	2018-02-14 14:28:25.740288+00
18	devices	0003_auto_20180201_0930	2018-02-14 14:28:25.788112+00
19	devices	0004_auto_20180201_0931	2018-02-14 14:28:25.823002+00
20	devices	0005_auto_20180211_1254	2018-02-14 14:28:25.972766+00
21	devices	0006_auto_20180211_1943	2018-02-14 14:28:26.159438+00
22	devices	0007_auto_20180212_1323	2018-02-14 14:28:26.304016+00
23	devices	0008_devicegroup_state	2018-02-14 14:28:26.408901+00
24	devices	0009_auto_20180213_1448	2018-02-14 14:28:26.603245+00
25	knox	0001_initial	2018-02-14 14:28:26.695495+00
26	knox	0002_auto_20150916_1425	2018-02-14 14:28:26.807925+00
27	knox	0003_auto_20150916_1526	2018-02-14 14:28:26.896308+00
28	knox	0004_authtoken_expires	2018-02-14 14:28:26.960258+00
29	knox	0005_authtoken_token_key	2018-02-14 14:28:27.033332+00
30	knox	0006_auto_20160818_0932	2018-02-14 14:28:27.221948+00
31	sessions	0001_initial	2018-02-14 14:28:27.262225+00
32	devices	0010_auto_20180214_1636	2018-02-14 16:38:16.649412+00
33	devices	0011_auto_20180214_1930	2018-02-14 21:31:52.12683+00
34	devices	0012_auto_20180214_2122	2018-02-14 21:31:52.208448+00
35	devices	0013_auto_20180214_2216	2018-02-14 22:16:22.745103+00
36	devices	0014_deviceevent	2018-02-15 00:14:02.18744+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: knox_authtoken; Type: TABLE DATA; Schema: public; Owner: djangoreactredux
--

COPY knox_authtoken (digest, salt, created, user_id, expires, token_key) FROM stdin;
a1e2fb16edee9fa2aa7ae5d97081a6dc6b7a4446a6339fecaabd4b2d3e6ae8f1fb3e114efae41428d7594526a7e076312a2ab4c102ddf182b63da57407bd6cb9	5f8ec6815ddcb56a	2018-02-10 12:55:14.265017+00	f513414b-02ee-4c1d-b27a-ff5af6ea8155	2018-02-10 22:55:14.263403+00	5ed0d26d
2c95ca4bd082aa761ebc89a68231768198922355c152993a6739adf25e5a4c55bf1ef4df95eb08183b5a4a9fff31bedf732e768b41a0d98b7f77ae4eb4a8ce56	99694c70f9d63e21	2018-02-13 14:52:11.587227+00	0a565f30-6822-4168-8ce9-c0c5bccfbe0c	2018-02-14 00:52:11.586591+00	77b3b594
42546486094159e19273da756bab2785a71da3e2289a720b1d1ddc1b637abb74063a34b00c865e30cb1d4f36da199c1961e0b44c44d160b715609c5cd5c37e65	d229b850a31b7246	2018-02-01 10:37:32.616245+00	17102244-d489-43a1-a039-c306629318ec	2018-02-01 20:37:32.615828+00	cf285ccb
d291754e2ade1bf86ab7cf27b006cf03df8328a56d3e406b33593d67295ec53a531737877097152787cd402bbfcc07fc127199e734302cf6dbafcf2851cf93a0	712dd5ccae991607	2018-02-11 11:39:42.002663+00	5246d09b-adf1-45ce-b96f-53d1e2ae76e3	2018-02-11 21:39:42.001362+00	9103b585
5758c93b6474212f88e07973c4fa3b7b6160fbcd374913e8bbee0fcedaaf445025e679ba42116e311b579a089e9c669248aee84d1823cee72e5ce83a801542ed	bffb08ec2056ae94	2018-02-11 15:40:38.311602+00	1db5836b-7167-43fc-81b2-1c38751c39ab	2018-02-12 01:40:38.31077+00	facc1791
7ad2ddf5fb4d36153fb8388726916cac8caa2765d72b7ae18ec44a7004601f0f7135d6fe6290342554b948e454dd8302ccd13e471b0b10ebb7903eda31bec3e7	9d9a1ea1fd3ffc3a	2018-02-11 17:15:00.937744+00	1db5836b-7167-43fc-81b2-1c38751c39ab	2018-02-12 03:15:00.936954+00	00e73089
02385247afebe3c772408ca0decb915d91f916dd3200ea734a2f8d2d1a73ae9b39bab3b47237f1f4ee9d575954d91b4799bc58560bbdee16b846c378f8c8ce1a	7fd0da76db3d5aa2	2018-02-04 17:25:28.24921+00	564974ae-251b-46c3-b1af-f7767e608276	2018-02-05 03:25:28.248804+00	7edf4eae
1eec41a36ac5e2c780858552a6687e91a2ae75de8c7e9fb1397b62653f1edb0f38cd8f754b69581b805db3cfac263094fc1d03583d1478eb11892b60eb782089	49f142c5eca5700f	2018-02-04 17:54:56.030123+00	564974ae-251b-46c3-b1af-f7767e608276	2018-02-05 03:54:56.029708+00	12ad5c94
a4813181f7f3999ff694012aa9ddcfe4d4548bd59d8214d3a6e451cf85bfd29806af7c356cb05c9962fcadb13a43f97f7aa625e1bd22ace10371014bbe853cc6	95a7ff7dd7b46c1a	2018-02-04 17:59:57.837829+00	564974ae-251b-46c3-b1af-f7767e608276	2018-02-05 03:59:57.837474+00	b547ae19
e2ca7f255282e4ccb4d759ba4a215061a9ddeb1c7cb08c9ec7a77b4102fc5795fb4ad9c767c3b2edb1f27bdec2d89170c6d80367db67ec9fbf262a628f19e165	663b3307c83c06dc	2018-02-04 18:04:04.7351+00	564974ae-251b-46c3-b1af-f7767e608276	2018-02-05 04:04:04.734711+00	9b76ed4d
1807170ceae27825cf0386974896e3008dd795fad5a4486f370da2e2645c3c3e797471593ecacbc46eb34906a9939d1149f63adb7ce843474592d32d90fd9f3c	4b389a69ee2459cc	2018-02-11 21:16:47.887798+00	5246d09b-adf1-45ce-b96f-53d1e2ae76e3	2018-02-12 07:16:47.886891+00	91c9d375
15259d1c48bc7e1c077e5a03a828e147e5a5d583a18a7a8b8c1c7f1768ae4f01c93a048744a259d4ab061e4c646188eb671d4077d01e5cb92621dc64c44c7cee	d81205d6c69a9f73	2018-02-05 17:04:05.216777+00	b28714ee-021d-40d3-8afb-c2076ca4061b	2018-02-06 03:04:05.216491+00	1a5797bc
4b41d4944d1cba3ddfc34e4682b86e41f70225f1ca3107b51efa6adf38b737a566a5f7225c30874f0f12d98123e29b104d607975c7e988ca2516d9a253259efc	0d32bafcbb9bed4b	2018-02-07 00:12:45.289283+00	7e495599-9400-4ede-840c-2de96a2390b1	2018-02-07 10:12:45.288971+00	17937063
a4b7d47d94eddbb7aa65d714ebc8f3efbe17586fc103d3ca850321d50050699f1ae0e7d3ee35c01a0f91c9d156fcc9e385176d52e9b36dfe92014fe432e2c0b0	7df7aa44f2572acd	2018-02-13 11:00:48.121912+00	f0f2d2b5-efe2-4711-a25d-3b1f16de7a73	2018-02-13 21:00:48.121013+00	d619a393
ee7b3f5033154638ed76f7c8d0e0394587eae522cfe3c952e19bd9de899596d3985f98ec730414cbd2bc041ef1f4129838dfc2c2798426ad0317b9ecaf005bb6	ecceae05ef10c53d	2018-02-13 11:06:05.73115+00	f0f2d2b5-efe2-4711-a25d-3b1f16de7a73	2018-02-13 21:06:05.730393+00	dc20e899
88ad0fe9d488ca5eecb4cc9710df6a064c90ab44fdd2c131581ff04e8be9ab5390432768d807603e7b6ae968fe895513a6be45c6b95d3daaa5987e311a1eba4a	3489fdaca8d932df	2018-02-08 16:07:48.202152+00	65ee0594-6d5f-4b0d-bf8c-78c7b92775e3	2018-02-09 02:07:48.201829+00	c5a8f0f3
27d712321c9de9cd7d1bdcbf97c43dccfb0934a109de0e8feb45319cf4ea1ba9a22083569f80a0f993aa259a95c9effe88acb35b711b8242303397b04d014973	207ed96b0732a4b2	2018-02-08 16:15:38.699361+00	7ce7e75f-6285-488e-a285-a3dc3d5098da	2018-02-09 02:15:38.69907+00	3d623048
527e8afc2f8110316b5fdc65facfbd0c9d49bf56855887c313ca2eb124f1f49cf2a70953158ef8a6153f7776145c229e03fff247db7ee805cbdd70b2551bde41	a1b469c81adb74ca	2018-02-08 16:18:09.177095+00	c370c7ef-49d0-4a43-91ec-6bc3e90bcd35	2018-02-09 02:18:09.17679+00	ef2f7b9e
67fd51e4847445c032df3cc83257e3692485c3b879fbde7a63e76f0fbfda30ba395086f9781c300fff11f05196b4f076aa0f5f54c151eb951ec9865882744257	347f76854faaf4e1	2018-02-08 16:24:19.147151+00	e59b1571-14b9-4d22-a8db-991941fe0950	2018-02-09 02:24:19.14687+00	3307c7ef
7c8c0c3a3f59df5f6ad6e25eb865186c0c60b0dd08710a035f289c0dae58c5d4fc071a5aab355586000c6dd77c9e8f22b844bf7ac863c94aa043f5b4908bda01	e584ced3ac14d236	2018-02-08 16:41:35.732731+00	70816b37-fa53-4d02-8899-ee4bbf95ffcf	2018-02-09 02:41:35.732421+00	fb19d19f
67f9c0ada01a2f422e70adefd4a61bbb7feee495f25ef423570253ea0f8984fe9127075937db72938c2bf8f6bbd18591ca07034ddb5fa81f372159d303df200e	942cf0cdbd88d596	2018-02-08 16:56:54.626368+00	042c8584-18ff-4780-9969-88f1d825e0a3	2018-02-09 02:56:54.62609+00	d11161c3
6a31b5013d3bd72a0e02ac636302ee3cdd9c88298064b5cbf8019ba143c21ce49a996887ded14b7a820477f9c3f0afd57b56c827bdff5af1f505afe651d682e2	3e619d37c4613277	2018-02-14 16:51:52.114531+00	2b78309f-22bd-4aa0-bfcf-224a2e12065d	2018-02-15 02:51:52.113504+00	b266c3db
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('auth_permission_id_seq', 66, true);


--
-- Name: devices_amblightreading_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_amblightreading_id_seq', 1, false);


--
-- Name: devices_device_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_device_id_seq', 10, true);


--
-- Name: devices_deviceevent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_deviceevent_id_seq', 3, true);


--
-- Name: devices_devicegroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicegroup_id_seq', 7, true);


--
-- Name: devices_devicegrouptrigger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicegrouptrigger_id_seq', 18, true);


--
-- Name: devices_devicegrouptriggerlocalaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicegrouptriggerlocalaction_id_seq', 14, true);


--
-- Name: devices_devicegrouptriggeroperator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicegrouptriggeroperator_id_seq', 30, true);


--
-- Name: devices_devicegrouptype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicegrouptype_id_seq', 1, true);


--
-- Name: devices_devicegrouptypestate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicegrouptypestate_id_seq', 2, true);


--
-- Name: devices_devicegrouptypevariable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicegrouptypevariable_id_seq', 6, true);


--
-- Name: devices_devicetype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicetype_id_seq', 3, true);


--
-- Name: devices_devicetypefunc_devicetype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicetypefunc_devicetype_id_seq', 1, false);


--
-- Name: devices_devicetypefunc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_devicetypefunc_id_seq', 1, true);


--
-- Name: devices_humreading_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_humreading_id_seq', 1, false);


--
-- Name: devices_movementreading_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_movementreading_id_seq', 1, false);


--
-- Name: devices_tempreading_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('devices_tempreading_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('django_content_type_id_seq', 22, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: djangoreactredux
--

SELECT pg_catalog.setval('django_migrations_id_seq', 36, true);


--
-- Name: accounts_user accounts_user_activation_key_key; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY accounts_user
    ADD CONSTRAINT accounts_user_activation_key_key UNIQUE (activation_key);


--
-- Name: accounts_user accounts_user_email_key; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY accounts_user
    ADD CONSTRAINT accounts_user_email_key UNIQUE (email);


--
-- Name: accounts_user accounts_user_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY accounts_user
    ADD CONSTRAINT accounts_user_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: devices_amblightreading devices_amblightreading_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_amblightreading
    ADD CONSTRAINT devices_amblightreading_pkey PRIMARY KEY (id);


--
-- Name: devices_device devices_device_deviceId_01c860f5_uniq; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_device
    ADD CONSTRAINT "devices_device_deviceId_01c860f5_uniq" UNIQUE ("deviceId");


--
-- Name: devices_device devices_device_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_device
    ADD CONSTRAINT devices_device_pkey PRIMARY KEY (id);


--
-- Name: devices_deviceevent devices_deviceevent_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_deviceevent
    ADD CONSTRAINT devices_deviceevent_pkey PRIMARY KEY (id);


--
-- Name: devices_devicegroup devices_devicegroup_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegroup
    ADD CONSTRAINT devices_devicegroup_pkey PRIMARY KEY (id);


--
-- Name: devices_devicegrouptrigger devices_devicegrouptrigger_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptrigger
    ADD CONSTRAINT devices_devicegrouptrigger_pkey PRIMARY KEY (id);


--
-- Name: devices_devicegrouptriggerlocalaction devices_devicegrouptriggerlocalaction_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptriggerlocalaction
    ADD CONSTRAINT devices_devicegrouptriggerlocalaction_pkey PRIMARY KEY (id);


--
-- Name: devices_devicegrouptriggeroperator devices_devicegrouptriggeroperator_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptriggeroperator
    ADD CONSTRAINT devices_devicegrouptriggeroperator_pkey PRIMARY KEY (id);


--
-- Name: devices_devicegrouptype devices_devicegrouptype_name_key; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptype
    ADD CONSTRAINT devices_devicegrouptype_name_key UNIQUE (name);


--
-- Name: devices_devicegrouptype devices_devicegrouptype_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptype
    ADD CONSTRAINT devices_devicegrouptype_pkey PRIMARY KEY (id);


--
-- Name: devices_devicegrouptypestate devices_devicegrouptypestate_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptypestate
    ADD CONSTRAINT devices_devicegrouptypestate_pkey PRIMARY KEY (id);


--
-- Name: devices_devicegrouptypevariable devices_devicegrouptypevariable_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptypevariable
    ADD CONSTRAINT devices_devicegrouptypevariable_pkey PRIMARY KEY (id);


--
-- Name: devices_devicetype devices_devicetype_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicetype
    ADD CONSTRAINT devices_devicetype_pkey PRIMARY KEY (id);


--
-- Name: devices_devicetype devices_devicetype_value_58c77596_uniq; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicetype
    ADD CONSTRAINT devices_devicetype_value_58c77596_uniq UNIQUE (name);


--
-- Name: devices_devicetypefunc_devicetype devices_devicetypefunc_d_devicetypefunc_id_device_d13243b9_uniq; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicetypefunc_devicetype
    ADD CONSTRAINT devices_devicetypefunc_d_devicetypefunc_id_device_d13243b9_uniq UNIQUE (devicetypefunc_id, devicetype_id);


--
-- Name: devices_devicetypefunc_devicetype devices_devicetypefunc_devicetype_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicetypefunc_devicetype
    ADD CONSTRAINT devices_devicetypefunc_devicetype_pkey PRIMARY KEY (id);


--
-- Name: devices_devicetypefunc devices_devicetypefunc_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicetypefunc
    ADD CONSTRAINT devices_devicetypefunc_pkey PRIMARY KEY (id);


--
-- Name: devices_humreading devices_humreading_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_humreading
    ADD CONSTRAINT devices_humreading_pkey PRIMARY KEY (id);


--
-- Name: devices_movementreading devices_movementreading_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_movementreading
    ADD CONSTRAINT devices_movementreading_pkey PRIMARY KEY (id);


--
-- Name: devices_tempreading devices_tempreading_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_tempreading
    ADD CONSTRAINT devices_tempreading_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: knox_authtoken knox_authtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY knox_authtoken
    ADD CONSTRAINT knox_authtoken_pkey PRIMARY KEY (digest);


--
-- Name: knox_authtoken knox_authtoken_salt_key; Type: CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY knox_authtoken
    ADD CONSTRAINT knox_authtoken_salt_key UNIQUE (salt);


--
-- Name: accounts_user_email_b2644a56_like; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX accounts_user_email_b2644a56_like ON accounts_user USING btree (email varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: devices_amblightreading_device_id_770a04fa; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_amblightreading_device_id_770a04fa ON devices_amblightreading USING btree (device_id);


--
-- Name: devices_device_deviceId_01c860f5_like; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX "devices_device_deviceId_01c860f5_like" ON devices_device USING btree ("deviceId" varchar_pattern_ops);


--
-- Name: devices_device_deviceType_id_1d54de20; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX "devices_device_deviceType_id_1d54de20" ON devices_device USING btree ("deviceType_id");


--
-- Name: devices_device_group_id_0908559e; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_device_group_id_0908559e ON devices_device USING btree (group_id);


--
-- Name: devices_device_user_id_6752bd43; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_device_user_id_6752bd43 ON devices_device USING btree (user_id);


--
-- Name: devices_deviceevent_device_id_5294ea65; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_deviceevent_device_id_5294ea65 ON devices_deviceevent USING btree (device_id);


--
-- Name: devices_deviceevent_trigger_id_b329d8ee; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_deviceevent_trigger_id_b329d8ee ON devices_deviceevent USING btree (trigger_id);


--
-- Name: devices_devicegroup_groupType_id_9890b38c; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX "devices_devicegroup_groupType_id_9890b38c" ON devices_devicegroup USING btree ("groupType_id");


--
-- Name: devices_devicegroup_state_id_baccab8b; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_devicegroup_state_id_baccab8b ON devices_devicegroup USING btree (state_id);


--
-- Name: devices_devicegroup_user_id_f5b7beeb; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_devicegroup_user_id_f5b7beeb ON devices_devicegroup USING btree (user_id);


--
-- Name: devices_devicegrouptrigger_group_id_db9a511a; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_devicegrouptrigger_group_id_db9a511a ON devices_devicegrouptrigger USING btree (group_id);


--
-- Name: devices_devicegrouptrigger_operator_id_b8002b97; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_devicegrouptrigger_operator_id_b8002b97 ON devices_devicegrouptrigger USING btree (operator_id);


--
-- Name: devices_devicegrouptrigger_valuetype_id_9be5a9d6; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_devicegrouptrigger_valuetype_id_9be5a9d6 ON devices_devicegrouptrigger USING btree (valuetype_id);


--
-- Name: devices_devicegrouptriggerlocalaction_trigger_id_9626ecd2; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_devicegrouptriggerlocalaction_trigger_id_9626ecd2 ON devices_devicegrouptriggerlocalaction USING btree (trigger_id);


--
-- Name: devices_devicegrouptype_name_2d1bc111_like; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_devicegrouptype_name_2d1bc111_like ON devices_devicegrouptype USING btree (name varchar_pattern_ops);


--
-- Name: devices_devicegrouptypestate_devicegrouptype_id_8ef1f660; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_devicegrouptypestate_devicegrouptype_id_8ef1f660 ON devices_devicegrouptypestate USING btree (devicegrouptype_id);


--
-- Name: devices_devicegrouptypevariable_devicegrouptype_id_a2525ad0; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_devicegrouptypevariable_devicegrouptype_id_a2525ad0 ON devices_devicegrouptypevariable USING btree (devicegrouptype_id);


--
-- Name: devices_devicetype_value_58c77596_like; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_devicetype_value_58c77596_like ON devices_devicetype USING btree (name varchar_pattern_ops);


--
-- Name: devices_devicetypefunc_devicetype_devicetype_id_59900d8f; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_devicetypefunc_devicetype_devicetype_id_59900d8f ON devices_devicetypefunc_devicetype USING btree (devicetype_id);


--
-- Name: devices_devicetypefunc_devicetype_devicetypefunc_id_ceff2714; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_devicetypefunc_devicetype_devicetypefunc_id_ceff2714 ON devices_devicetypefunc_devicetype USING btree (devicetypefunc_id);


--
-- Name: devices_humreading_device_id_a0e1168d; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_humreading_device_id_a0e1168d ON devices_humreading USING btree (device_id);


--
-- Name: devices_movementreading_device_id_8ace35ec; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_movementreading_device_id_8ace35ec ON devices_movementreading USING btree (device_id);


--
-- Name: devices_tempreading_device_id_eccb8e9e; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX devices_tempreading_device_id_eccb8e9e ON devices_tempreading USING btree (device_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: knox_authtoken_digest_188c7e77_like; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX knox_authtoken_digest_188c7e77_like ON knox_authtoken USING btree (digest varchar_pattern_ops);


--
-- Name: knox_authtoken_salt_3d9f48ac_like; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX knox_authtoken_salt_3d9f48ac_like ON knox_authtoken USING btree (salt varchar_pattern_ops);


--
-- Name: knox_authtoken_token_key_8f4f7d47; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX knox_authtoken_token_key_8f4f7d47 ON knox_authtoken USING btree (token_key);


--
-- Name: knox_authtoken_token_key_8f4f7d47_like; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX knox_authtoken_token_key_8f4f7d47_like ON knox_authtoken USING btree (token_key varchar_pattern_ops);


--
-- Name: knox_authtoken_user_id_e5a5d899; Type: INDEX; Schema: public; Owner: djangoreactredux
--

CREATE INDEX knox_authtoken_user_id_e5a5d899 ON knox_authtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_amblightreading devices_amblightreading_device_id_770a04fa_fk_devices_device_id; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_amblightreading
    ADD CONSTRAINT devices_amblightreading_device_id_770a04fa_fk_devices_device_id FOREIGN KEY (device_id) REFERENCES devices_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_device devices_device_deviceType_id_1d54de20_fk_devices_devicetype_id; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_device
    ADD CONSTRAINT "devices_device_deviceType_id_1d54de20_fk_devices_devicetype_id" FOREIGN KEY ("deviceType_id") REFERENCES devices_devicetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_device devices_device_group_id_0908559e_fk_devices_devicegroup_id; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_device
    ADD CONSTRAINT devices_device_group_id_0908559e_fk_devices_devicegroup_id FOREIGN KEY (group_id) REFERENCES devices_devicegroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_device devices_device_user_id_6752bd43_fk_accounts_user_id; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_device
    ADD CONSTRAINT devices_device_user_id_6752bd43_fk_accounts_user_id FOREIGN KEY (user_id) REFERENCES accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_deviceevent devices_deviceevent_device_id_5294ea65_fk_devices_device_id; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_deviceevent
    ADD CONSTRAINT devices_deviceevent_device_id_5294ea65_fk_devices_device_id FOREIGN KEY (device_id) REFERENCES devices_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_deviceevent devices_deviceevent_trigger_id_b329d8ee_fk_devices_d; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_deviceevent
    ADD CONSTRAINT devices_deviceevent_trigger_id_b329d8ee_fk_devices_d FOREIGN KEY (trigger_id) REFERENCES devices_devicegrouptrigger(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_devicegroup devices_devicegroup_groupType_id_9890b38c_fk_devices_d; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegroup
    ADD CONSTRAINT "devices_devicegroup_groupType_id_9890b38c_fk_devices_d" FOREIGN KEY ("groupType_id") REFERENCES devices_devicegrouptype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_devicegroup devices_devicegroup_state_id_baccab8b_fk_devices_d; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegroup
    ADD CONSTRAINT devices_devicegroup_state_id_baccab8b_fk_devices_d FOREIGN KEY (state_id) REFERENCES devices_devicegrouptypestate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_devicegroup devices_devicegroup_user_id_f5b7beeb_fk_accounts_user_id; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegroup
    ADD CONSTRAINT devices_devicegroup_user_id_f5b7beeb_fk_accounts_user_id FOREIGN KEY (user_id) REFERENCES accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_devicegrouptypestate devices_devicegroupt_devicegrouptype_id_8ef1f660_fk_devices_d; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptypestate
    ADD CONSTRAINT devices_devicegroupt_devicegrouptype_id_8ef1f660_fk_devices_d FOREIGN KEY (devicegrouptype_id) REFERENCES devices_devicegrouptype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_devicegrouptypevariable devices_devicegroupt_devicegrouptype_id_a2525ad0_fk_devices_d; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptypevariable
    ADD CONSTRAINT devices_devicegroupt_devicegrouptype_id_a2525ad0_fk_devices_d FOREIGN KEY (devicegrouptype_id) REFERENCES devices_devicegrouptype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_devicegrouptrigger devices_devicegroupt_group_id_db9a511a_fk_devices_d; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptrigger
    ADD CONSTRAINT devices_devicegroupt_group_id_db9a511a_fk_devices_d FOREIGN KEY (group_id) REFERENCES devices_devicegroup(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_devicegrouptrigger devices_devicegroupt_operator_id_b8002b97_fk_devices_d; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptrigger
    ADD CONSTRAINT devices_devicegroupt_operator_id_b8002b97_fk_devices_d FOREIGN KEY (operator_id) REFERENCES devices_devicegrouptriggeroperator(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_devicegrouptriggerlocalaction devices_devicegroupt_trigger_id_9626ecd2_fk_devices_d; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptriggerlocalaction
    ADD CONSTRAINT devices_devicegroupt_trigger_id_9626ecd2_fk_devices_d FOREIGN KEY (trigger_id) REFERENCES devices_devicegrouptrigger(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_devicegrouptrigger devices_devicegroupt_valuetype_id_9be5a9d6_fk_devices_d; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicegrouptrigger
    ADD CONSTRAINT devices_devicegroupt_valuetype_id_9be5a9d6_fk_devices_d FOREIGN KEY (valuetype_id) REFERENCES devices_devicegrouptypevariable(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_devicetypefunc_devicetype devices_devicetypefu_devicetype_id_59900d8f_fk_devices_d; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicetypefunc_devicetype
    ADD CONSTRAINT devices_devicetypefu_devicetype_id_59900d8f_fk_devices_d FOREIGN KEY (devicetype_id) REFERENCES devices_devicetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_devicetypefunc_devicetype devices_devicetypefu_devicetypefunc_id_ceff2714_fk_devices_d; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_devicetypefunc_devicetype
    ADD CONSTRAINT devices_devicetypefu_devicetypefunc_id_ceff2714_fk_devices_d FOREIGN KEY (devicetypefunc_id) REFERENCES devices_devicetypefunc(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_humreading devices_humreading_device_id_a0e1168d_fk_devices_device_id; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_humreading
    ADD CONSTRAINT devices_humreading_device_id_a0e1168d_fk_devices_device_id FOREIGN KEY (device_id) REFERENCES devices_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_movementreading devices_movementreading_device_id_8ace35ec_fk_devices_device_id; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_movementreading
    ADD CONSTRAINT devices_movementreading_device_id_8ace35ec_fk_devices_device_id FOREIGN KEY (device_id) REFERENCES devices_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: devices_tempreading devices_tempreading_device_id_eccb8e9e_fk_devices_device_id; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY devices_tempreading
    ADD CONSTRAINT devices_tempreading_device_id_eccb8e9e_fk_devices_device_id FOREIGN KEY (device_id) REFERENCES devices_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_accounts_user_id; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_user_id FOREIGN KEY (user_id) REFERENCES accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: knox_authtoken knox_authtoken_user_id_e5a5d899_fk_accounts_user_id; Type: FK CONSTRAINT; Schema: public; Owner: djangoreactredux
--

ALTER TABLE ONLY knox_authtoken
    ADD CONSTRAINT knox_authtoken_user_id_e5a5d899_fk_accounts_user_id FOREIGN KEY (user_id) REFERENCES accounts_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

