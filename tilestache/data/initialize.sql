--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.6
-- Dumped by pg_dump version 9.3.6
-- Started on 2015-05-15 10:41:54 TLT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 190 (class 3079 OID 11787)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3263 (class 0 OID 0)
-- Dependencies: 190
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 191 (class 3079 OID 51170)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 3264 (class 0 OID 0)
-- Dependencies: 191
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 189 (class 1259 OID 58167)
-- Name: geo_adminarea; Type: TABLE; Schema: public; Owner: belun; Tablespace: 
--

CREATE TABLE geo_adminarea (
    path character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    pcode integer NOT NULL,
    geom geometry(MultiPolygon,900913),
    leafletextent text
);


ALTER TABLE public.geo_adminarea OWNER TO belun;

--
-- TOC entry 186 (class 1259 OID 53415)
-- Name: planet_osm_line; Type: TABLE; Schema: public; Owner: belun; Tablespace: 
--

CREATE TABLE planet_osm_line (
    osm_id bigint,
    access text,
    "addr:housename" text,
    "addr:housenumber" text,
    "addr:interpolation" text,
    admin_level text,
    aerialway text,
    aeroway text,
    amenity text,
    area text,
    barrier text,
    bicycle text,
    brand text,
    bridge text,
    boundary text,
    building text,
    construction text,
    covered text,
    culvert text,
    cutting text,
    denomination text,
    disused text,
    embankment text,
    foot text,
    "generator:source" text,
    harbour text,
    highway text,
    historic text,
    horse text,
    intermittent text,
    junction text,
    landuse text,
    layer text,
    leisure text,
    lock text,
    man_made text,
    military text,
    motorcar text,
    name text,
    "natural" text,
    office text,
    oneway text,
    operator text,
    place text,
    population text,
    power text,
    power_source text,
    public_transport text,
    railway text,
    ref text,
    religion text,
    route text,
    service text,
    shop text,
    sport text,
    surface text,
    toll text,
    tourism text,
    "tower:type" text,
    tracktype text,
    tunnel text,
    water text,
    waterway text,
    wetland text,
    width text,
    wood text,
    z_order integer,
    way_area real,
    way geometry(LineString,900913)
);


ALTER TABLE public.planet_osm_line OWNER TO belun;

--
-- TOC entry 184 (class 1259 OID 53339)
-- Name: planet_osm_point; Type: TABLE; Schema: public; Owner: belun; Tablespace: 
--

CREATE TABLE planet_osm_point (
    osm_id bigint,
    access text,
    "addr:housename" text,
    "addr:housenumber" text,
    "addr:interpolation" text,
    admin_level text,
    aerialway text,
    aeroway text,
    amenity text,
    area text,
    barrier text,
    bicycle text,
    brand text,
    bridge text,
    boundary text,
    building text,
    capital text,
    construction text,
    covered text,
    culvert text,
    cutting text,
    denomination text,
    disused text,
    ele text,
    embankment text,
    foot text,
    "generator:source" text,
    harbour text,
    highway text,
    historic text,
    horse text,
    intermittent text,
    junction text,
    landuse text,
    layer text,
    leisure text,
    lock text,
    man_made text,
    military text,
    motorcar text,
    name text,
    "natural" text,
    office text,
    oneway text,
    operator text,
    place text,
    poi text,
    population text,
    power text,
    power_source text,
    public_transport text,
    railway text,
    ref text,
    religion text,
    route text,
    service text,
    shop text,
    sport text,
    surface text,
    toll text,
    tourism text,
    "tower:type" text,
    tunnel text,
    water text,
    waterway text,
    wetland text,
    width text,
    wood text,
    z_order integer,
    way geometry(Point,900913)
);


ALTER TABLE public.planet_osm_point OWNER TO belun;

--
-- TOC entry 185 (class 1259 OID 53407)
-- Name: planet_osm_polygon; Type: TABLE; Schema: public; Owner: belun; Tablespace: 
--

CREATE TABLE planet_osm_polygon (
    osm_id bigint,
    access text,
    "addr:housename" text,
    "addr:housenumber" text,
    "addr:interpolation" text,
    admin_level text,
    aerialway text,
    aeroway text,
    amenity text,
    area text,
    barrier text,
    bicycle text,
    brand text,
    bridge text,
    boundary text,
    building text,
    construction text,
    covered text,
    culvert text,
    cutting text,
    denomination text,
    disused text,
    embankment text,
    foot text,
    "generator:source" text,
    harbour text,
    highway text,
    historic text,
    horse text,
    intermittent text,
    junction text,
    landuse text,
    layer text,
    leisure text,
    lock text,
    man_made text,
    military text,
    motorcar text,
    name text,
    "natural" text,
    office text,
    oneway text,
    operator text,
    place text,
    population text,
    power text,
    power_source text,
    public_transport text,
    railway text,
    ref text,
    religion text,
    route text,
    service text,
    shop text,
    sport text,
    surface text,
    toll text,
    tourism text,
    "tower:type" text,
    tracktype text,
    tunnel text,
    water text,
    waterway text,
    wetland text,
    width text,
    wood text,
    z_order integer,
    way_area real,
    way geometry(Geometry,900913)
);


