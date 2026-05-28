-- -- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- -- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- -- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

-- /*
-- comandos para mysql server
-- */

-- CREATE DATABASE aquatech;

-- USE aquatech;

-- CREATE TABLE empresa (
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	razao_social VARCHAR(50),
-- 	cnpj CHAR(14),
-- 	codigo_ativacao VARCHAR(50)
-- );

-- CREATE TABLE usuario (
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	nome VARCHAR(50),
-- 	email VARCHAR(50),
-- 	senha VARCHAR(50),
-- 	fk_empresa INT,
-- 	FOREIGN KEY (fk_empresa) REFERENCES empresa(id)
-- );

-- CREATE TABLE aviso (
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	titulo VARCHAR(100),
-- 	descricao VARCHAR(150),
-- 	fk_usuario INT,
-- 	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
-- );

-- create table aquario (
-- /* em nossa regra de negócio, um aquario tem apenas um sensor */
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	descricao VARCHAR(300),
-- 	fk_empresa INT,
-- 	FOREIGN KEY (fk_empresa) REFERENCES empresa(id)
-- );

-- /* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */

-- create table medida (
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	dht11_umidade DECIMAL,
-- 	dht11_temperatura DECIMAL,
-- 	luminosidade DECIMAL,
-- 	lm35_temperatura DECIMAL,
-- 	chave TINYINT,
-- 	momento DATETIME,
-- 	fk_aquario INT,
-- 	FOREIGN KEY (fk_aquario) REFERENCES aquario(id)
-- );

-- insert into empresa (razao_social, codigo_ativacao) values ('Empresa 1', 'ED145B');
-- insert into empresa (razao_social, codigo_ativacao) values ('Empresa 2', 'A1B2C3');
-- insert into aquario (descricao, fk_empresa) values ('Aquário de Estrela-do-mar', 1);
-- insert into aquario (descricao, fk_empresa) values ('Aquário de Peixe-dourado', 2);


drop database limbus_company;
create database limbus_company;
use limbus_company;

CREATE TABLE usuario (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50),
  email VARCHAR(50),
  senha VARCHAR(50)
);

