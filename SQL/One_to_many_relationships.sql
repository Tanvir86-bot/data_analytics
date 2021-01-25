-- One To Many Relationships --

CREATE TABLE Videos(
Unique_id serial PRIMARY KEY,
Video_title VArChar(255), 
URL VarChar (255),
length TIME);

SELECT * FROM Videos;

INSERT INTO Videos (unique_id, video_title, url, length)
VALUES ('2', 'Godzilla vs. Kong', 'www.youtube.com/watch?v=odM92ap8_c0&list=PLrEnWoR732-BHrPp_Pm8_VleD68f9s14-&index=1', '00:02:24'),
	('6', 'Game Theory: KFC Just WON The Console Wars', 'www.youtube.com/watch?v=WEdbAsl2cPs&list=PLrEnWoR732-BHrPp_Pm8_VleD68f9s14-&index=2', '00:13:01'),
	('15', 'UFC 257: Post-fight Press Conference', 'www.youtube.com/watch?v=oi5QIo0LG18&list=PLrEnWoR732-BHrPp_Pm8_VleD68f9s14-&index=6', '01:22:32');
SELECT * FROM Videos;

CREATE TABLE Reviews(
Unique_id serial PRIMARY KEY,
User_name VarChar (50) not null,
Rating decimal (5,0),
short_review VarChar (250) not null);
SELECT * FROM Reviews;

INSERT INTO Reviews (unique_id, user_name, rating, short_review )
VALUES ('2', 'Asher', '3.5', 'null'),
	('15', 'Anon', '4', 'null'),
	('6', 'Ashely', '2.5', 'null');
SELECT Distinct * FROM Reviews;

UPDATE Reviews
SET short_review = 'Damn I bet on Conor, but Dustin’s durability really impressed me tonight. He took some shots and break Conor down.'
WHERE user_name LIKE 'A%on';
SELECT Distinct * FROM Reviews;

UPDATE Reviews
SET short_review = 'This little moment of my life is called happiness'
WHERE user_name LIKE '%sher%';
SELECT Distinct * FROM Reviews;

SELECT * FROM VIDEOS
INNER JOIN Reviews 
ON Videos.unique_id = Reviews.unique_id
ORDER BY Videos ASC;

-- finalized answer as the best join is the Inner join -- 