ALTER TABLE public.planet_osm_polygon OWNER TO belun;

--
-- TOC entry 183 (class 1259 OID 53331)
-- Name: planet_osm_roads; Type: TABLE; Schema: public; Owner: belun; Tablespace: 
--

CREATE TABLE planet_osm_roads (
    osm_id bigint,
    access text,
    "addr:housename" text,
    "addr:housenumber" text,
    "addr:interpolation" text,
    admin_level text,
    aerialway text,
    aeroway text,
    amenity text,
    area text,
    barrier text,
    bicycle text,
    brand text,
    bridge text,
    boundary text,
    building text,
    construction text,
    covered text,
    culvert text,
    cutting text,
    denomination text,
    disused text,
    embankment text,
    foot text,
    "generator:source" text,
    harbour text,
    highway text,
    historic text,
    horse text,
    intermittent text,
    junction text,
    landuse text,
    layer text,
    leisure text,
    lock text,
    man_made text,
    military text,
    motorcar text,
    name text,
    "natural" text,
    office text,
    oneway text,
    operator text,
    place text,
    population text,
    power text,
    power_source text,
    public_transport text,
    railway text,
    ref text,
    religion text,
    route text,
    service text,
    shop text,
    sport text,
    surface text,
    toll text,
    tourism text,
    "tower:type" text,
    tracktype text,
    tunnel text,
    water text,
    waterway text,
    wetland text,
    width text,
    wood text,
    z_order integer,
    way_area real,
    way geometry(LineString,900913)
);


ALTER TABLE public.planet_osm_roads OWNER TO belun;

--
-- TOC entry 187 (class 1259 OID 57322)
-- Name: world_borders; Type: TABLE; Schema: public; Owner: belun; Tablespace: 
--

CREATE TABLE world_borders (
    id integer NOT NULL,
    geom geometry(MultiPolygon,4326),
    fips character varying(2),
    iso2 character varying(2),
    iso3 character varying(3),
    un integer,
    name character varying(50),
    area integer,
    pop2005 integer,
    region integer,
    subregion integer,
    lon double precision,
    lat double precision,
    way geometry(MultiPolygon,900913)
);


ALTER TABLE public.world_borders OWNER TO belun;

--
-- TOC entry 188 (class 1259 OID 57328)
-- Name: world_borders_id_seq; Type: SEQUENCE; Schema: public; Owner: belun
--

CREATE SEQUENCE world_borders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.world_borders_id_seq OWNER TO belun;

--
-- TOC entry 3271 (class 0 OID 0)
-- Dependencies: 188
-- Name: world_borders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: belun
--

ALTER SEQUENCE world_borders_id_seq OWNED BY world_borders.id;


--
-- TOC entry 3127 (class 2604 OID 61232)
-- Name: id; Type: DEFAULT; Schema: public; Owner: belun
--

ALTER TABLE ONLY world_borders ALTER COLUMN id SET DEFAULT nextval('world_borders_id_seq'::regclass);


--
-- TOC entry 3139 (class 2606 OID 58176)
-- Name: geo_adminarea_path_key; Type: CONSTRAINT; Schema: public; Owner: belun; Tablespace: 
--

ALTER TABLE ONLY geo_adminarea
    ADD CONSTRAINT geo_adminarea_path_key UNIQUE (path);


--
-- TOC entry 3141 (class 2606 OID 58174)
-- Name: geo_adminarea_pkey; Type: CONSTRAINT; Schema: public; Owner: belun; Tablespace: 
--

ALTER TABLE ONLY geo_adminarea
    ADD CONSTRAINT geo_adminarea_pkey PRIMARY KEY (pcode);


--
-- TOC entry 3137 (class 2606 OID 57472)
-- Name: world_borders_pkey; Type: CONSTRAINT; Schema: public; Owner: belun; Tablespace: 
--

ALTER TABLE ONLY world_borders
    ADD CONSTRAINT world_borders_pkey PRIMARY KEY (id);


--
-- TOC entry 3134 (class 1259 OID 53503)
-- Name: planet_osm_line_index; Type: INDEX; Schema: public; Owner: belun; Tablespace: 
--

CREATE INDEX planet_osm_line_index ON planet_osm_line USING gist (way);


--
-- TOC entry 3135 (class 1259 OID 53679)
-- Name: planet_osm_line_index_wgs; Type: INDEX; Schema: public; Owner: belun; Tablespace: 
--

CREATE INDEX planet_osm_line_index_wgs ON planet_osm_line USING gist (way);


--
-- TOC entry 3130 (class 1259 OID 53403)
-- Name: planet_osm_point_index; Type: INDEX; Schema: public; Owner: belun; Tablespace: 
--

