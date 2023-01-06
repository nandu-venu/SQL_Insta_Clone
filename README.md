# SQL_Insta_Clone

In this scenario, we are creating a database for a social media application similar to Instagram. The database is called ig_clone and it contains the following tables:
users: This table stores information about each user of the application, including their id, username, and the created_at timestamp of when their account was created.
photos: This table stores information about each photo that is uploaded to the application, including its id, image_url, the user_id of the user who uploaded it, and the created_at timestamp of when it was uploaded. It has a foreign key constraint on the user_id column, referencing the id column in the users table.
comments: This table stores information about each comment that is made on a photo, including its id, the comment_text, the photo_id of the photo it is commenting on, the user_id of the user who made the comment, and the created_at timestamp of when the comment was made. It has foreign key constraints on the photo_id and user_id columns, referencing the id column in the photos and users tables, respectively.
likes: This table stores information about each "like" that is given to a photo, including the user_id of the user who liked the photo, the photo_id of the photo that was liked, and the created_at timestamp of when the like was given. It has foreign key constraints on the user_id and photo_id columns, referencing the id column in the users and photos tables, respectively. It also has a primary key constraint on the combination of the user_id and photo_id columns, to prevent a user from liking the same photo multiple times.
follows: This table stores information about each "follow" relationship between users, including the follower_id of the user who is following, the followee_id of the user being followed, and the created_at timestamp of when the follow was made. It has foreign key constraints on the follower_id and followee_id columns, referencing the id column in the users table. It also has a primary key constraint on the combination of the follower_id and followee_id columns, to prevent a user from following the same user multiple times.
tags: This table stores information about each tag that is used on the application, including its id, tag_name, and the created_at timestamp of when it was



