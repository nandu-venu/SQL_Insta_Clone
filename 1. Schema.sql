show databases;
drop database insta_clone;
create database insta_clone;
use insta_clone;
show tables;

create table users(
	id INT auto_increment primary key,
	username VARCHAR(255) unique not null,
    created_at timestamp default now());

create table photos(
	id INT auto_increment primary key,
    image_url VARCHAR(255) not null,
    user_id int not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(id));
    
desc photos;

create table comments(
	id INT primary key auto_increment,
    user_id int not null,
    comment_text VARCHAR(255) not null,
    photo_id INT not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(id),
    foreign key(photo_id) references photos(id)
);
   
desc comments;

create table likes(
	user_id INT,
    photo_id INT,
    created_at datetime default now(),
	foreign key(user_id) references users(id),
    foreign key(photo_id) references photos(id),  # we don't need to refer to a specific like anywhere, that is why no id here.
    primary key(user_id,photo_id)  # restricting muliple likes on the same pic by same person
);
    
create table follows(
    follower_id INT not null,
    followee_id INT not null,
    created_at timestamp default now(),
    foreign key(follower_id) references users(id),
    foreign key(followee_id) references users(id),
    primary key(follower_id,followee_id)
    );
    
create table tags(
	id int auto_increment primary key,
    tag_name VARCHAR(255) unique,
    created_at timestamp default now()
);

create table photo_tags(
	photo_id int not null,
    tag_id int not null,
    foreign key(photo_id) references photos(id),
    foreign key(tag_id) references tags(id),
    primary key(photo_id,tag_id)
);
    

