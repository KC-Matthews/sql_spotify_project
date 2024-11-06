--Create a Database and immport the data

--Create 2 tables with a primary key connecting them and 
--unique columns per table. Don't forget to add the 
--DATA TYPES for each column!

CREATE TABLE Spotify_Users ( 
	User_id INTEGER PRIMARY KEY, 
	Age VARCHAR, 
	Gender TEXT, 
	Spotity_Usage_Period VARCHAR, 
	Spotify_Listening_Device VARCHAR, 
	Fav_Pod_Genre TEXT,
	Prefered_Pod_Format TEXT, 
	Pod_Host_Preference TEXT,
	Music_Influencial_Mood VARCHAR, 
	Prefered_Listening_Content TEXT, 
	Fav_Music_Genre TEXT) ;

CREATE TABLE Engagement_Table (
	User_id INTEGER PRIMARY KEY, 
	Spotify_Usage_Period VARCHAR, 
	Spotify_Subscription_Plan VARCHAR,
	Premium_Sub_Willingness TEXT,
	Preferred_Premium_Plan VARCHAR,
	Music_Time_Slot TEXT,
	Music_Lis_Frequency VARCHAR, 
	Music_Expl_Method VARCHAR,
	Music_Recc_Rating INTEGER,
	Pod_Lis_Frequency TEXT,
	Preferred_Pod_Duration TEXT,
	Pod_Variety_Satisfaction TEXT) ;
	
--Drop tables Spotify_Users & Engagement_Table

DROP TABLE Spotify_Users; 

DROP TABLE Engagement_Table;

SELECT *
FROM Engagement;
SELECT *
FROM Spotify_User;

--How many female users music_time_slot are in the Afternoon?

SELECT su.Gender, COUNT(*)AS count_gender
FROM Engagement AS e
LEFT JOIN Spotify_User AS su 
ON e.User_id = su.User_id
WHERE e.Music_Time_Slot = 'Afternoon'
GROUP BY su.Gender; 

--A CASE statement to categorize age into 'Children' for 6-12, 'Young' for 12-20,
--'Young Adult' for 20-25, 'Middle-aged' for 30-60, 'Elderly' for everything else. 
--Name the CASE statement as age_group
--Count the genre of music for each age group, 
--rounded by 0.
--What is the count genre of music rock for age groups that are Young Adult?

SELECT 
	age, 
	ROUND(COUNT(Fav_Music_Genre)) AS count_music_genre, fav_music_genre,
CASE WHEN age = '6-12' THEN 'Children'
WHEN age = '12-20' THEN 'Young'
WHEN age = '20-35' THEN 'Young Adult'
WHEN age = '35-60' THEN 'Middle-aged'
ELSE 'Elderly' END AS age_group
FROM Spotify_User 
GROUP BY fav_music_genre;

--What is the Music_Lis_Frequency & fav_pod_genre for the age group 30-60?

SELECT 
	e.Music_Lis_Frequency,
	su.Fav_Pod_Genre, 
	su.age,
	COUNT(*) AS count_users
FROM Engagement AS e
LEFT JOIN Spotify_User AS su 
ON e.User_id = su.User_id
GROUP BY su.age;

--Find each distinct music_influencial_mood
--where the preferred_pod_format is Story telling

SELECT DISTINCT(music_influencial_mood)
FROM Engagement
GROUP BY music_Influencial_mood
HAVING preffered_pod_format =
	(
	SELECT preffered_pod_format 
	FROM Engagement
	WHERE preffered_pod_format  = 'Story telling'
	);
	
--Find the age group whose fav_pod_genre is comedy
--and fav_music_genre is classical

SELECT fav_pod_genre, fav_music_genre, Age 
FROM Spotify_User
WHERE Spotify_Listening_Device <> '%Smartphone%'
GROUP BY Fav_Music_Genre ; 