CREATE TABLE sinners (
  sinner_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO sinners (name) VALUES
('Yi Sang'), ('Faust'), ('Don Quixote'), ('Ryōshū'),
('Meursault'), ('Hong Lu'), ('Heathcliff'), ('Ishmael'),
('Rodion'), ('Sinclair'), ('Outis'), ('Gregor');

CREATE TABLE identities (
  identity_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  sinner_id INT NOT NULL,
  UNIQUE(name),
  FOREIGN KEY (sinner_id) REFERENCES sinners(sinner_id)
);

INSERT INTO identities (name, sinner_id) VALUES
('LCB Sinner Yi Sang', 1),
('Seven Assoc. South Section 6 Yi Sang', 1),
('Molar Office Fixer Yi Sang', 1),
('The Pequod First Mate Yi Sang', 1),
('Dieci Assoc. South Section 4 Yi Sang', 1),
('Blade Lineage Salsu Yi Sang', 1),
('Effloresced E.G.O::Spicebush Yi Sang', 1),
('The House of Spiders: The Index Nursefather Yi Sang', 1),
('W Corp. L3 Cleanup Agent Yi Sang', 1),
('The Ring Pointillist Student Yi Sang', 1),
('LCB Sinner Faust', 2),
('Lobotomy Corp. Remnant Faust', 2),
('W Corp. L2 Cleanup Agent Faust', 2),
('Zwei Assoc. South Section 4 Faust', 2),
('Wuthering Heights Butler Faust', 2),
('The One Who Grips Faust', 2),
('Seven Assoc. South Section 4 Faust', 2),
('Lobotomy E.G.O::Regret Faust', 2),
('Blade Lineage Salsu Faust', 2),
('LCB Sinner Don Quixote', 3),
('Shi Assoc. South Section 5 Director Don Quixote', 3),
('N Corp. Mittelhammer Don Quixote', 3),
('Lobotomy E.G.O::Lantern Don Quixote', 3),
('Blade Lineage Salsu Don Quixote', 3),
('W Corp. L3 Cleanup Agent Don Quixote', 3),
('Cinq Assoc. South Section 5 Director Don Quixote', 3),
('The Middle Little Sister Don Quixote', 3),
('LCB Sinner Ryōshū', 4),
('Seven Assoc. South Section 6 Ryōshū', 4),
('LCCB Assistant Manager Ryōshū', 4),
('Liu Assoc. South Section 4 Ryōshū', 4),
('District 20 Yurodivy Ryōshū', 4),
('Kurokumo Clan Wakashu Ryōshū', 4),
('R.B. Chef de Cuisine Ryōshū', 4),
('W Corp. L3 Cleanup Agent Ryōshū', 4),
('Edgar Family Chief Butler Ryōshū', 4),
('LCB Sinner Meursault', 5),
('Liu Assoc. South Section 6 Meursault', 5),
('Rosespanner Workshop Fixer Meursault', 5),
('The Middle Little Brother Meursault', 5),
('Dead Rabbits Boss Meursault', 5),
('W Corp. L2 Cleanup Agent Meursault', 5),
('N Corp. Großhammer Meursault', 5),
('R Corp. 4th Pack Rhino Meursault', 5),
('Blade Lineage Mentor Meursault', 5),
('Cinq Assoc. West Section 3 Meursault', 5),
('LCB Sinner Hong Lu', 6),
('Kurokumo Clan Wakashu Hong Lu', 6),
('Liu Assoc. South Section 5 Hong Lu', 6),
('W Corp. L2 Cleanup Agent Hong Lu', 6),
('Hook Office Fixer Hong Lu', 6),
('Tingtang Gang Gangleader Hong Lu', 6),
('K Corp. Class 3 Excision Staff Hong Lu', 6),
('Dieci Assoc. South Section 4 Hong Lu', 6),
('District 20 Yurodivy Hong Lu', 6),
('R Corp. 4th Pack Reindeer Hong Lu', 6),
('LCB Sinner Heathcliff', 7),
('Shi Assoc. South Section 5 Heathcliff', 7),
('N Corp. Kleinhammer Heathcliff', 7),
('Seven Assoc. South Section 4 Heathcliff', 7),
('R Corp. 4th Pack Rabbit Heathcliff', 7),
('Lobotomy E.G.O::Sunshower Heathcliff', 7),
('The Pequod Harpooneer Heathcliff', 7),
('Öufi Assoc. South Section 3 Heathcliff', 7),
('Wild Hunt Heathcliff', 7),
('LCB Sinner Ishmael', 8),
('Shi Assoc. South Section 5 Ishmael', 8),
('LCCB Assistant Manager Ishmael', 8),
('Lobotomy E.G.O::Sloshing Ishmael', 8),
('Edgar Family Butler Ishmael', 8),
('R Corp. 4th Pack Reindeer Ishmael', 8),
('Liu Assoc. South Section 4 Ishmael', 8),
('Molar Boatworks Fixer Ishmael', 8),
('The Pequod Captain Ishmael', 8),
('LCB Sinner Rodion', 9),
('LCCB Assistant Manager Rodion', 9),
('N Corp. Mittelhammer Rodion', 9),
('Zwei Assoc. South Section 5 Rodion', 9),
('Kurokumo Clan Wakashu Rodion', 9),
('Rosespanner Workshop Rep. Rodion', 9),
('Dieci Assoc. South Section 4 Rodion', 9),
('Liu Assoc. South Section 4 Director Rodion', 9),
('Devyat'' Assoc. North Section 3 Rodion', 9),
('Lobotomy E.G.O::The Sword Sharpened With Tears Rodion', 9),
('LCB Sinner Sinclair', 10),
('Zwei Assoc. South Section 6 Sinclair', 10),
('Los Mariachis Jefe Sinclair', 10),
('Lobotomy E.G.O::Red Sheet Sinclair', 10),
('Molar Boatworks Fixer Sinclair', 10),
('Blade Lineage Salsu Sinclair', 10),
('The One Who Shall Grip Sinclair', 10),
('Cinq Assoc. South Section 4 Director Sinclair', 10),
('Dawn Office Fixer Sinclair', 10),
('Devyat'' Assoc. North Section 3 Sinclair', 10),
('LCB Sinner Outis', 11),
('Blade Lineage Salsu Outis', 11),
('G Corp. Head Manager Outis', 11),
('Cinq Assoc. South Section 4 Outis', 11),
('The Ring Pointillist Student Outis', 11),
('Seven Assoc. South Section 6 Director Outis', 11),
('Molar Office Fixer Outis', 11),
('Lobotomy E.G.O::Magic Bullet Outis', 11),
('Wuthering Heights Chief Butler Outis', 11),
('Heishou Pack – Mao Branch Outis', 11),
('The Barber of La Manchaland Outis', 11),
('LCB Sinner Gregor', 12),
('Liu Assoc. South Section 6 Gregor', 12),
('R.B. Sous-chef Gregor', 12),
('Rosespanner Workshop Fixer Gregor', 12),
('G Corp. Manager Corporal Gregor', 12),
('Zwei Assoc. South Section 4 Gregor', 12),
('Twinhook Pirates First Mate Gregor', 12),
('Edgar Family Heir Gregor', 12),
('Kurokumo Clan Captain Gregor', 12);

CREATE TABLE skills (
    skill_id INT AUTO_INCREMENT PRIMARY KEY,
    identity_id INT NOT NULL,
    base1 INT NOT NULL, coin1 INT NOT NULL, amt1 INT NOT NULL,
    type1 VARCHAR(100), sin1 VARCHAR(100),
    base2 INT NOT NULL, coin2 INT NOT NULL, amt2 INT NOT NULL,
    type2 VARCHAR(100), sin2 VARCHAR(100),
    base3 INT NOT NULL, coin3 INT NOT NULL, amt3 INT NOT NULL,
    type3 VARCHAR(100), sin3 VARCHAR(100),
    facade INT NOT NULL DEFAULT 0,
    FOREIGN KEY (identity_id) REFERENCES identities(identity_id)
);

INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (1, 
            4, 7, 1, 'Deflect Yi Sang', 'Gloom',
            4, 4, 2, 'End-stop Stab Yi Sang', 'Envy',
            6, 2, 3, 'Enjamb Yi Sang', 'Sloth');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (2, 
            5, 7, 1, 'Flèche', 'Gloom',
            5, 4, 2, 'Riposte', 'Gluttony',
            5, 3, 3, 'Moulinet', 'Sloth');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (3, 
            3, 4, 2, 'Stay Calm', 'Lust',
            4, 12, 1, 'Gamble', 'Sloth',
            4, 3, 3, 'Grinding the Molars', 'Wrath');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (4, 
            3, 4, 2, 'Impale', 'Pride',
            4, 4, 2, 'Relentless Stabbing', 'Envy',
            4, 6, 2, 'Ambush', 'Gluttony');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (5, 
            3, 4, 2, 'Expend Knowledge', 'Gluttony',
            4, 3, 3, 'Seal Shut', 'Lust',
            4, 2, 4, 'Grace of Knowledge', 'Sloth');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (6, 
            6, 7, 1, 'Strikers Stance', 'Pride',
            7, 2, 2, 'Heel Turn', 'Wrath',
            8, 2, 3, 'Flank Thrust', 'Envy');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (7, 
            3, 2, 3, 'Sprouting Bud', 'Gluttony',
            4, 4, 3, 'Moments Floral Breeze', 'Sloth',
            6, 4, 3, 'Bloodsteeped Scent', 'Pride');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (8, 
            3, 4, 2, '"Enwrap 330 times in Long Swaths of Frozen Blood"', 'Gluttony',
            4, 4, 3, '"Revel with Soundless Applause, Impale in Voiceless Sorrow"', 'Pride',
            4, 3, 13, '"Raise and Laugh the Blade, Cry the Waterfall Like the Scent of Fallen Leaves"', 'Gloom');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (9, 
            5, 6, 1, 'Dimensional Slit', 'Sloth',
            5, 5, 2, 'Energy Cycle', 'Gluttony',
            5, 4, 3, 'Dimensional Rift', 'Gloom');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (10, 
            2, 3, 3, 'Paint Over', 'Gloom',
            8, 8, 1, 'Sanguine Pointillism', 'Lust',
            3, 3, 4, 'Hematic Coloring', 'Sloth');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (11, 
            4, 7, 1, 'Downward Slash Faust', 'Pride',
            5, 4, 2, 'Upward Slash Faust', 'Sloth',
            7, 2, 2, 'Drilling Stab Faust', 'Gluttony');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (12, 
            3, 8, 1, 'Sole Strike', 'Lust',
            5, 3, 3, 'Deep Cuts', 'Gloom',
            4, 8, 2, 'Opportunistic Slash', 'Envy');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (13, 
            4, 8, 1, 'Energy Cycle', 'Envy',
            6, 4, 2, 'Leap', 'Gloom',
            6, 3, 3, 'Overcharge', 'Wrath');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (14, 
            3, 4, 2, 'Zwei Association South Section 4 Patrolling', 'Envy',
            4, 3, 3, 'Zwei Association South Section 4 Client Protection', 'Gloom',
            6, 5, 2, 'Zwei Association South Section 4 Law and Order', 'Lust');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (15, 
            3, 4, 2, 'Confiscation', 'Gloom',
            4, 5, 2, 'Interloper Reception', 'Lust',
            4, 2, 4, 'Reception Arts 4 Heartseal', 'Wrath');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (21, 
            4, 7, 1, 'Catch Breath', 'Wrath',
            4, 6, 2, 'Dual Strike', 'Envy',
            4, 21, 1, 'Overbreathe', 'Lust');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (24, 
            3, 4, 2, 'Draw of the Sword', 'Pride',
            4, 5, 2, 'Blade Arc', 'Envy',
            4, 3, 3, 'Fare Thee Well', 'Sloth');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (31, 
            3, 4, 2, 'All-out War', 'Gluttony',
            4, 5, 2, 'Fiery Knifehand', 'Wrath',
            4, 2, 4, 'Flame Cleave', 'Lust');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (33, 
            5, 6, 1, 'Focus Strike', 'Gluttony',
            5, 5, 2, 'Clean Up', 'Pride',
            8, 4, 2, 'Lenticular Swirl', 'Lust');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (34, 
            4, 3, 2, 'P.C.', 'Wrath',
            3, 5, 3, 'I.H.', 'Envy',
            3, 3, 4, 'I Can Cook Anything', 'Lust');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (37, 
            3, 4, 2, 'Un, Deux Meursault', 'Sloth',
            6, 9, 1, 'Nailing Fist Meursault', 'Pride',
            4, 2, 4, 'Des Coups Meursault', 'Gloom');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (39, 
            4, 6, 1, 'Saddled Tasks', 'Gloom',
            5, 4, 2, 'Forced Break', 'Pride',
            4, 2, 4, 'Finishing Runup', 'Sloth');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (40, 
            3, 4, 2, 'We Remember', 'Sloth',
            4, 5, 2, 'Chains of Loyalty', 'Envy',
            4, 3, 3, 'Recording', 'Wrath');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (41, 
            5, 6, 1, 'Bat Strike', 'Lust',
            4, 5, 2, 'Smackdown', 'Wrath',
            4, 2, 4, 'Relentless', 'Gluttony');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (42, 
            5, 6, 1, 'Rip', 'Envy',
            5, 2, 3, 'Energy Cycle', 'Gloom',
            5, 2, 4, 'Energy Current', 'Pride');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (43, 
            5, 1, 2, 'Drive', 'Sloth',
            6, 3, 2, 'You Are Cleansed of Sin', 'Wrath',
            8, 3, 2, 'Annihilate Heretics', 'Pride');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (46, 
            3, 4, 2, 'Allez', 'Pride',
            4, 4, 3, 'Fente', 'Gluttony',
            5, 4, 3, 'Salut', 'Gloom');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (47, 
            4, 7, 1, 'Downward Cleave Hong Lu', 'Pride',
            4, 4, 2, 'Dual Strike Hong Lu', 'Sloth',
            6, 4, 2, 'Whirlwind Hong Lu', 'Lust');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (48, 
            4, 7, 1, 'Cleave', 'Lust',
            5, 4, 2, 'Cloud Cutter', 'Pride',
            7, 2, 3, 'Cloudburst', 'Sloth');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (49, 
            3, 4, 2, 'Warm Up', 'Gloom',
            6, 2, 2, 'Flowing Flame', 'Lust',
            5, 6, 2, 'Crimson Blaze Fist', 'Wrath');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (57, 
            4, 7, 1, 'Bat Bash Heathcliff', 'Envy',
            4, 4, 2, 'Smackdown Heathcliff', 'Wrath',
            4, 8, 2, 'Upheaval Heathcliff', 'Lust');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (59, 
            3, 4, 2, 'Gawky Nailing', 'Envy',
            6, 8, 1, 'Puri...fy!', 'Gloom',
            4, 4, 3, 'Infirm Retribution', 'Lust');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (61, 
            4, 2, 3, 'Graze the Grass', 'Wrath',
            4, 2, 4, 'Concentrated Fire', 'Gluttony',
            3, 2, 5, 'Quick Suppression', 'Envy');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (62, 
            6, - 2, 3, 'Umbrella Thwack', 'Envy',
            10, - 3, 4, 'Puddle Stomp', 'Gloom',
            18, - 7, 3, 'Spread Out!', 'Sloth');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (63, 
            3, 4, 2, 'Stalk Prey', 'Pride',
            4, 4, 3, 'Snagharpoon', 'Envy',
            4, 3, 4, 'Sever Knot', 'Envy');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (65, 
            3, 4, 2, 'Beheading', 'Wrath',
            5, 3, 3, 'Memorial Procession', 'Envy',
            6, 6, 4, 'Requiem', 'Gloom');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (66, 
            4, 7, 1, 'Loggerhead Ishmael', 'Wrath',
            6, 9, 1, 'Slide Ishmael', 'Gluttony',
            8, 12, 1, 'Shield Bash Ishmael', 'Gloom');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (67, 
            3, 4, 2, 'Flying Sword', 'Envy',
            5, 4, 2, 'Flashing Strike', 'Lust',
            1, 6, 2, 'Catch Breath', 'Wrath');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (71, 
            4, 5, 2, 'Mind Strike', 'Gloom',
            6, 12, 1, 'Flaying Surge', 'Envy',
            2, 6, 4, 'Mind Whip', 'Wrath');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (73, 
            4, 3, 2, 'Ready to Crush', 'Pride',
            5, 5, 2, 'Explosive Blast', 'Sloth',
            3, 5, 3, 'Risky Judgement', 'Gloom');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (76, 
            5, 6, 1, 'Bludgeon', 'Pride',
            6, 1, 2, 'Thrust', 'Gluttony',
            7, 2, 2, 'Suppress', 'Envy');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (78, 
            4, 2, 2, 'Careful Obstruction', 'Wrath',
            6, 4, 2, 'Focused Defense', 'Sloth',
            5, 2, 3, 'Subdue Threat', 'Gloom');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (81, 
            3, 2, 3, 'Illuminate Thy Vacuity', 'Gloom',
            3, 3, 4, 'Weight of Knowledge', 'Envy',
            4, 3, 4, 'Excruciating Study', 'Sloth');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (86, 
            4, 6, 1, 'Baton', 'Gloom',
            6, 2, 2, 'Suppress', 'Wrath',
            7, 13, 1, 'Strong Strike', 'Sloth');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (87, 
            4, 2, 2, 'Baile y Rola', 'Sloth',
            5, 1, 3, 'Danza de Pasion', 'Envy',
            8, 11, 1, 'Panata Party', 'Gloom');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (89, 
            2, 1, 4, 'Fierce Assault', 'Gloom',
            4, 12, 1, 'Steady...', 'Envy',
            4, 6, 2, 'Gamble', 'Gluttony');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (96, 
            4, 6, 1, 'Draw of the Sword', 'Wrath',
            5, 4, 2, 'Acupuncture', 'Lust',
            6, 4, 2, 'Decisive Dive', 'Pride');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (97, 
            4, 6, 1, 'Order', 'Sloth',
            6, 10, 1, 'Onslaught Command', 'Gluttony',
            6, 16, 1, 'Focus', 'Gloom');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (100, 
            6, 4, 1, 'Predictive Analysis', 'Gluttony',
            5, 5, 2, 'Field Command', 'Sloth',
            6, 2, 3, 'Exploit the Gap', 'Lust');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (101, 
            4, 7, 1, 'Wait Up', 'Wrath',
            3, 5, 3, 'Slice Molar', 'Lust',
            4, 3, 4, 'Daring Decision', 'Sloth');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (106, 
            4, 7, 1, 'Swipe Gregor', 'Gloom',
            5, 10, 1, 'Jag Gregor', 'Gluttony',
            6, 4, 2, 'Chop Up Gregor', 'Sloth');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (107, 
            4, 2, 2, 'Single-point Stab', 'Wrath',
            5, 2, 3, 'Rush Down', 'Lust',
            4, 2, 4, 'Perfected Palm Strike', 'Sloth');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (110, 
            4, 3, 2, 'Hack', 'Gluttony',
            6, 10, 1, 'Dismember', 'Sloth',
            4, 2, 4, 'Eviscerate', 'Lust');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (111, 
            4, 3, 2, 'Zwei Association South Section 4 Standoff', 'Sloth',
            3, 3, 4, 'Zwei Association South Section 4 Flexible Suppression', 'Gluttony',
            5, 3, 3, 'Zwei Association South Section 4 Guardian', 'Gloom');
INSERT INTO Skills (identity_id, 
            base1, coin1, amt1, type1, sin1,
            base2, coin2, amt2, type2, sin2,
            base3, coin3, amt3, type3, sin3)
            VALUES (114, 
            5, 5, 1, 'Lenticular Rend', 'Sloth',
            5, 5, 2, 'Shadow Cloud', 'Lust',
            4, 3, 3, 'Shadowcloud Shattercleave', 'Gloom');
UPDATE skills sk
JOIN identities i ON sk.identity_id = i.identity_id
JOIN sinners s ON i.sinner_id = s.sinner_id
SET sk.facade = s.sinner_id;

SELECT sk.skill_id, s.name, sk.facade
FROM skills sk
JOIN identities i ON sk.identity_id = i.identity_id
JOIN sinners s ON i.sinner_id = s.sinner_id
ORDER BY sk.facade, sk.skill_id;

SELECT * FROM identities;

CREATE TABLE usuario_identity (
    usuario_id INT NOT NULL,
    identity_id INT NOT NULL,
    PRIMARY KEY (usuario_id, identity_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    FOREIGN KEY (identity_id) REFERENCES identities(identity_id)
);

INSERT INTO usuario (id, nome, email, senha)
VALUES (1, 'Vin', 'email@email.com', 'senha123');

INSERT INTO usuario_identity (usuario_id, identity_id)
VALUES (1, 114), (1, 67);

SELECT * FROM usuario_identity WHERE usuario_id = 1;

SELECT
    u.id AS usuario_id, u.nome,
    i.identity_id, i.name AS identity_name,
    s.name AS sinner_name,
    sk.base1, sk.coin1, sk.amt1, sk.type1, sk.sin1,
    sk.base2, sk.coin2, sk.amt2, sk.type2, sk.sin2,
    sk.base3, sk.coin3, sk.amt3, sk.type3, sk.sin3
FROM usuario u
JOIN usuario_identity ui ON u.id = ui.usuario_id
JOIN identities i ON ui.identity_id = i.identity_id
JOIN sinners s ON i.sinner_id = s.sinner_id
LEFT JOIN skills sk ON sk.identity_id = i.identity_id
WHERE u.id = 1;

SELECT * FROM usuario;

SELECT s.name, COUNT(ui.identity_id) AS total
FROM usuario_identity ui
JOIN identities i ON ui.identity_id = i.identity_id
JOIN sinners s ON i.sinner_id = s.sinner_id
WHERE ui.usuario_id = 1
GROUP BY s.name;