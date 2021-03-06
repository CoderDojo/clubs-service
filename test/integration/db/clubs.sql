CREATE TABLE cd_dojos (
    id character varying NOT NULL,
    mysql_dojo_id integer,
    dojo_lead_id character varying,
    name character varying NOT NULL,
    creator character varying,
    created timestamp with time zone,
    verified_at timestamp with time zone,
    verified_by character varying,
    verified smallint DEFAULT 0 NOT NULL,
    need_mentors smallint DEFAULT 0 NOT NULL,
    stage smallint DEFAULT 0 NOT NULL,
    mailing_list smallint DEFAULT 0 NOT NULL,
    alternative_frequency character varying,
    country json,
    county json,
    state json,
    city json,
    place json,
    coordinates character varying,
    geo_point json,
    notes text,
    email character varying,
    website character varying,
    twitter character varying,
    google_group character varying,
    supporter_image character varying,
    deleted smallint DEFAULT 0 NOT NULL,
    deleted_by character varying,
    deleted_at timestamp with time zone,
    private smallint DEFAULT 0 NOT NULL,
    url_slug character varying,
    continent character varying,
    alpha2 character varying,
    alpha3 character varying,
    address1 character varying,
    address2 character varying,
    country_number integer,
    country_name character varying,
    admin1_code character varying,
    admin1_name character varying,
    admin2_code character varying,
    admin2_name character varying,
    admin3_code character varying,
    admin3_name character varying,
    admin4_code character varying,
    admin4_name character varying,
    place_geoname_id character varying,
    place_name character varying,
    user_invites json[],
    creator_email character varying,
    tao_verified smallint DEFAULT 0 NOT NULL,
    expected_attendees smallint,
    facebook character varying,
    eventbrite_token character varying,
    eventbrite_wh_id character varying,
    day smallint,
    start_time time without time zone,
    end_time time without time zone,
    frequency character varying,
    CONSTRAINT day_range CHECK (((day >= 1) AND (day <= 7))),
    CONSTRAINT pk_cd_dojos_id PRIMARY KEY (id)
);
