/*

# creating the database 
create database backend_assignment;

*/

# using the database
use backend_assignment;

#---------------------------------------------CREATING TABLES-------------------------------------------------------

/*

#creating users table
CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  username VARCHAR(255),
  email VARCHAR(255),
  created_at DATETIME
);

#creating movies table
CREATE TABLE Movies (
  movie_id INT PRIMARY KEY,
  title VARCHAR(255),
  description VARCHAR(255),
  duration TIME,
  release_year INT
);

#creating web-series table
CREATE TABLE WebSeries (
  WebSeries_id INT PRIMARY KEY,
  title VARCHAR(255),
  description VARCHAR(255),
  num_of_seasons INT,
  release_year INT
);

#creating genres table
CREATE TABLE Genres (
  genre_id INT PRIMARY KEY,
  name VARCHAR(255)
);

#creating movie-Genre table
CREATE TABLE Movie_Genres (
  movie_id INT,
  genre_id INT,
  FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
  FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

#creating WebSeries-Genre table
CREATE TABLE WebSeries_Genres (
  WebSeries_id INT,
  genre_id INT,
  FOREIGN KEY (WebSeries_id) REFERENCES WebSeries(WebSeries_id),
  FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

#creating User-movie table
CREATE TABLE User_Movies (
  user_id INT,
  movie_id INT,
  added_at DATETIME,
  watched_at DATETIME,
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

#creating User-WebSeries table
CREATE TABLE User_WebSeries (
  user_id INT,
  WebSeries_id INT,
  added_at DATETIME,
  watched_at DATETIME,
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (WebSeries_id) REFERENCES WebSeries(WebSeries_id)
);

*/

#---------------------------------------------OPTIMIZING - CHANGING VARCHAR SIZE-------------------------------------------------------

# Modifying the sizes of attributes in Users table
ALTER TABLE Users MODIFY Username varchar(25);
ALTER TABLE Users MODIFY Email varchar(50);

# Modifying the size of Title in Movies table
ALTER TABLE Movies MODIFY Title varchar(100);

# Modifying the size of Title in WebSeries table
ALTER TABLE WebSeries MODIFY Title varchar(100);

# Modifying the size of Name in Genres table
ALTER TABLE Genres MODIFY Name varchar(25);


#---------------------------------------------INSERTING DATA-------------------------------------------------------

