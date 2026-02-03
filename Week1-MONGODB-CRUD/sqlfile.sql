select * from Post;

SELECT accid, SUM(likes) AS total_likes
FROM Post
GROUP BY accid
HAVING SUM(likes) > (
    SELECT AVG(likes) FROM Post
);

SELECT postid,
       (likes + shares + pagevisit) AS engagement
FROM Post
ORDER BY engagement DESC
LIMIT 3;

SELECT p.postid, p.accid, p.likes
FROM Post p
WHERE p.likes > (
    SELECT AVG(likes)
    FROM Post
    WHERE accid = p.accid
);

SELECT postid, accid, likes,
       RANK() OVER (ORDER BY likes DESC) AS like_rank
FROM Post;



SELECT postid, accid, likes,
       RANK() OVER (ORDER BY likes DESC) AS like_rank
FROM Post;

SELECT MIN(pagevisit) AS min_page_visits
FROM Post;

SELECT MAX(shares) AS max_shares
FROM Post;