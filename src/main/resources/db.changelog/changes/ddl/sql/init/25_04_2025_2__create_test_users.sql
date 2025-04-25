insert into users (id, cohort_start_date, email, name, password, phone_number, username, rate, count, avatar, enabled)
values  ('218cf602-d846-11ed-afa1-0242ac120002', current_date, 'test@mail.com', 'Admin Adminovich', '$2a$12$qlHfW5DyWsRoutTBkSy7/.QjVYNsHOSi4a1yrnUgUymxoHzFgKmNK', '79788563182', 'admin', 5.0, 1, '', true),
        ('218cf8fa-d846-11ed-afa1-0242ac120002', current_date, 'non-test@mail.com', 'Vasya RND', '$2a$12$qlHfW5DyWsRoutTBkSy7/.QjVYNsHOSi4a1yrnUgUymxoHzFgKmNK', '79788563183', 'user1', 0.0, 0, '', true),
        ('218cf9fe-d846-11ed-afa1-0242ac120002', current_date, 'super-test@mail.com', 'Mary Bibika', '$2a$12$qlHfW5DyWsRoutTBkSy7/.QjVYNsHOSi4a1yrnUgUymxoHzFgKmNK', '79788563184', 'mary', 0.0, 0, '', true),
        ('218cfaf8-d846-11ed-afa1-0242ac120002', current_date, 'mega-test@mail.com', 'Danila Bagrov', '$2a$12$qlHfW5DyWsRoutTBkSy7/.QjVYNsHOSi4a1yrnUgUymxoHzFgKmNK', '79788563185', 'danila', 0.0, 0, '', true);

insert into authorities (authority, username)
values  ('ROLE_ADMIN', 'admin'),
        ('ROLE_CONSUMER', 'admin'),
        ('ROLE_PRODUCER', 'admin'),
        ('ROLE_PRODUCER', 'user1'),
        ('ROLE_CONSUMER', 'user1'),
        ('ROLE_CONSUMER', 'mary'),
        ('ROLE_CONSUMER', 'danila');


insert into category (id, name)
values  ('23fe20bc-d848-11ed-afa1-0242ac120002', 'Ремонт компьютеров'),
        ('23fe23c8-d848-11ed-afa1-0242ac120002', 'Услуги курьера'),
        ('23fe2580-d848-11ed-afa1-0242ac120002', 'Ремонт бытовой техники'),
        ('23fe2706-d848-11ed-afa1-0242ac120002', 'Услуги бухгалтера'),
        ('23fe286e-d848-11ed-afa1-0242ac120002', 'Разработка мобильных приложений');

