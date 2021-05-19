select username, created_at from users
ORDER BY created_at ASC
LIMIT 5;

select dayname(created_at) AS ND, COUNT(username) as totalU from users 
GROUP BY ND
ORDER BY totalU;


select username, photos.id from users
LEFT JOIN photos
on users.id = photos.user_id;


SELECT 
    username,
    photos.id,
    photos.image_url,
    COUNT(photos.image_url) AS TOTAL
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC;


SELECT (SELECT Count(*) 
        FROM   photos) / (SELECT Count(*) 
                          FROM   users) AS avg;
                          
                          
                          
                          
SELECT tags.tag_name,
COUNT(*) as totaltag
from photo_tags
join tags
on tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER by totaltag DESC
limit 3;

        
        
        
SELECT username, 
Count(*) AS num_likes 
FROM   users 
INNER JOIN likes 
ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) FROM   photos); 