/*

#inserting into users
INSERT INTO Users (user_id, username, email, created_at)
VALUES (101, 'varshith_alladi', 'varshith.alladi@example.com', '2022-08-01 10:00:00'),
       (102, 'michael_corner', 'michael@example.com', '2022-07-02 11:30:00'),
       (103, 'angelina_johnson', 'angelina@example.com', '2021-06-03 10:00:00'),
       (104, 'michael_thomas', 'thomas@example.com', '2021-05-04 11:30:00'),
       (105, 'angelina_longbottom', 'longbottom@example.com', '2020-04-05 10:00:00'),
       (106, 'oliver_wood', 'oliver@example.com', '2020-03-06 11:30:00'),
       (107, 'katie_bell', 'katie@example.com', '2019-02-07 10:00:00'),
       (108, 'padma_patil', 'padma@example.com', '2019-01-08 11:30:00'),
       (109, 'lavender_brown', 'lavender@example.com', '2018-12-09 10:00:00'),
       (110, 'theodore_nott', 'theodore@example.com', '2018-11-10 11:30:00'),
       (111, 'lee_jordan', 'lee@example.com', '2017-10-11 10:00:00'),
       (112, 'thomas_riddle', 'thomas@example.com', '2017-09-12 11:30:00'),
       (113, 'harry_potter', 'harry@example.com', '2016-08-13 10:00:00'),
       (114, 'ron_weasley', 'ron@example.com', '2016-07-14 11:30:00'),
       (115, 'hermoine_granger', 'hermoine@example.com', '2015-06-15 10:00:00'),
       (116, 'walter_white', 'walter@example.com', '2015-05-16 11:30:00'),
       (117, 'skyler_white', 'skyler@example.com', '2014-04-17 10:00:00'),
       (118, 'jesse_pinkman', 'jesse@example.com', '2014-03-18 11:30:00'),
       (119, 'gustavo_fring', 'gustavo@example.com', '2013-02-19 10:00:00'),
       (120, 'hank_schrader', 'hank@example.com', '2013-01-20 11:30:00');
       
#inserting into movies
INSERT INTO Movies (movie_id, title, description, duration, release_year)
VALUES (201, 'My Little Pony: A New Generation', 'Equestrias divided. But a bright-eyed hero believes Earth Ponies, Pegasi and Unicorns should be pals â€” and, hoof to heart, sheâ€™s determined to prove it.', '01:31:00', 2021),
       (202, 'Sankofa', 'On a photo shoot in Ghana, an American model slips back in time, becomes enslaved on a plantation and bears witness to the agony of her ancestral past.', '02:05:00', 1993),
       (203, 'The Starling', 'A woman adjusting to life after a loss contends with a feisty bird thats taken over her garden â€” and a husband whos struggling to find a way forward.', '01:44:00', 2021),
       (204, 'Je Suis Karl', 'After most of her family is murdered in a terrorist bombing, a young woman is unknowingly lured into joining the very group that killed them.', '02:07:00', 2021),
       (205, 'Confessions of an Invisible Girl', 'When the clever but socially-awkward TetÃª joins a new school, she wll do anything to fit in. But the queen bee among her classmates has other ideas.', '01:31:00', 2021),
       (206, 'Europes Most Dangerous Man: Otto Skorzeny in Spain', 'Declassified documents reveal the post-WWII life of Otto Skorzeny, a close Hitler ally who escaped to Spain and became an adviser to world presidents.', '01:07:00', 2020),
       (207, 'Intrusion', 'After a deadly home invasion at a coupleâ€™s new dream house, the traumatized wife searches for answers â€” and learns the real danger is just beginning.', '01:34:00', 2021),
       (208, 'Avvai Shanmughi', 'Newly divorced and denied visitation rights with his daughter, a doting father disguises himself as a gray-haired nanny in order to spend time with her.', '02:41:00', 1996),
       (209, 'Go! Go! Cory Carson: Chrissy Takes the Wheel', 'From arcade games to sled days and hiccup cures, Cory Carsonâ€™s curious little sister Chrissy speeds off on her own for fun and adventure all over town!', '01:01:00', 2021),
       (210, 'Jeans', 'When the father of the man she loves insists that his twin sons marry twin sisters, a woman creates an alter ego that might be a bit too convincing.', '02:46:00', 1998),
       (211, 'Minsara Kanavu', 'A tangled love triangle ensues when a man falls for a woman studying to become a nun â€” and she falls for the friend he enlists to help him pursue her.', '02:27:00', 1997),
       (212, 'Grown Ups', 'Mourning the loss of their beloved junior high basketball coach, five middle-aged pals reunite at a lake house and rediscover the joys of being a kid.', '01:43:00', 2010),
       (213, 'Dark Skies', 'A familyâ€™s idyllic suburban life shatters when an alien force invades their home, and as they struggle to convince others of the deadly threat.', '01:37:00', 2013),
       (214, 'Paranoia', 'Blackmailed by his companys CEO, a low-level employee finds himself forced to spy on the boss rival and former mentor.', '01:46:00', 2013),
       (215, 'Ankahi Kahaniya', 'As big city life buzzes around them, lonely souls discover surprising sources of connection and companionship in three tales of love, loss and longing.', '01:51:00', 2021),
       (216, 'The Father Who Moves Mountains', 'When his son goes missing during a snowy hike in the mountains, a retired intelligence officer will stop at nothing â€” and risk everything â€” to find him.', '01:50:00', 2021),
       (217, 'The Stronghold', 'Tired of the small-time grind, three Marseille cops get a chance to bust a major drug network. But lines blur when a key informant makes a big ask.', '01:45:00', 2021),
       (218, 'Birth of the Dragon', 'A young Bruce Lee angers kung fu traditionalists by teaching outsiders, leading to a showdown with a Shaolin master in this film based on real events.', '01:36:00', 2017),
       (219, 'Jaws', 'When an insatiable great white shark terrorizes Amity Island, a police chief, an oceanographer and a grizzled shark hunter seek to destroy the beast.', '02:04:00', 1975),
       (220, 'Jaws 2', 'Four years after the last deadly shark attacks, police chief Martin Brody fights to protect Amity Island from another killer great white.', '01:56:00', 1978),
       (221, 'Jaws 3', 'After the staff of a marine theme park try to capture a young great white shark, they discover its mother has invaded the enclosure and is out for blood.', '01:48:00', 1983),
       (222, 'Jaws: The Revenge', 'After another deadly shark attack, Ellen Brody has had enough of Amity Island and moves to the Caribbean â€“ but a great white shark follows her there.', '01:31:00', 1987),
       (223, 'My Heroes Were Cowboys', 'Robin Wiltshires painful childhood was rescued by Westerns. Now he lives on the frontier of his dreams, training the horses he loves for the big screen.', '00:23:00', 2021),
       (224, 'Safe House', 'Young CIA operative Matt Weston must get a dangerous criminal out of an agency safe house thats come under attack and get him to a securer location.', '01:55:00', 2012),
       (225, 'Training Day', 'A rookie cop with one day to prove himself to a veteran LAPD narcotics officer receives a crash course in his mentors questionable brand of justice.', '02:02:00', 2001),
       (226, 'King of Boys', 'When a powerful businesswomanâ€™s political ambitions are threatened by her underworld connections, the ensuing power struggle could cost her everything.', '03:02:00', 2018),
       (227, 'You vs. Wild: Out Cold', 'After a plane crash leaves Bear with amnesia, he must make choices to save the missing pilot and survive in this high-stakes interactive adventure.', '01:46:00', 2021),
       (228, 'Little Singham - Black Shadow', 'Kid cop Little Singham loses all his superpowers while trying to stop the demon Kaalâ€™s new evil plans! Can his inner strength help him defeat the enemy?', '00:48:00', 2021),
       (229, 'Show Dogs', 'A rough and tough police dog must go undercover with an FBI agent as a prim and proper pet at a dog show to save a baby panda from an illegal sale.', '01:30:00', 2018),
       (230, 'Shikara', 'A couple must strive to remain resilient after regional hostilities drive them from their beloved home into a refugee camp.', '01:55:00', 2020);

#insertig into WebSeries
INSERT INTO WebSeries (webseries_id, title, description, num_of_seasons, release_year)
VALUES 
(301, 'Car Masters: Rust to Riches', 'The colorful crew at Gotham Garage overhauls an eclectic collection of cars and trucks, trading up to a showstopper they can sell for big bucks',3, 2021),
(302, 'Cocaine Cowboys: The Kings of Miami', 'Two childhood friends go from high school dropouts to the most powerful drug kingpins in Miami in this true story of a crime saga that spanned decades',1,  2021),
(303, 'Control Z', 'When a hacker begins releasing students secrets to the entire high school, the socially isolated but observant Sofía works to uncover his/her identity',2, 2021),
(304, 'Cooking With Paris', 'With an anyone-can-cook attitude, Paris Hilton adds her own flair to every dish. Fun is just one edible glitter bomb away on this unique cooking show',1, 2021),
(305, 'Autumns Concerto', 'After losing all memories of his past, a wealthy lawyer travels to a rural village where a woman he once loved now lives with her son',1, 2009),
(306, 'Office Girls', 'A department store mogul has his son work incognito in a menial job to prove his worthiness, while female co-workers teach him how normal people live',1, 2011),
(307, 'The Prince Who Turns into a Frog', 'Before his wedding, a cold CEO is hit by a car and awakens a changed man. As he and the driver fall in love, more changes appear on the road ahead',1, 2005),
(308, 'Top Secret UFO Projects: Declassified', 'Though claims of extraterrestrial encounters have long been dismissed, many believe the existence of UFOs is not just likely, but a certainty',1, 2021),
(309, 'Two Fathers', 'When two single guys learn a woman they both slept with disappeared after giving birth, they decide to raise her baby girl together as a family',1, 2013),
(310, 'You are My Destiny', 'A young womans romantic cruise ends in a twist when she gets pregnant after a one-night stand with a rich executive, turning their lives upside down',1, 2008),
(311, '30 Rock', 'Liz Lemon juggles the demands of running an NBC sketch comedy show with trying to fix her disaster of a personal life and eating her night cheese', 7, 2012),
(312, '44 Cats','Paw-esome tales abound when singing furry friends Lampo, Milady, Pilou and Meatball band together', 3, 2020),
(313, 'Darwin’s Game', 'High schooler Kaname activates a mysterious mobile app and unwittingly joins a game pitting players with supernatural abilities against each other', 1, 2020),
(314, 'Friday Night Lights', 'Eric Taylor faces enormous pressure when he signs on as the new coach of a small-town Texas football team thats poised to win the state championship', 5, 2010),
(315, 'Hunter X Hunter (2011)', 'To fulfill his dreams of becoming a legendary Hunter like his dad, a young boy must pass a rigorous examination and find his missing father', 6, 2014),
(316, 'Charmed', 'After their mothers tragic death, a trio of sisters bond over their newfound powers, vanquish demons and band together to defend their magical legacy', 3, 2021),
(317, 'Centaurworld', 'On a quest to reunite with her trusty rider, a fearless war horse journeys through a whimsical world filled with magic, adventure and singing centaurs',1, 2021),
(318, 'Glow Up', 'In this competition show, aspiring makeup artists navigate colorful challenges to win a career-making opportunity in the beauty industry', 3, 2021),
(319, 'Khawatir', 'Saudi media personality Ahmad Al Shugairi travels around the world on a quest for knowledge in various cities while offering his personal reflections', 1, 2009),
(320, 'Myth & Mogul: John DeLorean', 'In the automotive world, John DeLorean rose from engineer to executive to icon. But under the hood of his self-created legend lies darkness and deceit', 1, 2021),
(321, 'Outer Banks', 'On an island of haves and have-nots, teen John B enlists his three best friends to hunt for a legendary treasure linked to his fathers disappearance' ,2, 2021),
(322, 'Transformers: War for Cybertron: Kingdom', 'The frantic race to locate the Allspark first culminates on a strange planet as the future comes crashing through to the present day', 1, 2021),
(323, 'Tattoo Redo', 'Bad tattoos walk in. Great tattoos walk out. Top artists transform tattoo disasters into stunning cover-ups, with designs chosen by clients loved ones', 1, 2021),
(324, 'The Flash', 'A forensics expert who wakes from a coma with amazing new powers squares off against forces threatening the city in this live-action superhero romp', 7, 2021),
(331, 'The Snitch Cartel: Origins', 'Over four decades, two brothers in Cali juggle family duties, multiple romances and illegal businesses, transforming from poor kids to cocaine kingpins', 1, 2021),
(325, 'All American', 'Culture clashes and brewing rivalries test a teen football player from South Los Angeles when hes recruited to the Beverly Hills High School team', 3, 2021),
(326, 'How to Sell Drugs Online (Fast)', 'To win back his ex-girlfriend, a nerdy teen starts selling ecstasy online out of his bedroom – and becomes one of Europes biggest dealers', 3, 2021),
(327, 'Mighty Express', 'Catch a ride with the Mighty Express — a team of trains and their kid friends who overcome trouble on the tracks with quick thinking and teamwork', 4, 2021),
(328, 'Plastic Cup Boyz: Laughing My Mask Off!', 'Comedy collective The Plastic Cup Boyz pour out the punchlines in Atlanta during a trio of raw and lively stand-up specials', 1, 2021),
(329, 'The Walking Dead', 'In the wake of a zombie apocalypse, survivors hold on to the hope of humanity by banding together to wage a fight for their own survival.', 10, 2019),
(330, 'Wynonna Earp', 'The outcast descendant of lawman Wyatt Earp teams up with an immortal Doc Holliday to rid the world of demonic revenants from the Wild West.', 4, 2020);




#inserting into Genres
INSERT INTO Genres (genre_id, name)
VALUES (401, 'Action'),
       (402, 'Drama'),
       (403, 'Comedy'),
       (404, 'Thriller'),
       (405, 'Horror'),
       (406, 'Romance'),
       (407, 'Fantasy'),
       (408, 'Sci-Fi'),
       (409, 'Documentary'),
       (410, 'Adventure'),
       (411, 'Crime'),
       (412, 'Western'),
       (413, 'Adult'),
       (414, 'Silent'),
       (415, 'Musical');
       
#inserting into Movie_Genres
INSERT INTO Movie_Genres (movie_id, genre_id)
VALUES (201, 415),
	   (201, 401),
       (201, 405),
       (201, 409),
       (202, 403),
       (202, 414),
       (203, 413),
       (203, 402),
       (203, 404),
       (202, 414),
       (204, 412),
       (205, 411),
       (206, 410),
       (207, 409),
       (208, 408),
       (208, 414),
       (208, 411),
       (209, 407),
       (210, 406),
       (211, 405),
       (212, 404),
       (213, 403),
       (213, 414),
       (213, 410),
       (213, 401),
       (214, 402),
       (215, 401),
       (216, 401),
       (217, 401),
       (218, 403),
       (219, 403),
       (220, 409),
       (221, 405),
       (222, 405),
       (223, 401),
       (224, 402),
       (225, 402),
       (226, 406),
       (227, 406),
       (227, 413),
       (228, 413),
       (228, 401),
       (229, 402),
       (230, 402);

#inserting into WebSeries_Genres
INSERT INTO WebSeries_Genres (WebSeries_id, genre_id)
VALUES (301, 402),
       (301, 403),
       (302, 401),
       (303, 403),
       (303, 405),
       (303, 408),
       (304, 401),
       (305, 403),
       (305, 411),
       (306, 411),
       (306, 414),
       (306, 403),
       (307, 401),
       (307, 407),
       (307, 408),
       (307, 410),
       (308, 408),
       (309, 409),
       (309, 401),
       (310, 413),
       (310, 412),
       (311, 415),
       (312, 415),
       (313, 415),
       (313, 411),
       (314, 415),
       (314, 412),
       (314, 411),
       (314, 405),
       (314, 406),
       (315, 405),
       (316, 406),
       (317, 404),
       (318, 404),
       (319, 404),
       (319, 407),
       (320, 404),
       (320, 402),
       (321, 401),
       (321, 403),
       (322, 411),
       (323, 413),
       (324, 415),
       (325, 413),
       (326, 411),
       (327, 410),
       (327, 412),
       (328, 412),
       (329, 414),
       (329, 405),
       (330, 401),
       (331, 403),
       (331, 413);



#inserting into User-Movies
INSERT INTO User_Movies (user_id, movie_id, added_at, watched_at)
VALUES (101, 225, '2023-01-03 12:00:00', '2023-02-01 01:30:00'),
       (101, 202, '2023-02-03 15:00:00', NULL),
       (101, 225, '2023-02-03 13:30:00', NULL),
       (101, 204, '2023-02-03 12:00:00', '2023-04-02 06:30:00'),
       (103, 205, '2023-01-03 12:00:00', '2023-03-04 02:30:00'),
       (103, 206, '2022-12-03 12:00:00', '2023-04-06 03:30:00'),
       (103, 201, '2022-12-03 12:00:00', '2023-05-09 04:30:00'),
       (105, 207, '2022-11-03 12:00:00', '2023-06-10 05:30:00'),
       (105, 210, '2021-09-03 12:00:00', NULL),
       (105, 214, '2021-06-03 12:00:00', '2023-01-03 06:30:00'),
       (105, 215, '2023-05-03 12:00:00', '2023-02-12 07:30:00'),
       (105, 218, '2022-04-03 12:00:00', '2023-02-15 08:30:00'),
       (106, 224, '2021-03-03 12:00:00', NULL),
       (106, 223, '2022-02-03 12:00:00', '2023-03-16 09:30:00'),
       (108, 217, '2021-02-03 12:00:00', '2023-03-14 10:30:00'),
       (109, 213, '2019-01-03 12:00:00', NULL),
       (110, 204, '2019-02-03 12:00:00', NULL),
       (110, 205, '2019-05-03 12:00:00', NULL),
       (111, 224, '2021-09-03 12:00:00', '2023-01-11 11:30:00'),
       (111, 225, '2022-10-03 12:00:00', '2023-02-19 12:30:00'),
       (112, 225, '2022-10-03 12:00:00', '2023-02-17 12:30:00'),
       (112, 223, '2021-05-03 12:00:00', NULL),
       (112, 201, '2020-06-03 12:00:00', '2023-03-16 13:30:00'),
       (112, 202, '2019-06-03 12:00:00', '2023-04-14 14:30:00'),
       (113, 203, '2019-06-03 12:00:00', '2023-04-14 14:30:00'),
       (113, 204, '2019-06-03 12:00:00', '2023-04-13 15:30:00'),
       (114, 204, '2017-06-03 12:00:00', '2023-05-17 15:30:00'),
       (114, 203, '2018-06-03 12:00:00', NULL),
       (114, 208, '2023-06-03 12:00:00', NULL),
       (115, 208, '2023-06-03 12:00:00', NULL),
       (106, 215, '2020-06-03 12:00:00', '2023-03-23 16:30:00'),
       (106, 219, '2021-06-03 12:00:00', '2023-04-24 17:30:00'),
       (106, 220, '2022-06-03 12:00:00', '2023-05-25 17:30:00'),
       (106, 220, '2023-05-29 12:00:00', '2023-06-25 17:30:00'),
       (108, 217, '2021-05-23 12:00:00', '2023-04-25 18:30:00'),
       (108, 216, '2022-01-24 12:00:00', '2023-03-31 19:30:00'),
       (108, 215, '2022-04-24 12:00:00', '2023-02-23 20:30:00'),
       (109, 216, '2023-06-03 12:00:00', NULL),
       (115, 217, '2023-06-03 12:00:00', NULL),
       (115, 219, '2022-11-13 12:00:00', '2023-01-22 10:30:00'),
       (115, 213, '2021-12-07 12:00:00', '2023-01-21 11:30:00'),
       (116, 212, '2019-09-22 12:00:00', '2023-01-26 13:30:00'),
       (116, 206, '2017-06-27 12:00:00', '2023-02-27 21:30:00'),
       (117, 206, '2023-06-03 12:00:00', NULL),
       (119, 224, '2023-06-03 12:00:00', NULL),
       (119, 201, '2015-05-28 12:00:00', '2023-04-28 14:30:00'),
       (119, 228, '2014-08-21 12:00:00', '2023-02-28 22:30:00'),
       (101, 228, '2023-01-03 13:00:00', '2023-03-22 21:30:00'),
       (120, 227, '2018-01-06 12:00:00', '2023-07-15 11:30:00'),
       (120, 214, '2016-08-23 12:00:00', NULL),
       (120, 203, '2015-10-25 12:00:00', '2023-06-06 12:30:00');


#inserting into User-WebSeries
INSERT INTO User_WebSeries (user_id, WebSeries_id, added_at, watched_at)
VALUES (101, 301, '2023-01-01 11:30:00', NULL),
       (101, 302, '2023-01-14 16:00:00', '2023-06-03 17:45:00'),
       (102, 302, '2023-02-17 13:45:00', NULL),
       (102, 303, '2023-03-28 12:00:00', '2023-04-28 14:30:00'),
       (102, 307, '2023-04-21 12:00:00', '2023-05-28 22:30:00'),
       (102, 330, '2022-01-03 13:00:00', '2023-04-02 21:30:00'),
       (103, 312, '2022-01-06 12:00:00', '2023-01-15 11:30:00'),
       (104, 301, '2022-05-28 12:00:00', '2023-02-28 14:30:00'),
       (104, 305, '2022-08-21 12:00:00', '2023-03-28 22:30:00'),
       (104, 307, '2022-01-03 13:00:00', NULL),
       (104, 307, '2022-01-06 12:00:00', '2023-04-15 11:30:00'),
       (104, 301, '2022-05-28 12:00:00', '2023-05-28 14:30:00'),
       (106, 321, '2022-08-21 12:00:00', '2023-04-28 22:30:00'),
       (106, 328, '2021-01-03 13:00:00', NULL),
       (106, 322, '2021-01-06 12:00:00', '2023-01-15 11:30:00'),
       (108, 322, '2020-05-28 12:00:00', '2023-02-28 14:30:00'),
       (108, 324, '2020-08-21 12:00:00', '2023-03-28 22:30:00'),
       (108, 325, '2020-01-03 13:00:00', '2023-02-22 21:30:00'),
       (108, 327, '2021-01-06 12:00:00', '2023-02-15 11:30:00'),
       (108, 327, '2021-05-28 12:00:00', '2023-03-28 14:30:00'),
       (109, 301, '2021-08-21 12:00:00', '2023-04-28 22:30:00'),
       (109, 301, '2022-01-03 13:00:00', NULL),
       (110, 305, '2019-01-06 12:00:00', '2023-05-15 11:30:00'),
       (110, 304, '2019-05-28 12:00:00', NULL),
       (111, 306, '2021-05-28 12:00:00', NULL),
       (111, 309, '2019-01-03 13:00:00', '2023-05-22 21:30:00'),
       (112, 324, '2019-01-06 12:00:00', '2023-05-15 11:30:00'),
       (113, 325, '2020-05-28 12:00:00', '2023-05-28 14:30:00'),
       (114, 325, '2021-08-21 12:00:00', '2023-05-28 22:30:00'),
       (115, 326, '2022-01-03 13:00:00', '2023-05-22 21:30:00'),
       (115, 330, '2017-01-06 12:00:00', '2023-04-15 11:30:00'),
       (116, 322, '2018-05-28 12:00:00', NULL),
       (117, 328, '2017-08-21 12:00:00', '2023-03-28 22:30:00'),
       (117, 327, '2018-01-03 13:00:00', '2023-02-22 21:30:00'),
       (118, 319, '2019-01-03 13:00:00', NULL),
       (118, 317, '2020-05-28 12:00:00', NULL),
       (118, 315, '2015-08-21 12:00:00', NULL),
       (119, 314, '2017-01-03 13:00:00', '2023-02-22 21:30:00'),
       (119, 301, '2015-01-06 12:00:00', '2023-01-15 11:30:00'),
       (119, 305, '2014-05-28 12:00:00', '2023-03-28 14:30:00'),
       (120, 304, '2018-08-21 12:00:00', '2023-04-28 22:30:00'),
       (105, 328, '2022-01-03 13:00:00', NULL),
       (107, 330, '2021-01-06 12:00:00', '2023-05-15 11:30:00');

#---------------------------------------------OPTIMIZING - ADDING INDEX-------------------------------------------------------

# Adding an index on the title column for faster searching by movie title
ALTER TABLE Movies ADD INDEX idx_title (title);

# Adding an index on the title column for faster searching by WebSeries title
ALTER TABLE WebSeries ADD INDEX idx_title (title);

# Adding an index on the name column for faster searching by genre name
ALTER TABLE Genres ADD INDEX idx_name (name);

# Adding composite indexes on movie_id and genre_id columns for faster retrieval of movies by genre and vice versa
ALTER TABLE Movie_Genres ADD INDEX idx_movie_genre (movie_id, genre_id);
ALTER TABLE Movie_Genres ADD INDEX idx_genre_movie (genre_id, movie_id);

# Adding composite indexes on WebSeries_id and genre_id columns for faster retrieval of WebSeries by genre and vice versa
ALTER TABLE WebSeries_Genres ADD INDEX idx_WebSeries_genre (WebSeries_id, genre_id);
ALTER TABLE WebSeries_Genres ADD INDEX idx_genre_WebSeries (genre_id, WebSeries_id);

# Adding composite indexes on user_id and movie_id columns for faster retrieval of movies watched by a specific user
ALTER TABLE User_Movies ADD INDEX idx_user_movie (user_id, movie_id);

# Add composite indexes on user_id and WebSeries_id columns for faster retrieval of WebSeries watched by a specific user
ALTER TABLE User_WebSeries ADD INDEX idx_user_WebSeries (user_id, WebSeries_id);

*/

