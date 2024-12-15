-- Table: public.accidents_by_state

-- DROP TABLE IF EXISTS public.accidents_by_state;

CREATE TABLE IF NOT EXISTS public.accidents_by_state
(
    year integer,
    mys_state character varying COLLATE pg_catalog."default",
    road_crashes integer,
    road_deaths integer,
    serious_injury integer,
    slight_injury integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.accidents_by_state
    OWNER to postgres;

-- Table: public.commodity

-- DROP TABLE IF EXISTS public.commodity;

CREATE TABLE IF NOT EXISTS public.commodity
(
    i integer NOT NULL,
    dep_id integer,
    line integer,
    commod character varying COLLATE pg_catalog."default",
    code character varying COLLATE pg_catalog."default",
    commod_tp character varying COLLATE pg_catalog."default",
    commod_group character varying COLLATE pg_catalog."default",
    import character varying COLLATE pg_catalog."default",
    inserted_by character varying COLLATE pg_catalog."default",
    insert_date date,
    updated_by character varying COLLATE pg_catalog."default",
    update_date date,
    CONSTRAINT commodity_pkey PRIMARY KEY (i)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.commodity
    OWNER to postgres;

-- Table: public.departments

-- DROP TABLE IF EXISTS public.departments;

CREATE TABLE IF NOT EXISTS public.departments
(
    dept_no character varying(255) COLLATE pg_catalog."default" NOT NULL,
    dept_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT departments_pkey PRIMARY KEY (dept_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.departments
    OWNER to postgres;


-- Table: public.dept_emp

-- DROP TABLE IF EXISTS public.dept_emp;

CREATE TABLE IF NOT EXISTS public.dept_emp
(
    emp_no integer,
    dept_no character varying(255) COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dept_emp
    OWNER to postgres;


-- Table: public.dept_manager

-- DROP TABLE IF EXISTS public.dept_manager;

CREATE TABLE IF NOT EXISTS public.dept_manager
(
    dept_no character varying(255) COLLATE pg_catalog."default",
    emp_no integer NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dept_manager
    OWNER to postgres;



-- Table: public.employees

-- DROP TABLE IF EXISTS public.employees;

CREATE TABLE IF NOT EXISTS public.employees
(
    emp_no integer NOT NULL,
    emp_title_id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    birth_date character varying(255) COLLATE pg_catalog."default" NOT NULL,
    first_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    last_name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    sex character varying(255) COLLATE pg_catalog."default" NOT NULL,
    hire_date character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT employees_pkey PRIMARY KEY (emp_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.employees
    OWNER to postgres;


-- Table: public.film

-- DROP TABLE IF EXISTS public.film;

CREATE TABLE IF NOT EXISTS public.film
(
    film_id integer NOT NULL,
    title character varying(255) COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default",
    release_year integer,
    language_id smallint NOT NULL,
    original_language_id smallint,
    rental_duration smallint NOT NULL DEFAULT 3,
    rental_rate numeric(4,2) NOT NULL DEFAULT 4.99,
    length smallint,
    replacement_cost numeric(5,2) NOT NULL DEFAULT 19.99,
    rating text COLLATE pg_catalog."default",
    last_update timestamp without time zone NOT NULL DEFAULT now(),
    special_features text[] COLLATE pg_catalog."default",
    fulltext tsvector NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.film
    OWNER to postgres;


-- Table: public.inventory

-- DROP TABLE IF EXISTS public.inventory;

CREATE TABLE IF NOT EXISTS public.inventory
(
    inventory_id integer NOT NULL,
    film_id smallint NOT NULL,
    store_id smallint NOT NULL,
    last_update timestamp without time zone NOT NULL DEFAULT now()
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.inventory
    OWNER to postgres;


-- Table: public.names

-- DROP TABLE IF EXISTS public.names;

CREATE TABLE IF NOT EXISTS public.names
(
    i integer NOT NULL,
    dep_id integer,
    line integer,
    name character varying COLLATE pg_catalog."default",
    status character varying COLLATE pg_catalog."default",
    inserted_by character varying COLLATE pg_catalog."default",
    insert_date date,
    updated_by character varying COLLATE pg_catalog."default",
    update_date date,
    CONSTRAINT names_pkey PRIMARY KEY (i)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.names
    OWNER to postgres;


-- Table: public.people

-- DROP TABLE IF EXISTS public.people;

CREATE TABLE IF NOT EXISTS public.people
(
    name character varying(30) COLLATE pg_catalog."default" NOT NULL,
    has_pet boolean DEFAULT false,
    pet_type character varying(10) COLLATE pg_catalog."default" NOT NULL,
    pet_name character varying(30) COLLATE pg_catalog."default",
    pet_age integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.people
    OWNER to postgres;


-- Table: public.road_accidents

-- DROP TABLE IF EXISTS public.road_accidents;

CREATE TABLE IF NOT EXISTS public.road_accidents
(
    _id integer NOT NULL,
    year integer,
    registered_vehicles integer,
    population integer,
    road_crashes integer,
    road_deaths integer,
    serious_injury integer,
    slight_injury integer,
    index_per_10000_vehicles numeric,
    index_per_100000_population numeric,
    index_per_billion_vkt numeric,
    CONSTRAINT road_accidents_pkey PRIMARY KEY (_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.road_accidents
    OWNER to postgres;


-- Table: public.salaries

-- DROP TABLE IF EXISTS public.salaries;

CREATE TABLE IF NOT EXISTS public.salaries
(
    emp_no integer NOT NULL,
    salary integer,
    CONSTRAINT salaries_pkey PRIMARY KEY (emp_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.salaries
    OWNER to postgres;






-- Table: public.titles

-- DROP TABLE IF EXISTS public.titles;

CREATE TABLE IF NOT EXISTS public.titles
(
    title_id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    title character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT titles_pkey PRIMARY KEY (title_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.titles
    OWNER to postgres;