CREATE INDEX planet_osm_point_index ON planet_osm_point USING gist (way);


--
-- TOC entry 3131 (class 1259 OID 53680)
-- Name: planet_osm_point_index_wgs; Type: INDEX; Schema: public; Owner: belun; Tablespace: 
--

CREATE INDEX planet_osm_point_index_wgs ON planet_osm_point USING gist (way);


--
-- TOC entry 3132 (class 1259 OID 53567)
-- Name: planet_osm_polygon_index; Type: INDEX; Schema: public; Owner: belun; Tablespace: 
--

CREATE INDEX planet_osm_polygon_index ON planet_osm_polygon USING gist (way);


--
-- TOC entry 3133 (class 1259 OID 53681)
-- Name: planet_osm_polygon_index_wgs; Type: INDEX; Schema: public; Owner: belun; Tablespace: 
--

CREATE INDEX planet_osm_polygon_index_wgs ON planet_osm_polygon USING gist (way);


--
-- TOC entry 3128 (class 1259 OID 53402)
-- Name: planet_osm_roads_index; Type: INDEX; Schema: public; Owner: belun; Tablespace: 
--

CREATE INDEX planet_osm_roads_index ON planet_osm_roads USING gist (way);


--
-- TOC entry 3129 (class 1259 OID 53682)
-- Name: planet_osm_roads_index_wgs; Type: INDEX; Schema: public; Owner: belun; Tablespace: 
--

CREATE INDEX planet_osm_roads_index_wgs ON planet_osm_roads USING gist (way);


--
-- TOC entry 3262 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 3265 (class 0 OID 0)
-- Dependencies: 189
-- Name: geo_adminarea; Type: ACL; Schema: public; Owner: belun
--

REVOKE ALL ON TABLE geo_adminarea FROM PUBLIC;
REVOKE ALL ON TABLE geo_adminarea FROM belun;
GRANT ALL ON TABLE geo_adminarea TO belun;
GRANT SELECT ON TABLE geo_adminarea TO josh;
GRANT SELECT ON TABLE geo_adminarea TO PUBLIC;


--
-- TOC entry 3266 (class 0 OID 0)
-- Dependencies: 186
-- Name: planet_osm_line; Type: ACL; Schema: public; Owner: belun
--

REVOKE ALL ON TABLE planet_osm_line FROM PUBLIC;
REVOKE ALL ON TABLE planet_osm_line FROM belun;
GRANT ALL ON TABLE planet_osm_line TO belun;
GRANT ALL ON TABLE planet_osm_line TO josh;
GRANT SELECT ON TABLE planet_osm_line TO PUBLIC;


--
-- TOC entry 3267 (class 0 OID 0)
-- Dependencies: 184
-- Name: planet_osm_point; Type: ACL; Schema: public; Owner: belun
--

REVOKE ALL ON TABLE planet_osm_point FROM PUBLIC;
REVOKE ALL ON TABLE planet_osm_point FROM belun;
GRANT ALL ON TABLE planet_osm_point TO belun;
GRANT ALL ON TABLE planet_osm_point TO josh;
GRANT SELECT ON TABLE planet_osm_point TO PUBLIC;


--
-- TOC entry 3268 (class 0 OID 0)
-- Dependencies: 185
-- Name: planet_osm_polygon; Type: ACL; Schema: public; Owner: belun
--

REVOKE ALL ON TABLE planet_osm_polygon FROM PUBLIC;
REVOKE ALL ON TABLE planet_osm_polygon FROM belun;
GRANT ALL ON TABLE planet_osm_polygon TO belun;
GRANT ALL ON TABLE planet_osm_polygon TO josh;
GRANT SELECT ON TABLE planet_osm_polygon TO PUBLIC;


--
-- TOC entry 3269 (class 0 OID 0)
-- Dependencies: 183
-- Name: planet_osm_roads; Type: ACL; Schema: public; Owner: belun
--

REVOKE ALL ON TABLE planet_osm_roads FROM PUBLIC;
REVOKE ALL ON TABLE planet_osm_roads FROM belun;
GRANT ALL ON TABLE planet_osm_roads TO belun;
GRANT ALL ON TABLE planet_osm_roads TO josh;
GRANT SELECT ON TABLE planet_osm_roads TO PUBLIC;


--
-- TOC entry 3270 (class 0 OID 0)
-- Dependencies: 187
-- Name: world_borders; Type: ACL; Schema: public; Owner: belun
--

REVOKE ALL ON TABLE world_borders FROM PUBLIC;
REVOKE ALL ON TABLE world_borders FROM belun;
GRANT ALL ON TABLE world_borders TO belun;
GRANT SELECT ON TABLE world_borders TO PUBLIC;


-- Completed on 2015-05-15 10:41:54 TLT

--
-- PostgreSQL database dump complete
--

