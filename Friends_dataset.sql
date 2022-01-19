

-- This dataset is from ONYX DATA, This is the participation of their monthly Visualzation challenge
-- After Uploading the Friends Dataset to Sql Server, I selected it to directly access the table

USE [Friends Dataset]

-- Select all of the data to get the hang of it


SELECT *
FROM friends_episodes_v3



-- Check weather the count of episodes is correct or not


SELECT COUNT(*)
FROM friends_episodes_v3

-- Check how many directors there are


SELECT COUNT(DISTINCT Director)
FROM friends_episodes_v3


-- Check how many times each director worked on an episode


SELECT Director, COUNT(Director) AS CountDirector
FROM friends_episodes_v3
GROUP BY Director
ORDER BY 2 DESC


-- Check Average of stars and votes per director


SELECT  Director, ROUND(AVG(Stars), 2) AS AvgStars, AVG(Votes) AS AvgVotes 
FROM friends_episodes_v3
 GROUP BY Director
ORDER BY AvgStars DESC


-- Check each season's Maximum and Minimum stars given to an episode 


SELECT Season, MAX(Stars) AS MaxStars, MIN(Stars) AS MinStars
FROM friends_episodes_v3
GROUP BY  Season
ORDER BY MaxStars DESC