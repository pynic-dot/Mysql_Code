SELECT email,date_format(MIN(created_at), "%M %D %Y") as Earliest_date from users
;
SELECT * from users WHERE created_at = ( SELECT MIN(created_at) from users);

SELECT email,date_format(created_at, "%M %D %Y") as Earliest_date from users
ORDER by  created_at ASC
LIMIT 1
;


SELECT MONTHNAME(created_at) as month, COUNT(email) as Count_User 
from users
GROUP by month;


# yahoo email.id 


select count(email) as Yahoo_mail from users
where email LIKE '%@yahoo.com%';





SELECT
    CASE
        WHEN email like "%@gmail.com%" then "Gmail"
        WHEN email like "%@yahoo.com%" then "Yahoo"
        WHEN email like "%@hotmail.com%" then "Hotmail"
        ELSE 'Other'
    END as provider,
count(*) as total_user
from users
GROUP BY provider;