#---------------------------------------------RETRIEVING DATA-------------------------------------------------------

# Retrieve all users
SELECT * FROM Users;

# Retrieve all movies
SELECT * FROM Movies;

# Retrieve all WebSeries
SELECT * FROM WebSeries;

# Retrieve number of seasons along with webseries ID 
select webseries_id, title, num_of_seasons from webseries;

# Retrieve all Genres
SELECT * FROM Genres;

# Retrieve movies along with their genres
SELECT Movies.movie_id, Movies.title, GROUP_CONCAT(Genres.name) AS genres
FROM Movies
LEFT JOIN Movie_Genres ON Movies.movie_id = Movie_Genres.movie_id
LEFT JOIN Genres ON Movie_Genres.genre_id = Genres.genre_id
GROUP BY Movies.movie_id;

# Retrieve WebSeries along with their genres
SELECT WebSeries.WebSeries_id, WebSeries.title, GROUP_CONCAT(Genres.name) AS genres
FROM WebSeries
LEFT JOIN WebSeries_Genres ON WebSeries.WebSeries_id = WebSeries_Genres.WebSeries_id
LEFT JOIN Genres ON WebSeries_Genres.genre_id = Genres.genre_id
GROUP BY WebSeries.WebSeries_id;

# Retrieve movies watched by a specific user
SELECT DISTINCT m.movie_id, m.title, m.description, m.release_year
FROM Movies m
JOIN User_Movies um ON m.movie_id = um.movie_id
WHERE um.user_id = 101;

