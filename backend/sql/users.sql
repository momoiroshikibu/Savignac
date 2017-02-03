create table users (
    `id` integer auto_increment,
    `first_name` varchar(255),
    `last_name` varchar(255),
    `mail_address` varchar(255),
    `password_hash` varchar(255),
    `created_at` date,
    primary key(id)
);


insert into users values (null, 'taro', 'momo', 'test@example.com', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', null);
