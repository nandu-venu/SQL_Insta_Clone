use insta_clone;
select count(*) from photo_tags;

desc users;

select username
from users
order by created_at limit 5 ;

select dayname(created_at) as "DAY",
	COUNT(*) as "No. of users"
from users
group by DAY
order by "No. of users" desc limit 2;

#finding inactive users
select username
from users
left join photos
on users.id=photos.user_id
where photos.id is null; 

# who has the maximum likes
select 
	username,
    count(*) as No_of_likes
from users
join photos
	on users.id=photos.user_id
join likes
	on likes.photo_id=photos.id
group by photo_id
order by No_of_Likes desc limit 10;
    
#Average no. of user posts

select 
	round((select count(*) from photos)/(select count(*) from users),2) as average;

#popular hashtags
select tags.id, tag_name,count(*) as total
from tags
join photo_tags
	on tags.id=photo_tags.tag_id
group by tags.id
order by total desc limit 10;

#finding bots
select username,count(*) as Total
from users
join likes
	on users.id=likes.user_id
group by (likes.user_id)
having Total=(select count(*) from photos) #having is equivalent to where that works with join/group by statements
order by total desc;













