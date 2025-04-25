insert into users (id, cohort_start_date, email, name, password, phone_number, username, rate, count, avatar)
values  ('218cf602-d846-11ed-afa1-0242ac120002', current_date, 'test@mail.com', 'Admin Adminovich', '$2a$12$qlHfW5DyWsRoutTBkSy7/.QjVYNsHOSi4a1yrnUgUymxoHzFgKmNK', '79788563182', 'admin', 5.0, 1, ''),
        ('218cf8fa-d846-11ed-afa1-0242ac120002', current_date, 'non-test@mail.com', 'Vasya RND', '$2a$12$qlHfW5DyWsRoutTBkSy7/.QjVYNsHOSi4a1yrnUgUymxoHzFgKmNK', '79788563183', 'user1', 0.0, 0, ''),
        ('218cf9fe-d846-11ed-afa1-0242ac120002', current_date, 'super-test@mail.com', 'Mary Bibika', '$2a$12$qlHfW5DyWsRoutTBkSy7/.QjVYNsHOSi4a1yrnUgUymxoHzFgKmNK', '79788563184', 'mary', 0.0, 0, ''),
        ('218cfaf8-d846-11ed-afa1-0242ac120002', current_date, 'mega-test@mail.com', 'Danila Bagrov', '$2a$12$qlHfW5DyWsRoutTBkSy7/.QjVYNsHOSi4a1yrnUgUymxoHzFgKmNK', '79788563185', 'danila', 0.0, 0, '');

insert into authorities (id, authority_name, user_id)
values  ('d94807d0-d893-11ed-afa1-0242ac120002', 'ROLE_ADMIN', '218cf602-d846-11ed-afa1-0242ac120002'),
        ('d9480b54-d893-11ed-afa1-0242ac120002', 'ROLE_CONSUMER', '218cf602-d846-11ed-afa1-0242ac120002'),
        ('d9480cf8-d893-11ed-afa1-0242ac120002', 'ROLE_PRODUCER', '218cf602-d846-11ed-afa1-0242ac120002'),
        ('d9480e60-d893-11ed-afa1-0242ac120002', 'ROLE_PRODUCER', '218cf8fa-d846-11ed-afa1-0242ac120002'),
        ('d94811f8-d893-11ed-afa1-0242ac120002', 'ROLE_CONSUMER', '218cf8fa-d846-11ed-afa1-0242ac120002'),
        ('d94813c4-d893-11ed-afa1-0242ac120002', 'ROLE_CONSUMER', '218cf9fe-d846-11ed-afa1-0242ac120002'),
        ('d9481540-d893-11ed-afa1-0242ac120002', 'ROLE_CONSUMER', '218cfaf8-d846-11ed-afa1-0242ac120002');


insert into category (id, name)
values  ('23fe20bc-d848-11ed-afa1-0242ac120002', 'Ремонт компьютеров'),
        ('23fe23c8-d848-11ed-afa1-0242ac120002', 'Услуги курьера'),
        ('23fe2580-d848-11ed-afa1-0242ac120002', 'Ремонт бытовой техники'),
        ('23fe2706-d848-11ed-afa1-0242ac120002', 'Услуги бухгалтера'),
        ('23fe286e-d848-11ed-afa1-0242ac120002', 'Разработка мобильных приложений');

