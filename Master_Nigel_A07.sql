
SELECT Zip
FROM VIEWER 
WHERE LEN(Zip)<4;


SELECT MovieTitle AS 'Thrilling Cartoons'
FROM MOVIE
WHERE thriller = 1 and animation = 1; 


SELECT UserId 
FROM VIEWER
WHERE occupation = 'lawyer' AND (AGE > 30 OR gender='F')

SELECT COUNT (Occupation) AS 'Jobs in Healthcare ', Occupation
FROM VIEWER
WHERE Occupation = 'Administrator' OR Occupation = 'Doctor' OR Occupation = 'Healthcare'
GROUP BY Occupation
ORDER BY Occupation DESC ;


SELECT MovieTitle 
FROM MOVIE
WHERE MovieTitle LIKE '%(198)' 
ORDER BY MovieTitle ASC; 


SELECT UserID, AVG(RATING) AS 'Average Rating'
FROM dbo.RATING 
GROUP BY UserId 
HAVING (AVG(Rating)=2);


SELECT MIN(Age) AS 'Youngest Age', MAX(Age) AS 'Oldest Age', AVG(Age) AS 'Average Age', Occupation 
FROM VIEWER
LEFT JOIN RATING ON Viewer.UserID = rating.userid 
LEFT JOIN MOVIE ON rating.MovieID = movie.MovieID 
WHERE comedy = 5 AND rating = 1
GROUP BY Occupation
ORDER BY Occupation ASC; 
 
 
SELECT Occupation, COUNT (*) AS 'Occupation Count'
FROM VIEWER
WHERE Occupation NOT IN ('artists','writers')
GROUP BY Occupation 
ORDER BY COUNT(*) DESC;



SELECT gender, AVG(AGE) AS "Average Age", 
AVG(rating) AS "Average Rating",
COUNT(RATING) AS "Number Of Ratings"
FROM VIEWER 
LEFT JOIN RATING ON Viewer.UserID = Rating.Userid
LEFT JOIN MOVIE ON RATING.MovieID = Movie.MovieID 
WHERE Occupation = 'lawyer' AND MovieTitle LIKE '%(198_)'
GROUP BY Gender;


SELECT Occupation, AVG(CAST(Age AS DECIMAL(6,3))) AS "Average Age"
FROM VIEWER
WHERE Gender = 'F'
GROUP BY Occupation
HAVING AVG(CAST(Age AS DECIMAL (6,3))) > 40 
ORDER BY Occupation; 


SELECT Occupation, AVG(Age) AS "Average Age" 
FROM VIEWER 
WHERE Gender = 'F'
GROUP BY Occupation
HAVING AVG(Age) > 40 
ORDER BY Occupation; 
