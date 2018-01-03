-- TIETOKANNAN JA TAULUJEN LUONTIKYSELYT

CREATE DATABASE sauna_db;

USE sauna_db;

CREATE TABLE Batches(
    id INT PRIMARY KEY
);

CREATE TABLE Users(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    type INT NOT NULL,
    username VARCHAR(20) NOT NULL UNIQUE,
    password CHAR(64) NOT NULL,
    batch INT,
    active BOOLEAN NOT NULL,
    FOREIGN KEY (batch) REFERENCES Batches(id)
);

CREATE TABLE Profiles(
    user_id INT,
    name VARCHAR(30) NOT NULL,
    description TEXT,
    company VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    linkedin VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

CREATE TABLE Credentials(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    company VARCHAR(20) NOT NULL,
    title VARCHAR(30) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

CREATE TABLE Timeslots(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT,
    datetime DATETIME NOT NULL,
    duration INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

CREATE TABLE Meetings(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    coach_id INT,
    startup_id INT,
    datetime DATETIME NOT NULL,
    duration INT NOT NULL,
    coach_rating INT,
    startup_rating INT,
    FOREIGN KEY (coach_id) REFERENCES Users(id),
    FOREIGN KEY (startup_id) REFERENCES Users(id)
);

-- TESTIDATA

INSERT INTO Batches VALUES (0), (1);

INSERT INTO Users (type, username, password, batch, active) VALUES
	(2, 'startup1', 'password', 1, TRUE),
	(2, 'startup2', 'password', 1, TRUE),
	(2, 'startup3', 'password', 1, TRUE),
	(2, 'startup4', 'password', 1, TRUE),
	(2, 'startup5', 'password', 1, TRUE),
	(2, 'startup6', 'password', 1, TRUE),
	(2, 'startup7', 'password', 1, TRUE),
	(2, 'startup8', 'password', 1, TRUE),
	(2, 'startup9', 'password', 1, TRUE),
	(2, 'startup10', 'password', 1, TRUE),
	(2, 'startup11', 'password', 1, TRUE),
	(2, 'startup12', 'password', 1, TRUE),
	
	(1, 'coach1', 'password', 0, TRUE),
	(1, 'coach2', 'password', 0, TRUE),
	(1, 'coach3', 'password', 0, TRUE),
	(1, 'coach4', 'password', 0, TRUE),
	(1, 'coach5', 'password', 0, TRUE),
	(1, 'coach6', 'password', 0, TRUE),
	(1, 'coach7', 'password', 0, TRUE),
	(1, 'coach8', 'password', 0, TRUE),
	(1, 'coach9', 'password', 0, TRUE),
	(1, 'coach10', 'password', 0, TRUE),
	(1, 'coach11', 'password', 0, TRUE),
	(1, 'coach12', 'password', 0, TRUE),
	(1, 'coach13', 'password', 0, TRUE),
	(1, 'coach14', 'password', 0, TRUE),
	(1, 'coach15', 'password', 0, TRUE),
	(1, 'coach16', 'password', 0, TRUE),
	(1, 'coach17', 'password', 0, TRUE),
	(1, 'coach18', 'password', 0, TRUE),
	(1, 'coach19', 'password', 0, TRUE),
	(1, 'coach20', 'password', 0, TRUE),
	(1, 'coach21', 'password', 0, TRUE),
	(1, 'coach22', 'password', 0, TRUE),
	(1, 'coach23', 'password', 0, TRUE),
	(1, 'coach24', 'password', 0, TRUE),
	(1, 'coach25', 'password', 0, TRUE),
	(1, 'coach26', 'password', 0, TRUE),
	(1, 'coach27', 'password', 0, TRUE),
	(1, 'coach28', 'password', 0, TRUE),
	(1, 'coach29', 'password', 0, TRUE),
	(1, 'coach30', 'password', 0, TRUE),
	(1, 'coach31', 'password', 0, TRUE),
	(1, 'coach32', 'password', 0, TRUE),
	(1, 'coach33', 'password', 0, TRUE),
	(1, 'coach34', 'password', 0, TRUE),
	(1, 'coach35', 'password', 0, TRUE),
	(1, 'coach36', 'password', 0, TRUE),
	(1, 'coach37', 'password', 0, TRUE),
	(1, 'coach38', 'password', 0, TRUE),
	(1, 'coach39', 'password', 0, TRUE),
	(1, 'coach40', 'password', 0, TRUE),
	(1, 'coach41', 'password', 0, TRUE),
	(1, 'coach42', 'password', 0, TRUE),
	(1, 'coach43', 'password', 0, TRUE),
	(1, 'coach44', 'password', 0, TRUE),
	(1, 'coach45', 'password', 0, TRUE),
	(1, 'coach46', 'password', 0, TRUE),
	(1, 'coach47', 'password', 0, TRUE),
	(1, 'coach48', 'password', 0, TRUE),
	(1, 'coach49', 'password', 0, TRUE),
	(1, 'coach50', 'password', 0, TRUE),
	(1, 'coach51', 'password', 0, TRUE),
	(1, 'coach52', 'password', 0, TRUE),
	(1, 'coach53', 'password', 0, TRUE),
	(1, 'coach54', 'password', 0, TRUE),
	(1, 'coach55', 'password', 0, TRUE),
	(1, 'coach56', 'password', 0, TRUE),
	(1, 'coach57', 'password', 0, TRUE),
	(1, 'coach58', 'password', 0, TRUE),
	(1, 'coach59', 'password', 0, TRUE),
	(1, 'coach60', 'password', 0, TRUE),
	(1, 'coach61', 'password', 0, TRUE),
	(1, 'coach62', 'password', 0, TRUE),
	(1, 'coach63', 'password', 0, TRUE),
	(1, 'coach64', 'password', 0, TRUE),
	(1, 'coach65', 'password', 0, TRUE),
	(1, 'coach66', 'password', 0, TRUE),
	(1, 'coach67', 'password', 0, TRUE),
	(1, 'coach68', 'password', 0, TRUE),
	(1, 'coach69', 'password', 0, TRUE),
	
	(0, 'admin', 'admin', 0, TRUE);

INSERT INTO Profiles (user_id, name, description, company, email, linkedin) VALUES
	(13, 'Aape Pohjavirta', 'Coach description', 'Coach company', 'coach1@email.com', 'linkedin.com/coach1'),
	(14, 'Andrea Di Pietrantonio', 'Coach description', 'Coach company', 'coach2@email.com', 'linkedin.com/coach2'),
	(15, 'Antti Pennanen', 'Coach description', 'Coach company', 'coach3@email.com', 'linkedin.com/coach3'),
	(16, 'Antti Kokkinen', 'Coach description', 'Coach company', 'coach4@email.com', 'linkedin.com/coach4'),
	(17, 'Antti Virolainen', 'Coach description', 'Coach company', 'coach5@email.com', 'linkedin.com/coach5'),
	(18, 'Artturi Tarjanne', 'Coach description', 'Coach company', 'coach6@email.com', 'linkedin.com/coach6'),
	(19, 'Asmo Halinen', 'Coach description', 'Coach company', 'coach7@email.com', 'linkedin.com/coach7'),
	(20, 'Chris Thür', 'Coach description', 'Coach company', 'coach8@email.com', 'linkedin.com/coach8'),
	(21, 'Claudio Camacho', 'Coach description', 'Coach company', 'coach9@email.com', 'linkedin.com/coach9'),
	(22, 'Duane Atkins', 'Coach description', 'Coach company', 'coach10@email.com', 'linkedin.com/coach10'),
	(23, 'Ekaterina Gianelli', 'Coach description', 'Coach company', 'coach11@email.com', 'linkedin.com/coach11'),
	(24, 'Elina Piispanen', 'Coach description', 'Coach company', 'coach12@email.com', 'linkedin.com/coach12'),
	(25, 'Emma Huovinen', 'Coach description', 'Coach company', 'coach13@email.com', 'linkedin.com/coach13'),
	(26, 'Erik Pöntiskoski', 'Coach description', 'Coach company', 'coach14@email.com', 'linkedin.com/coach14'),
	(27, 'Evgeny Kruglov', 'Coach description', 'Coach company', 'coach15@email.com', 'linkedin.com/coach15'),
	(28, 'Harri Junttila', 'Coach description', 'Coach company', 'coach16@email.com', 'linkedin.com/coach16'),
	(29, 'Harry Santamaki', 'Coach description', 'Coach company', 'coach17@email.com', 'linkedin.com/coach17'),
	(30, 'Ilkka Kivimaki', 'Coach description', 'Coach company', 'coach18@email.com', 'linkedin.com/coach18'),
	(31, 'Inka Mero', 'Coach description', 'Coach company', 'coach19@email.com', 'linkedin.com/coach19'),
	(32, 'Isaac Moshe', 'Coach description', 'Coach company', 'coach20@email.com', 'linkedin.com/coach20'),
	(33, 'Jaakko Salminen', 'Coach description', 'Coach company', 'coach21@email.com', 'linkedin.com/coach21'),
	(34, 'Jan-Erik Nyrövaara', 'Coach description', 'Coach company', 'coach22@email.com', 'linkedin.com/coach22'),
	(35, 'Janne Karjalainen', 'Coach description', 'Coach company', 'coach23@email.com', 'linkedin.com/coach23'),
	(36, 'Janne Korpela', 'Coach description', 'Coach company', 'coach24@email.com', 'linkedin.com/coach24'),
	(37, 'Jari Hurttia', 'Coach description', 'Coach company', 'coach25@email.com', 'linkedin.com/coach25'),
	(38, 'Jarmo Kuusivuori', 'Coach description', 'Coach company', 'coach26@email.com', 'linkedin.com/coach26'),
	(39, 'Jeremias Kangas', 'Coach description', 'Coach company', 'coach27@email.com', 'linkedin.com/coach27'),
	(40, 'John Dannberg', 'Coach description', 'Coach company', 'coach28@email.com', 'linkedin.com/coach28'),
	(41, 'Jorma Vartia', 'Coach description', 'Coach company', 'coach29@email.com', 'linkedin.com/coach29'),
	(42, 'Juha Ruohonen', 'Coach description', 'Coach company', 'coach30@email.com', 'linkedin.com/coach30'),
	(43, 'Juha Kaunisto', 'Coach description', 'Coach company', 'coach31@email.com', 'linkedin.com/coach31'),
	(44, 'Juhani Polkko', 'Coach description', 'Coach company', 'coach32@email.com', 'linkedin.com/coach32'),
	(45, 'Juska Teittinen', 'Coach description', 'Coach company', 'coach33@email.com', 'linkedin.com/coach33'),
	(46, 'Jussi Nevanlinna', 'Coach description', 'Coach company', 'coach34@email.com', 'linkedin.com/coach34'),
	(47, 'Jussi Harvela', 'Coach description', 'Coach company', 'coach35@email.com', 'linkedin.com/coach35'),
	(48, 'Kaj Hagros', 'Coach description', 'Coach company', 'coach36@email.com', 'linkedin.com/coach36'),
	(49, 'Kalle Freese', 'Coach description', 'Coach company', 'coach37@email.com', 'linkedin.com/coach37'),
	(50, 'Kristoffer Lawson', 'Coach description', 'Coach company', 'coach38@email.com', 'linkedin.com/coach38'),
	(51, 'Kustaa Valtonen', 'Coach description', 'Coach company', 'coach39@email.com', 'linkedin.com/coach39'),
	(52, 'Lauri Kokkila', 'Coach description', 'Coach company', 'coach40@email.com', 'linkedin.com/coach40'),
	(53, 'Markko Vaarnas', 'Coach description', 'Coach company', 'coach41@email.com', 'linkedin.com/coach41'),
	(54, 'Matti Kari', 'Coach description', 'Coach company', 'coach42@email.com', 'linkedin.com/coach42'),
	(55, 'Mikael Honkavaara', 'Coach description', 'Coach company', 'coach43@email.com', 'linkedin.com/coach43'),
	(56, 'Mika Marjalaakso', 'Coach description', 'Coach company', 'coach44@email.com', 'linkedin.com/coach44'),
	(57, 'Mike Bradshaw', 'Coach description', 'Coach company', 'coach45@email.com', 'linkedin.com/coach45'),
	(58, 'Moaffak Ahmed', 'Coach description', 'Coach company', 'coach46@email.com', 'linkedin.com/coach46'),
	(59, 'Nils Paajanen', 'Coach description', 'Coach company', 'coach47@email.com', 'linkedin.com/coach47'),
	(60, 'Nina Ignatius', 'Coach description', 'Coach company', 'coach48@email.com', 'linkedin.com/coach48'),
	(61, 'Olli Pekonen', 'Coach description', 'Coach company', 'coach49@email.com', 'linkedin.com/coach49'),
	(62, 'Olli Osara', 'Coach description', 'Coach company', 'coach50@email.com', 'linkedin.com/coach50'),
	(63, 'Oskari Kettunen', 'Coach description', 'Coach company', 'coach51@email.com', 'linkedin.com/coach51'),
	(64, 'Oskari Lehtonen', 'Coach description', 'Coach company', 'coach52@email.com', 'linkedin.com/coach52'),
	(65, 'Osma Ahvenlampi', 'Coach description', 'Coach company', 'coach53@email.com', 'linkedin.com/coach53'),
	(66, 'Ossi Numminen', 'Coach description', 'Coach company', 'coach54@email.com', 'linkedin.com/coach54'),
	(67, 'Otto Hilska', 'Coach description', 'Coach company', 'coach55@email.com', 'linkedin.com/coach55'),
	(68, 'Paolo Borella', 'Coach description', 'Coach company', 'coach56@email.com', 'linkedin.com/coach56'),
	(69, 'Pekka Koskinen', 'Coach description', 'Coach company', 'coach57@email.com', 'linkedin.com/coach57'),
	(70, 'Peter Vesterbacka', 'Coach description', 'Coach company', 'coach58@email.com', 'linkedin.com/coach58'),
	(71, 'Phil Laszkowicz', 'Coach description', 'Coach company', 'coach59@email.com', 'linkedin.com/coach59'),
	(72, 'Pontus Stråhlman', 'Coach description', 'Coach company', 'coach60@email.com', 'linkedin.com/coach60'),
	(73, 'Riku Asikainen', 'Coach description', 'Coach company', 'coach61@email.com', 'linkedin.com/coach61'),
	(74, 'Saku Everi', 'Coach description', 'Coach company', 'coach62@email.com', 'linkedin.com/coach62'),
	(75, 'Sampo Lappalainen', 'Coach description', 'Coach company', 'coach63@email.com', 'linkedin.com/coach63'),
	(76, 'Stefano Mosconi', 'Coach description', 'Coach company', 'coach64@email.com', 'linkedin.com/coach64'),
	(77, 'Tapio Siik', 'Coach description', 'Coach company', 'coach65@email.com', 'linkedin.com/coach65'),
	(78, 'Timo Tirkkonen', 'Coach description', 'Coach company', 'coach66@email.com', 'linkedin.com/coach66'),
	(79, 'Torsti Tenhunen', 'Coach description', 'Coach company', 'coach67@email.com', 'linkedin.com/coach67'),
	(80, 'Ville Vesterinen', 'Coach description', 'Coach company', 'coach68@email.com', 'linkedin.com/coach68'),
	(81, 'Ville Miettinen', 'Coach description', 'Coach company', 'coach69@email.com', 'linkedin.com/coach69');

INSERT INTO Meetings (coach_id, startup_id, datetime, duration, coach_rating, startup_rating) VALUES
	(14, 2, '2017-10-10 12:00:00', 40, 0, 3),
	(14, 3, '2017-10-10 12:00:00', 40, 0, 1),
	(14, 4, '2017-10-10 12:00:00', 40, 2, 3),
	(14, 5, '2017-10-10 12:00:00', 40, 0, 3),
	(14, 6, '2017-10-10 12:00:00', 40, 0, 1),
	(14, 7, '2017-10-10 12:00:00', 40, 1, 3),
	(14, 9, '2017-10-10 12:00:00', 40, 0, 0),
	(16, 1, '2017-10-10 12:00:00', 40, 0, 1),
	(16, 3, '2017-10-10 12:00:00', 40, 0, 1),
	(16, 4, '2017-10-10 12:00:00', 40, 1, 3),
	(16, 5, '2017-10-10 12:00:00', 40, 2, 3),
	(16, 6, '2017-10-10 12:00:00', 40, 0, 0),
	(16, 7, '2017-10-10 12:00:00', 40, 0, 0),
	(16, 8, '2017-10-10 12:00:00', 40, 0, 1),
	(16, 9, '2017-10-10 12:00:00', 40, 2, 3),
	(16, 10, '2017-10-10 12:00:00', 40, 2, 3),
	(16, 11, '2017-10-10 12:00:00', 40, 0, 1),
	(16, 12, '2017-10-10 12:00:00', 40, 0, 1),
	(18, 4, '2017-10-10 12:00:00', 40, 0, 3),
	(18, 5, '2017-10-10 12:00:00', 40, 0, 3),
	(18, 7, '2017-10-10 12:00:00', 40, 0, 1),
	(18, 8, '2017-10-10 12:00:00', 40, 1, 3),
	(18, 9, '2017-10-10 12:00:00', 40, 0, 1),
	(22, 1, '2017-10-10 12:00:00', 40, 0, 0),
	(22, 2, '2017-10-10 12:00:00', 40, 0, 3),
	(22, 3, '2017-10-10 12:00:00', 40, 1, 1),
	(22, 4, '2017-10-10 12:00:00', 40, 2, 3),
	(22, 5, '2017-10-10 12:00:00', 40, 1, 1),
	(22, 6, '2017-10-10 12:00:00', 40, 1, 1),
	(22, 7, '2017-10-10 12:00:00', 40, 1, 1),
	(22, 8, '2017-10-10 12:00:00', 40, 1, 1),
	(22, 9, '2017-10-10 12:00:00', 40, 0, 1),
	(22, 10, '2017-10-10 12:00:00', 40, 0, 3),
	(22, 11, '2017-10-10 12:00:00', 40, 2, 3),
	(22, 12, '2017-10-10 12:00:00', 40, 0, 1),
	(25, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(25, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(25, 7, '2017-10-10 12:00:00', 40, 0, 1),
	(25, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(27, 1, '2017-10-10 12:00:00', 40, 0, 1),
	(27, 2, '2017-10-10 12:00:00', 40, 0, 1),
	(27, 3, '2017-10-10 12:00:00', 40, 1, 1),
	(27, 4, '2017-10-10 12:00:00', 40, 0, 3),
	(27, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(27, 6, '2017-10-10 12:00:00', 40, 1, 1),
	(27, 7, '2017-10-10 12:00:00', 40, 0, 1),
	(27, 8, '2017-10-10 12:00:00', 40, 1, 3),
	(27, 9, '2017-10-10 12:00:00', 40, 0, 1),
	(27, 10, '2017-10-10 12:00:00', 40, 0, 0),
	(27, 11, '2017-10-10 12:00:00', 40, 2, 3),
	(27, 12, '2017-10-10 12:00:00', 40, 2, 3),
	(29, 1, '2017-10-10 12:00:00', 40, 1, 3),
	(29, 2, '2017-10-10 12:00:00', 40, 0, 1),
	(29, 3, '2017-10-10 12:00:00', 40, 0, 1),
	(29, 4, '2017-10-10 12:00:00', 40, 1, 1),
	(29, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(29, 6, '2017-10-10 12:00:00', 40, 0, 1),
	(29, 7, '2017-10-10 12:00:00', 40, 0, 1),
	(29, 8, '2017-10-10 12:00:00', 40, 1, 3),
	(29, 9, '2017-10-10 12:00:00', 40, 0, 1),
	(29, 10, '2017-10-10 12:00:00', 40, 0, 1),
	(29, 11, '2017-10-10 12:00:00', 40, 2, 3),
	(29, 12, '2017-10-10 12:00:00', 40, 0, 1),
	(31, 1, '2017-10-10 12:00:00', 40, 0, 1),
	(31, 2, '2017-10-10 12:00:00', 40, 0, 1),
	(31, 3, '2017-10-10 12:00:00', 40, 0, 3),
	(31, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(31, 5, '2017-10-10 12:00:00', 40, 0, 3),
	(31, 6, '2017-10-10 12:00:00', 40, 0, 3),
	(31, 9, '2017-10-10 12:00:00', 40, 0, 1),
	(31, 10, '2017-10-10 12:00:00', 40, 0, 1),
	(31, 11, '2017-10-10 12:00:00', 40, 0, 1),
	(32, 1, '2017-10-10 12:00:00', 40, 0, 1),
	(32, 2, '2017-10-10 12:00:00', 40, 2, 3),
	(32, 3, '2017-10-10 12:00:00', 40, 1, 1),
	(32, 4, '2017-10-10 12:00:00', 40, 1, 3),
	(32, 5, '2017-10-10 12:00:00', 40, 1, 3),
	(32, 6, '2017-10-10 12:00:00', 40, 0, 1),
	(32, 7, '2017-10-10 12:00:00', 40, 0, 0),
	(32, 8, '2017-10-10 12:00:00', 40, 0, 1),
	(32, 9, '2017-10-10 12:00:00', 40, 1, 1),
	(32, 10, '2017-10-10 12:00:00', 40, 1, 3),
	(32, 11, '2017-10-10 12:00:00', 40, 0, 1),
	(33, 1, '2017-10-10 12:00:00', 40, 2, 3),
	(33, 2, '2017-10-10 12:00:00', 40, 0, 1),
	(33, 3, '2017-10-10 12:00:00', 40, 0, 0),
	(33, 4, '2017-10-10 12:00:00', 40, 0, 3),
	(33, 5, '2017-10-10 12:00:00', 40, 0, 0),
	(33, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(33, 9, '2017-10-10 12:00:00', 40, 0, 0),
	(33, 10, '2017-10-10 12:00:00', 40, 2, 3),
	(33, 11, '2017-10-10 12:00:00', 40, 0, 3),
	(35, 1, '2017-10-10 12:00:00', 40, 0, 1),
	(35, 2, '2017-10-10 12:00:00', 40, 1, 3),
	(35, 3, '2017-10-10 12:00:00', 40, 2, 3),
	(35, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(35, 5, '2017-10-10 12:00:00', 40, 0, 3),
	(35, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(35, 9, '2017-10-10 12:00:00', 40, 0, 0),
	(35, 10, '2017-10-10 12:00:00', 40, 2, 3),
	(35, 12, '2017-10-10 12:00:00', 40, 0, 0),
	(37, 1, '2017-10-10 12:00:00', 40, 1, 1),
	(37, 3, '2017-10-10 12:00:00', 40, 0, 3),
	(37, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(37, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(37, 6, '2017-10-10 12:00:00', 40, 0, 3),
	(37, 8, '2017-10-10 12:00:00', 40, 0, 0),
	(37, 10, '2017-10-10 12:00:00', 40, 0, 3),
	(37, 11, '2017-10-10 12:00:00', 40, 0, 1),
	(38, 1, '2017-10-10 12:00:00', 40, 0, 3),
	(38, 2, '2017-10-10 12:00:00', 40, 0, 3),
	(38, 3, '2017-10-10 12:00:00', 40, 0, 1),
	(38, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(38, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(38, 6, '2017-10-10 12:00:00', 40, 1, 3),
	(38, 7, '2017-10-10 12:00:00', 40, 1, 1),
	(38, 8, '2017-10-10 12:00:00', 40, 1, 1),
	(38, 9, '2017-10-10 12:00:00', 40, 0, 1),
	(38, 10, '2017-10-10 12:00:00', 40, 1, 1),
	(38, 11, '2017-10-10 12:00:00', 40, 1, 1),
	(38, 12, '2017-10-10 12:00:00', 40, 0, 1),
	(44, 1, '2017-10-10 12:00:00', 40, 0, 1),
	(44, 2, '2017-10-10 12:00:00', 40, 2, 3),
	(44, 3, '2017-10-10 12:00:00', 40, 0, 1),
	(44, 4, '2017-10-10 12:00:00', 40, 2, 3),
	(44, 5, '2017-10-10 12:00:00', 40, 2, 3),
	(44, 6, '2017-10-10 12:00:00', 40, 1, 1),
	(44, 7, '2017-10-10 12:00:00', 40, 0, 3),
	(44, 8, '2017-10-10 12:00:00', 40, 0, 0),
	(44, 9, '2017-10-10 12:00:00', 40, 1, 1),
	(44, 10, '2017-10-10 12:00:00', 40, 2, 3),
	(44, 11, '2017-10-10 12:00:00', 40, 2, 3),
	(44, 12, '2017-10-10 12:00:00', 40, 1, 1),
	(45, 1, '2017-10-10 12:00:00', 40, 0, 1),
	(45, 2, '2017-10-10 12:00:00', 40, 0, 1),
	(45, 3, '2017-10-10 12:00:00', 40, 0, 3),
	(45, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(45, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(45, 6, '2017-10-10 12:00:00', 40, 0, 1),
	(45, 7, '2017-10-10 12:00:00', 40, 0, 3),
	(45, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(45, 9, '2017-10-10 12:00:00', 40, 0, 1),
	(45, 10, '2017-10-10 12:00:00', 40, 1, 3),
	(45, 11, '2017-10-10 12:00:00', 40, 0, 1),
	(45, 12, '2017-10-10 12:00:00', 40, 0, 0),
	(48, 3, '2017-10-10 12:00:00', 40, 0, 3),
	(48, 4, '2017-10-10 12:00:00', 40, 0, 3),
	(48, 5, '2017-10-10 12:00:00', 40, 0, 3),
	(48, 6, '2017-10-10 12:00:00', 40, 0, 3),
	(48, 10, '2017-10-10 12:00:00', 40, 0, 3),
	(48, 11, '2017-10-10 12:00:00', 40, 0, 3),
	(48, 12, '2017-10-10 12:00:00', 40, 0, 0),
	(49, 2, '2017-10-10 12:00:00', 40, 0, 0),
	(49, 3, '2017-10-10 12:00:00', 40, 0, 1),
	(49, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(49, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(49, 6, '2017-10-10 12:00:00', 40, 0, 0),
	(49, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(49, 11, '2017-10-10 12:00:00', 40, 0, 1),
	(50, 4, '2017-10-10 12:00:00', 40, 0, 3),
	(50, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(50, 6, '2017-10-10 12:00:00', 40, 0, 1),
	(50, 7, '2017-10-10 12:00:00', 40, 0, 0),
	(50, 10, '2017-10-10 12:00:00', 40, 0, 3),
	(50, 11, '2017-10-10 12:00:00', 40, 0, 1),
	(52, 1, '2017-10-10 12:00:00', 40, 1, 1),
	(52, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(52, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(52, 9, '2017-10-10 12:00:00', 40, 1, 1),
	(52, 10, '2017-10-10 12:00:00', 40, 0, 3),
	(52, 11, '2017-10-10 12:00:00', 40, 0, 3),
	(52, 12, '2017-10-10 12:00:00', 40, 1, 1),
	(54, 1, '2017-10-10 12:00:00', 40, 0, 0),
	(54, 2, '2017-10-10 12:00:00', 40, 0, 1),
	(54, 3, '2017-10-10 12:00:00', 40, 0, 1),
	(54, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(54, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(54, 6, '2017-10-10 12:00:00', 40, 0, 3),
	(54, 7, '2017-10-10 12:00:00', 40, 0, 3),
	(54, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(54, 9, '2017-10-10 12:00:00', 40, 0, 1),
	(54, 12, '2017-10-10 12:00:00', 40, 0, 3),
	(56, 1, '2017-10-10 12:00:00', 40, 0, 3),
	(56, 2, '2017-10-10 12:00:00', 40, 0, 0),
	(56, 3, '2017-10-10 12:00:00', 40, 0, 3),
	(56, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(56, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(56, 6, '2017-10-10 12:00:00', 40, 0, 3),
	(56, 7, '2017-10-10 12:00:00', 40, 0, 3),
	(56, 8, '2017-10-10 12:00:00', 40, 0, 0),
	(56, 9, '2017-10-10 12:00:00', 40, 0, 3),
	(56, 10, '2017-10-10 12:00:00', 40, 0, 0),
	(56, 11, '2017-10-10 12:00:00', 40, 0, 1),
	(56, 12, '2017-10-10 12:00:00', 40, 0, 1),
	(58, 1, '2017-10-10 12:00:00', 40, 0, 0),
	(58, 2, '2017-10-10 12:00:00', 40, 0, 3),
	(58, 4, '2017-10-10 12:00:00', 40, 0, 3),
	(58, 5, '2017-10-10 12:00:00', 40, 0, 3),
	(58, 6, '2017-10-10 12:00:00', 40, 0, 1),
	(58, 7, '2017-10-10 12:00:00', 40, 0, 1),
	(58, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(58, 9, '2017-10-10 12:00:00', 40, 0, 1),
	(58, 10, '2017-10-10 12:00:00', 40, 0, 0),
	(58, 11, '2017-10-10 12:00:00', 40, 0, 3),
	(58, 12, '2017-10-10 12:00:00', 40, 0, 3),
	(61, 4, '2017-10-10 12:00:00', 40, 0, 0),
	(61, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(61, 6, '2017-10-10 12:00:00', 40, 0, 1),
	(61, 7, '2017-10-10 12:00:00', 40, 0, 0),
	(61, 8, '2017-10-10 12:00:00', 40, 0, 0),
	(61, 10, '2017-10-10 12:00:00', 40, 0, 1),
	(62, 1, '2017-10-10 12:00:00', 40, 2, 3),
	(62, 3, '2017-10-10 12:00:00', 40, 2, 3),
	(62, 4, '2017-10-10 12:00:00', 40, 0, 0),
	(62, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(62, 6, '2017-10-10 12:00:00', 40, 0, 3),
	(62, 7, '2017-10-10 12:00:00', 40, 2, 3),
	(62, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(63, 1, '2017-10-10 12:00:00', 40, 0, 0),
	(63, 2, '2017-10-10 12:00:00', 40, 0, 0),
	(63, 3, '2017-10-10 12:00:00', 40, 2, 3),
	(63, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(63, 5, '2017-10-10 12:00:00', 40, 1, 1),
	(63, 6, '2017-10-10 12:00:00', 40, 0, 0),
	(63, 7, '2017-10-10 12:00:00', 40, 0, 1),
	(63, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(63, 9, '2017-10-10 12:00:00', 40, 0, 1),
	(63, 10, '2017-10-10 12:00:00', 40, 0, 1),
	(63, 11, '2017-10-10 12:00:00', 40, 1, 1),
	(63, 12, '2017-10-10 12:00:00', 40, 1, 1),
	(64, 2, '2017-10-10 12:00:00', 40, 0, 1),
	(64, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(64, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(64, 8, '2017-10-10 12:00:00', 40, 0, 0),
	(64, 9, '2017-10-10 12:00:00', 40, 0, 0),
	(64, 10, '2017-10-10 12:00:00', 40, 0, 0),
	(64, 11, '2017-10-10 12:00:00', 40, 0, 3),
	(64, 12, '2017-10-10 12:00:00', 40, 0, 3),
	(65, 1, '2017-10-10 12:00:00', 40, 1, 1),
	(65, 2, '2017-10-10 12:00:00', 40, 1, 1),
	(65, 3, '2017-10-10 12:00:00', 40, 2, 3),
	(65, 4, '2017-10-10 12:00:00', 40, 1, 1),
	(65, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(65, 6, '2017-10-10 12:00:00', 40, 1, 3),
	(65, 7, '2017-10-10 12:00:00', 40, 1, 3),
	(65, 8, '2017-10-10 12:00:00', 40, 0, 0),
	(65, 9, '2017-10-10 12:00:00', 40, 0, 1),
	(65, 10, '2017-10-10 12:00:00', 40, 0, 1),
	(65, 11, '2017-10-10 12:00:00', 40, 0, 1),
	(65, 12, '2017-10-10 12:00:00', 40, 1, 1),
	(67, 1, '2017-10-10 12:00:00', 40, 0, 0),
	(67, 2, '2017-10-10 12:00:00', 40, 0, 0),
	(67, 4, '2017-10-10 12:00:00', 40, 0, 3),
	(67, 5, '2017-10-10 12:00:00', 40, 0, 3),
	(67, 6, '2017-10-10 12:00:00', 40, 0, 0),
	(67, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(67, 9, '2017-10-10 12:00:00', 40, 0, 0),
	(67, 11, '2017-10-10 12:00:00', 40, 0, 3),
	(67, 12, '2017-10-10 12:00:00', 40, 0, 0),
	(70, 1, '2017-10-10 12:00:00', 40, 0, 3),
	(70, 4, '2017-10-10 12:00:00', 40, 0, 3),
	(70, 7, '2017-10-10 12:00:00', 40, 0, 1),
	(70, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(70, 9, '2017-10-10 12:00:00', 40, 0, 3),
	(70, 11, '2017-10-10 12:00:00', 40, 0, 0),
	(70, 12, '2017-10-10 12:00:00', 40, 0, 3),
	(71, 1, '2017-10-10 12:00:00', 40, 0, 0),
	(71, 2, '2017-10-10 12:00:00', 40, 0, 3),
	(71, 4, '2017-10-10 12:00:00', 40, 0, 3),
	(71, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(71, 6, '2017-10-10 12:00:00', 40, 0, 0),
	(71, 7, '2017-10-10 12:00:00', 40, 0, 1),
	(71, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(71, 9, '2017-10-10 12:00:00', 40, 0, 1),
	(71, 10, '2017-10-10 12:00:00', 40, 0, 3),
	(71, 11, '2017-10-10 12:00:00', 40, 0, 1),
	(71, 12, '2017-10-10 12:00:00', 40, 0, 3),
	(72, 1, '2017-10-10 12:00:00', 40, 0, 1),
	(72, 2, '2017-10-10 12:00:00', 40, 0, 1),
	(72, 3, '2017-10-10 12:00:00', 40, 1, 1),
	(72, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(72, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(72, 6, '2017-10-10 12:00:00', 40, 1, 1),
	(72, 7, '2017-10-10 12:00:00', 40, 1, 3),
	(72, 8, '2017-10-10 12:00:00', 40, 0, 1),
	(72, 9, '2017-10-10 12:00:00', 40, 1, 1),
	(72, 10, '2017-10-10 12:00:00', 40, 0, 1),
	(72, 11, '2017-10-10 12:00:00', 40, 0, 3),
	(72, 12, '2017-10-10 12:00:00', 40, 0, 0),
	(73, 4, '2017-10-10 12:00:00', 40, 0, 3),
	(73, 5, '2017-10-10 12:00:00', 40, 0, 3),
	(73, 6, '2017-10-10 12:00:00', 40, 0, 3),
	(73, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(73, 10, '2017-10-10 12:00:00', 40, 0, 3),
	(73, 11, '2017-10-10 12:00:00', 40, 0, 3),
	(73, 12, '2017-10-10 12:00:00', 40, 0, 0),
	(76, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(76, 5, '2017-10-10 12:00:00', 40, 0, 1),
	(76, 6, '2017-10-10 12:00:00', 40, 0, 0),
	(76, 7, '2017-10-10 12:00:00', 40, 0, 1),
	(76, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(76, 9, '2017-10-10 12:00:00', 40, 0, 1),
	(76, 10, '2017-10-10 12:00:00', 40, 0, 3),
	(76, 11, '2017-10-10 12:00:00', 40, 2, 3),
	(76, 12, '2017-10-10 12:00:00', 40, 1, 1),
	(77, 1, '2017-10-10 12:00:00', 40, 1, 1),
	(77, 2, '2017-10-10 12:00:00', 40, 0, 3),
	(77, 3, '2017-10-10 12:00:00', 40, 0, 0),
	(77, 4, '2017-10-10 12:00:00', 40, 1, 3),
	(77, 6, '2017-10-10 12:00:00', 40, 1, 1),
	(77, 7, '2017-10-10 12:00:00', 40, 0, 3),
	(77, 8, '2017-10-10 12:00:00', 40, 0, 0),
	(77, 9, '2017-10-10 12:00:00', 40, 0, 0),
	(77, 10, '2017-10-10 12:00:00', 40, 1, 3),
	(77, 11, '2017-10-10 12:00:00', 40, 0, 1),
	(77, 12, '2017-10-10 12:00:00', 40, 0, 0),
	(79, 1, '2017-10-10 12:00:00', 40, 0, 1),
	(79, 2, '2017-10-10 12:00:00', 40, 0, 3),
	(79, 4, '2017-10-10 12:00:00', 40, 0, 1),
	(79, 5, '2017-10-10 12:00:00', 40, 0, 3),
	(79, 6, '2017-10-10 12:00:00', 40, 0, 3),
	(79, 7, '2017-10-10 12:00:00', 40, 0, 1),
	(79, 8, '2017-10-10 12:00:00', 40, 0, 3),
	(79, 9, '2017-10-10 12:00:00', 40, 0, 1),
	(79, 10, '2017-10-10 12:00:00', 40, 0, 0),
	(79, 11, '2017-10-10 12:00:00', 40, 0, 3),
	(79, 12, '2017-10-10 12:00:00', 40, 0, 0);
	
INSERT INTO Credentials (user_id, company, title) VALUES
	(13, 'Company', 'Title'),
	(14, 'Company', 'Title'),
	(15, 'Company', 'Title'),
	(16, 'Company', 'Title'),
	(17, 'Company', 'Title'),
	(18, 'Company', 'Title'),
	(19, 'Company', 'Title'),
	(20, 'Company', 'Title'),
	(21, 'Company', 'Title'),
	(22, 'Company', 'Title'),
	(23, 'Company', 'Title'),
	(24, 'Company', 'Title'),
	(25, 'Company', 'Title'),
	(26, 'Company', 'Title'),
	(27, 'Company', 'Title'),
	(28, 'Company', 'Title'),
	(29, 'Company', 'Title'),
	(30, 'Company', 'Title'),
	(31, 'Company', 'Title'),
	(32, 'Company', 'Title'),
	(33, 'Company', 'Title'),
	(34, 'Company', 'Title'),
	(35, 'Company', 'Title'),
	(36, 'Company', 'Title'),
	(37, 'Company', 'Title'),
	(38, 'Company', 'Title'),
	(39, 'Company', 'Title'),
	(40, 'Company', 'Title'),
	(41, 'Company', 'Title'),
	(42, 'Company', 'Title'),
	(43, 'Company', 'Title'),
	(44, 'Company', 'Title'),
	(45, 'Company', 'Title'),
	(46, 'Company', 'Title'),
	(47, 'Company', 'Title'),
	(48, 'Company', 'Title'),
	(49, 'Company', 'Title'),
	(50, 'Company', 'Title'),
	(51, 'Company', 'Title'),
	(52, 'Company', 'Title'),
	(53, 'Company', 'Title'),
	(54, 'Company', 'Title'),
	(55, 'Company', 'Title'),
	(56, 'Company', 'Title'),
	(57, 'Company', 'Title'),
	(58, 'Company', 'Title'),
	(59, 'Company', 'Title'),
	(60, 'Company', 'Title'),
	(61, 'Company', 'Title'),
	(62, 'Company', 'Title'),
	(63, 'Company', 'Title'),
	(64, 'Company', 'Title'),
	(65, 'Company', 'Title'),
	(66, 'Company', 'Title'),
	(67, 'Company', 'Title'),
	(68, 'Company', 'Title'),
	(69, 'Company', 'Title'),
	(70, 'Company', 'Title'),
	(71, 'Company', 'Title'),
	(72, 'Company', 'Title'),
	(73, 'Company', 'Title'),
	(74, 'Company', 'Title'),
	(75, 'Company', 'Title'),
	(76, 'Company', 'Title'),
	(77, 'Company', 'Title'),
	(78, 'Company', 'Title'),
	(79, 'Company', 'Title'),
	(80, 'Company', 'Title'),
	(81, 'Company', 'Title');

INSERT INTO Timeslots (user_id, datetime, duration) VALUES
	(13, '2017-10-20 12:00:00', 240),
	(14, '2017-10-20 12:00:00', 240),
	(15, '2017-10-20 12:00:00', 240),
	(16, '2017-10-20 12:00:00', 240),
	(17, '2017-10-20 12:00:00', 240),
	(18, '2017-10-20 12:00:00', 240),
	(19, '2017-10-20 12:00:00', 240),
	(20, '2017-10-20 12:00:00', 240),
	(21, '2017-10-20 12:00:00', 240),
	(22, '2017-10-20 12:00:00', 240),
	(23, '2017-10-20 12:00:00', 240),
	(24, '2017-10-20 12:00:00', 240),
	(25, '2017-10-20 12:00:00', 240),
	(26, '2017-10-20 12:00:00', 240),
	(27, '2017-10-20 12:00:00', 240),
	(28, '2017-10-20 12:00:00', 240),
	(29, '2017-10-20 12:00:00', 240),
	(30, '2017-10-20 12:00:00', 240),
	(31, '2017-10-20 12:00:00', 240),
	(32, '2017-10-20 12:00:00', 240),
	(33, '2017-10-20 12:00:00', 240),
	(34, '2017-10-20 12:00:00', 240),
	(35, '2017-10-20 12:00:00', 240),
	(36, '2017-10-20 12:00:00', 240),
	(37, '2017-10-20 12:00:00', 240),
	(38, '2017-10-20 12:00:00', 240),
	(39, '2017-10-20 12:00:00', 240),
	(40, '2017-10-20 12:00:00', 240),
	(41, '2017-10-20 12:00:00', 240),
	(42, '2017-10-20 12:00:00', 240),
	(43, '2017-10-20 12:00:00', 240),
	(44, '2017-10-20 12:00:00', 240),
	(45, '2017-10-20 12:00:00', 240),
	(46, '2017-10-20 12:00:00', 240),
	(47, '2017-10-20 12:00:00', 240),
	(48, '2017-10-20 12:00:00', 240),
	(49, '2017-10-20 12:00:00', 240),
	(50, '2017-10-20 12:00:00', 240),
	(51, '2017-10-20 12:00:00', 240),
	(52, '2017-10-20 12:00:00', 240),
	(53, '2017-10-20 12:00:00', 240),
	(54, '2017-10-20 12:00:00', 240),
	(55, '2017-10-20 12:00:00', 240),
	(56, '2017-10-20 12:00:00', 240),
	(57, '2017-10-20 12:00:00', 240),
	(58, '2017-10-20 12:00:00', 240),
	(59, '2017-10-20 12:00:00', 240),
	(60, '2017-10-20 12:00:00', 240),
	(61, '2017-10-20 12:00:00', 240),
	(62, '2017-10-20 12:00:00', 240),
	(63, '2017-10-20 12:00:00', 240),
	(64, '2017-10-20 12:00:00', 240),
	(65, '2017-10-20 12:00:00', 240),
	(66, '2017-10-20 12:00:00', 240),
	(67, '2017-10-20 12:00:00', 240),
	(68, '2017-10-20 12:00:00', 240),
	(69, '2017-10-20 12:00:00', 240),
	(70, '2017-10-20 12:00:00', 240),
	(71, '2017-10-20 12:00:00', 240),
	(72, '2017-10-20 12:00:00', 240),
	(73, '2017-10-20 12:00:00', 240),
	(74, '2017-10-20 12:00:00', 240),
	(75, '2017-10-20 12:00:00', 240),
	(76, '2017-10-20 12:00:00', 240),
	(77, '2017-10-20 12:00:00', 240),
	(78, '2017-10-20 12:00:00', 240),
	(79, '2017-10-20 12:00:00', 240),
	(80, '2017-10-20 12:00:00', 240),
	(81, '2017-10-20 12:00:00', 240);