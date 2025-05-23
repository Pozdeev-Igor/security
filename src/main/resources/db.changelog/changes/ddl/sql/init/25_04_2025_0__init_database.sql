CREATE TABLE users
(
    id                uuid    not null constraint user_id_pkey primary key,
    cohort_start_date date,
    email             varchar(90),
    name              varchar(100),
    password          varchar(100),
    phone_number      varchar(13),
    username          varchar(100) constraint user_username_key unique,
    rate              float4,
    count             int8,
    avatar            varchar,
    enabled           boolean not null
);

CREATE TABLE authorities
(
    authority varchar(50),
    username       varchar(50) not null,
    foreign key (username) references users (username)
);

CREATE TABLE category
(
    id   uuid primary key,
    name VARCHAR(255)
);

CREATE TABLE services
(
    id          uuid PRIMARY KEY,
    title       VARCHAR(255),
    description VARCHAR(5000),
    category_id uuid,
    price       VARCHAR(16),
    status      VARCHAR(25),
    user_id     uuid,
    foreign key (category_id) references category (id),
    foreign key (user_id) references users (id)
);


create table images
(
    id         uuid primary key,
    link       varchar(255),
    service_id uuid,
    foreign key (service_id) references services (id)
);

create table comments
(
    id           uuid primary key,
    created_date timestamp,
    text         varchar(5000),
    service_id   uuid,
    user_id      uuid,
    foreign key (service_id) references services (id),
    foreign key (user_id) references users (id)
);

create table comments_answer
(
    id           uuid primary key,
    created_date timestamp,
    text         varchar(5000),
    comment_id   uuid,
    user_id      uuid,
    foreign key (comment_id) references comments (id),
    foreign key (user_id) references users (id)
);

create table users_services
(
    user_id    uuid,
    service_id uuid,
    foreign key (user_id) references users (id),
    foreign key (service_id) references services (id)
);
