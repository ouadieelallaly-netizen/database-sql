CREATE DATABASE monalisa;
USE monalisa;

CREATE TABLE Utilisateur (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE,
  mot_de_passe VARCHAR(255) NOT NULL
);

CREATE TABLE Article (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titre VARCHAR(150) NOT NULL,
  contenu TEXT NOT NULL,
  date_pub DATE,
  id_utilisateur INT,
  FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur(id)
);

CREATE TABLE Commentaire (
  id INT AUTO_INCREMENT PRIMARY KEY,
  contenu TEXT NOT NULL,
  auteur VARCHAR(100),
  date_commentaire DATE,
  id_article INT,
  FOREIGN KEY (id_article) REFERENCES Article(id)
);

INSERT INTO Utilisateur (nom, email, mot_de_passe) VALUES ('wadie', 'rwina@test.com', '1234');
INSERT INTO Article (titre, contenu, date_pub) VALUES('monalisa', 'the queen', '2025-6-6');
INSERT INTO Commentaire(contenu, auteur, date_commentaire, id_article) VALUES('li bghiti', 'lara', '2025-4-7');


ALTER TABLE Utilisateur ADD INDEX (email);
ALTER TABLE Utilisateur COMMENT = 'lahomabarik';
