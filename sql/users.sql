create table users (
    `id` integer auto_increment,
    `first_name` varchar(255),
    `last_name` varchar(255),
    `mail_address` varchar(255),
    `password_hash` varchar(255),
    `created_at` date,
    primary key(id)
);