# Retrieve TV shows watched by a specific user
SELECT DISTINCT tv.WebSeries_id, tv.title, tv.description, tv.release_year
FROM WebSeries tv
JOIN User_WebSeries ut ON tv.WebSeries_id = ut.WebSeries_id
WHERE ut.user_id = 108;

# Retrieve movies that are not watched by anyone
SELECT m.movie_id, m.title, m.description, m.release_year
FROM Movies m
LEFT JOIN User_Movies um ON m.movie_id = um.movie_id
WHERE um.movie_id IS NULL;

# Retrieve WebSeries that are not watched by anyone
SELECT m.WebSeries_id, m.title, m.description, m.release_year
FROM WebSeries m
LEFT JOIN User_WebSeries um ON m.WebSeries_id = um.WebSeries_id
WHERE um.WebSeries_id IS NULL;

# Retrieve movies from a specific genre
SELECT Movies.*
FROM Movies
INNER JOIN Movie_Genres ON Movies.movie_id = Movie_Genres.movie_id
INNER JOIN Genres ON Movie_Genres.genre_id = Genres.genre_id
WHERE Genres.name = 'Action';

# Retrieve WebSeries from a specific genre
SELECT WebSeries.*
FROM WebSeries
INNER JOIN WebSeries_Genres ON WebSeries.WebSeries_id = WebSeries_Genres.WebSeries_id
INNER JOIN Genres ON WebSeries_Genres.genre_id = Genres.genre_id
WHERE Genres.name = 'Horror';

