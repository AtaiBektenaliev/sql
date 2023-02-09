CREATE TABLE public."Trip"
(
    id integer NOT NULL,
    company_id integer NOT NULL,
    plane character varying,
    town_from character varying,
    town_to character varying,
    time_out timestamp without time zone,
    time_in timestamp without time zone,
    PRIMARY KEY (id)
);

CREATE TABLE public."Company"
(
    id integer NOT NULL,
    name character varying NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE public."Pass_in_trip"
(
    id integer NOT NULL,
    trip integer,
    passenger integer,
    place character varying,
    PRIMARY KEY (id, trip, passenger, place)
);

CREATE TABLE public."Passenger"
(
    id integer NOT NULL,
    name character varying NOT NULL,
    PRIMARY KEY (id)
);

alter table "Trip" add foreign key (company_id) references "Company" (id);
alter table "Pass_in_trip" add foreign key (trip) references "Trip" (id);
alter table "Pass_in_trip" add foreign key (passenger) references "Passenger" (id);

insert into "Passenger" values (1, 'Bruce Willis');
insert into "Passenger" values (2, 'George Clooney');
insert into "Passenger" values (3, 'Kevin Costner');
insert into "Passenger" values (4, 'Donald Sutherland');
insert into "Passenger" values (5, 'Jennifer Lopez');
insert into "Passenger" values (6, 'Ray Liotta');
insert into "Passenger" values (7, 'Samuel L. Jackson');
insert into "Passenger" values (8, 'Nikole Kidman');
insert into "Passenger" values (9, 'Alan Rickman');
insert into "Passenger" values (10, ' Kurt Russell');
insert into "Passenger" values (11 , 'Harrison Ford');
insert into "Passenger" values (12,  'Russell Crowe');
insert into "Passenger" values (13, 'Steve Martin');
insert into "Passenger" values (14, 'Michael Caine');
insert into "Passenger" values (15,'Angelina Jolie');
insert into "Passenger" values (16,'Mel Gibson');
insert into "Passenger" values (17,'Michael Douglas');
insert into "Passenger" values (18,'John Travolta');
insert into "Passenger" values (19,'Sylvester Stallone');
insert into "Passenger" values (20,'Tommy Lee Jones');
insert into "Passenger" values (21,'Catherine Zeta-Jones');
insert into "Passenger" values (22,'Antonio Banderas');
insert into "Passenger" values (23,'Kim Basinger');
insert into "Passenger" values (24,'Sam Neill');
insert into "Passenger" values (25,'Gary Oldman');
insert into "Passenger" values (26,'ClINT Eastwood');
insert into "Passenger" values (27,'Brad Pitt');
insert into "Passenger" values (28,' Johnny Depp');
insert into "Passenger" values (29,'Pierce Brosnan');
insert into "Passenger" values (30,' Sean Connery');
insert into "Passenger" values (31,' Bruce Willis');
insert into "Passenger" values (37,' Mullah Omar');



insert into "Company" values (1 ,  'Don_avia');
insert into "Company" values(2,   'Aeroflot' );
insert into "Company" values(3 ,  'Dale_avia');
insert into "Company" values(4 ,  'air_France');
insert into "Company" values(5 ,  'British_AW');


INSERT INTO "Pass_in_trip" VALUES
                               (1, 1100, 1, '1a'),
                               (2, 1123, 3, '2a'),
                               (3, 1123, 1, '4c'),
                               (4, 1123, 6, '4b'),
                               (5, 1124, 2, '2d'),
                               (6, 1145, 3, '2c'),
                               (7, 1181, 1, '1a'),
                               (8, 1181, 6, '1b'),
                               (9, 1181, 8, '3c'),
                               (10, 1181, 5, '1b'),
                               (11, 1182, 5, '4b'),
                               (12, 1187, 8, '3a'),
                               (13, 1188, 8, '3a'),
                               (14, 1182, 9, '6d'),
                               (15, 1145, 5, '1d'),
                               (16, 1187, 10, '3d'),
                               (17, 8882, 37, '1a'),
                               (18, 7771, 37, '1c'),
                               (19, 7772, 37, '1a'),
                               (20, 8881, 37, '1d'),
                               (21, 7778, 10, '2a'),
                               (22, 7772, 10, '3a'),
                               (23, 7771, 11, '4a'),
                               (24, 7771, 11, '1b'),
                               (25, 7771, 11, '5a'),
                               (26, 7772, 12, '1d'),
                               (27, 7773, 13, '2d'),
                               (28, 7772, 13, '1b'),
                               (29, 8882, 14, '3d'),
                               (30, 7771, 14, '4d'),
                               (31, 7771, 14, '5d'),
                               (32, 7772, 14, '1c');



INSERT INTO "Trip" VALUES
                       (1100, 4, 'Boeing', 'Rostov', 'Paris', '1900-01-01 14:30:00', '1900-01-01T17:50:00.000Z'),
                       (1101, 4, 'Boeing', 'Paris', 'Rostov', '1900-01-01 08:12:00', '1900-01-01T11:45:00.000Z'),
                       (1123, 3, 'TU-154', 'Rostov', 'Vladivostok', '1900-01-01 16:20:00', '1900-01-02T03:40:00.000Z'),
                       (1124, 3, 'TU-154', 'Vladivostok', 'Rostov', '1900-01-01 09:00:00', '1900-01-01T19:50:00.000Z'),
                       (1145, 2, 'IL-86', 'Moscow', 'Rostov', '1900-01-01 09:35:00', '1900-01-01T11:23:00.000Z'),
                       (1146, 2, 'IL-86', 'Rostov', 'Moscow', '1900-01-01 17:55:00', '1900-01-01T20:01:00.000Z'),
                       (1181, 1, 'TU-134', 'Rostov', 'Moscow', '1900-01-01 06:12:00', '1900-01-01T08:01:00.000Z'),
                       (1182, 1, 'TU-134', 'Moscow', 'Rostov', '1900-01-01 12:35:00', '1900-01-01T14:30:00.000Z'),
                       (1187, 1, 'TU-134', 'Rostov', 'Moscow', '1900-01-01 15:42:00', '1900-01-01T17:39:00.000Z'),
                       (1188, 1, 'TU-134', 'Moscow', 'Rostov', '1900-01-01 22:50:00', '1900-01-02T00:48:00.000Z'),
                       (1195, 1, 'TU-154', 'Rostov', 'Moscow', '1900-01-01 23:30:00', '1900-01-02T01:11:00.000Z'),
                       (1196, 1, 'TU-154', 'Moscow', 'Rostov', '1900-01-01 04:00:00', '1900-01-01T05:45:00.000Z'),
                       (7771, 5, 'Boeing', 'London', 'Singapore', '1900-01-01 01:00:00', '1900-01-01T11:00:00.000Z'),
                       (7772, 5, 'Boeing', 'Singapore', 'London', '1900-01-01 12:00:00', '1900-01-02T02:00:00.000Z'),
                       (7773, 5, 'Boeing', 'London', 'Singapore', '1900-01-01T03:00:00.000Z', '1900-01-01T13:00:00.000Z'),
                       (7774, 5, 'Boeing', 'Singapore', 'London', '1900-01-01T14:00:00.000Z', '1900-01-02T06:00:00.000Z'),
                       (7775, 5, 'Boeing', 'London', 'Singapore', '1900-01-01T09:00:00.000Z', '1900-01-01T20:00:00.000Z'),
                       (7776, 5, 'Boeing', 'Singapore', 'London', '1900-01-01T18:00:00.000Z', '1900-01-02T08:00:00.000Z'),
                       (7777, 5, 'Boeing', 'London', 'Singapore', '1900-01-01T18:00:00.000Z', '1900-01-02T06:00:00.000Z'),
                       (7778, 5, 'Boeing', 'Singapore', 'London', '1900-01-01T22:00:00.000Z', '1900-01-02T12:00:00.000Z'),
                       (8881, 5, 'Boeing', 'London', 'Paris', '1900-01-01T03:00:00.000Z', '1900-01-01T04:00:00.000Z'),
                       (8882, 5, 'Boeing', 'Paris', 'London', '1900-01-01T22:00:00.000Z', '1900-01-01T23:00:00.000Z');



--2--
select name  from "Company";
--4--
select name from "Passenger" where name = '%man%';
--1--
select name from "Passenger" join "Pass_in_trip" on "Pass_in_trip".passenger = "Passenger".id;
--3--
select * from "Trip" where town_from = 'Moscow';
--5--
select * from "Trip" where plane = 'TU-134';
--6--
select name from "Company" join "Trip" on "Company".id = "Trip".company_id where plane = 'Boeing';
--7--
select plane from "Trip" where town_to = 'Moscow';
--9--
select name from "Company" join "Trip" on "Company".id = "Trip".company_id where town_from = 'Vladivostok';
--12--
select id, count(*) from "Passenger" join "Pass_in_trip" on "Passenger".id = "Pass_in_trip".passenger group by id;
--14--
select town_to from "Trip" join "Pass_in_trip" on "Trip".id = "Pass_in_trip".trip where passenger = 1;
--15--
select time_in from "Trip" join "Pass_in_trip" on "Trip".id = "Pass_in_trip".trip where passenger = 13;
--16--
select count(*) from "Trip" join "Company" on "Trip".company_id = "Company".id where town_from = 'Rostov' and town_to = 'Moscow';
--17--
SELECT name FROM "Passenger" ORDER BY LENGTH(name) DESC LIMIT 1;
--18--
select name
from "Passenger"
group by name
having count(*) > 1;
