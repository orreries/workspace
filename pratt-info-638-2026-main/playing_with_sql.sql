drop database if exists my_first_db;

create database my_first_db;

\c my_first_db;


create table authors (
  id serial primary key,
  first_name text,
  last_name text
);

CREATE TABLE genres (
  id serial primary key,
  name text
);

CREATE TABLE books (
  id serial primary key,
  title text,
  genre_id int,
  publishing_year int
);


insert into authors (first_name, last_name) values ('leo', 'tolstoy');
insert into authors (first_name, last_name) values ('James', 'S. A. Corey');
insert into authors (first_name, last_name) values ('Craig', 'Alanson');
insert into authors (first_name, last_name) values ('Cixin', 'Liu');
insert into authors (first_name, last_name) values ('John', 'Scalzi');

insert into bookrs (title, publishing_year) values ('The Bluest Eye', '1960');
insert into bookrs (title, publishing_year) values ('pride and prejudice', '1800');
insert into bookrs (title, publishing_year) values ('king lear', '1700');
insert into bookrs (title, publishing_year) values ('the giving tree', '1960')

insert into genres (title, publishing_year) values ('Horror', '0000')
insert into genres (title, publishing_year) values ('SciFi', '0000')
insert into genres (title, publishing_year) values ('Thriller', '0000')