# Retrieve all genres associated with a specific movie
SELECT Genres.name
FROM Genres
JOIN Movie_Genres ON Genres.genre_id = Movie_Genres.genre_id
WHERE Movie_Genres.movie_id = 213;

# Retrieve all genres associated with a specific WebSeries
SELECT Genres.name
FROM Genres
JOIN WebSeries_Genres ON Genres.genre_id = WebSeries_Genres.genre_id
WHERE WebSeries_Genres.WebSeries_id = 305;

# Retrieve the most-watched Movies
SELECT Movies.movie_id, Movies.title, COUNT(User_Movies.Movie_id) AS watch_count
FROM Movies
LEFT JOIN User_Movies ON Movies.Movie_id = User_Movies.Movie_id
GROUP BY Movies.Movie_id
ORDER BY watch_count DESC
LIMIT 5;

# Retrieve the most-watched WebSeries
SELECT WebSeries.title, COUNT(User_WebSeries.WebSeries_id) AS watch_count
FROM WebSeries
LEFT JOIN User_WebSeries ON WebSeries.WebSeries_id = User_WebSeries.WebSeries_id
GROUP BY WebSeries.WebSeries_id
ORDER BY watch_count DESC
LIMIT 5;

# Retrieve the list of users who have watched a specific movie
SELECT DISTINCT Users.user_id, Users.username, Users.email
FROM Users
JOIN User_Movies ON Users.user_id = User_Movies.user_id
WHERE User_Movies.movie_id = 201;

# Retrieve the list of users who have watched a specific WebSeries
SELECT DISTINCT Users.user_id, Users.username, Users.email
FROM Users
JOIN User_WebSeries ON Users.user_id = User_WebSeries.user_id
WHERE User_WebSeries.WebSeries_id = 301;

# Retrieve users who haven't watched any movies
SELECT Users.user_id, Users.username, Users.email
FROM Users
WHERE user_id NOT IN (
    SELECT user_id
    FROM User_Movies
);

# Retrieve users who haven't watched any WebSeries
SELECT Users.user_id, Users.username, Users.email
FROM Users
WHERE user_id NOT IN (
    SELECT user_id
    FROM User_WebSeries
);

# Retrieve movies and the count of the movies watched by a user
SELECT m.movie_id, m.title, COUNT(*) AS watch_count
FROM Movies m
JOIN User_Movies um ON m.movie_id = um.movie_id
WHERE um.user_id = 101
GROUP BY m.movie_id, m.title
ORDER BY watch_count DESC;

# Retrieve WebSeries and the count of the WebSeries watched by a user
SELECT m.WebSeries_id, m.title, COUNT(*) AS watch_count
FROM WebSeries m
JOIN User_WebSeries um ON m.WebSeries_id = um.WebSeries_id
WHERE um.user_id = 104
GROUP BY m.WebSeries_id, m.title
ORDER BY watch_count DESC;

# Retrieve the most recently watched movie by a user
SELECT m.movie_id, m.title, um.watched_at
FROM Movies m
JOIN User_Movies um ON m.movie_id = um.movie_id
WHERE um.user_id = 115
AND um.watched_at IS NOT NULL
ORDER BY um.watched_at DESC
LIMIT 1;

# Retrieve the most recently watched WebSeries by a user
SELECT m.WebSeries_id, m.title, um.watched_at
FROM WebSeries m
JOIN User_WebSeries um ON m.WebSeries_id = um.WebSeries_id
WHERE um.user_id = 115
AND um.watched_at IS NOT NULL
ORDER BY um.watched_at DESC
LIMIT 1;

# Retrieve movies and WebSeries watched by a specific user together
SELECT 'Movie' AS type, m.movie_id, m.title
FROM Movies m
JOIN User_Movies um ON m.movie_id = um.movie_id
WHERE um.user_id = 114
UNION
SELECT 'WebSeries' AS type, tv.WebSeries_id, tv.title
FROM WebSeries tv
JOIN User_WebSeries ut ON tv.WebSeries_id = ut.WebSeries_id
WHERE ut.user_id = 114;




