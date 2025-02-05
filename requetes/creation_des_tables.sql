-- Table des bibliothèques
CREATE TABLE Bibliotheque (
    id_bibliotheque SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    region VARCHAR(255) NOT NULL
);

-- Table des ouvrages
CREATE TABLE Ouvrage (
    id_ouvrage SERIAL PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    auteur VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    date_publication DATE
);

-- Table des exemplaires
CREATE TABLE Exemplaire (
    id_exemplaire SERIAL PRIMARY KEY,
    id_ouvrage INT REFERENCES Ouvrage(id_ouvrage) ON DELETE CASCADE,
    id_bibliotheque INT REFERENCES Bibliotheque(id_bibliotheque) ON DELETE CASCADE,
	emplacement TEXT NOT NULL,
    statut VARCHAR(255) NOT NULL -- 'disponible', 'emprunté', 'réservé'.
);

-- Table des abonnements
CREATE TABLE Abonnement (
	id_abonnement INT PRIMARY KEY,
	prix_annuel INT NOT NULL,
	description TEXT NOT NULL
);

-- Table des abonnés
CREATE TABLE Abonne (
    id_abonne SERIAL PRIMARY KEY,
	id_abonnement INT REFERENCES Abonnement(id_abonnement),
	nom VARCHAR(255) NOT NULL,
	prenom VARCHAR(255),
    email TEXT NOT NULL,
    region VARCHAR(255) NOT NULL,
	date_abonnement DATE
);

-- Table des prêts
CREATE TABLE Pret (
    id_pret SERIAL PRIMARY KEY,
    id_abonne INT REFERENCES Abonne(id_abonne) ON DELETE CASCADE,
    id_exemplaire INT REFERENCES Exemplaire(id_exemplaire) ON DELETE CASCADE,
    date_emprunt DATE NOT NULL,
	date_retour_prevue DATE NOT NULL,
    date_retour DATE
);

-- Tables des reservations
CREATE TABLE Reservation (
    id_reservation SERIAL PRIMARY KEY,
    id_abonne INT REFERENCES Abonne(id_abonne) ON DELETE CASCADE,  
    id_exemplaire INT REFERENCES Exemplaire(id_exemplaire) ON DELETE CASCADE, 
	id_bibliotheque_destination INT REFERENCES Bibliotheque(id_bibliotheque) ON DELETE CASCADE,
	date_reservation DATE NOT NULL,           
    statut VARCHAR(20) DEFAULT 'En attente'   -- Statut : "En attente", "Annulée", "Terminée"
);

-- Table des distances 
CREATE TABLE Distance (
	id_distance SERIAL PRIMARY KEY,
	id_bibliotheque_source INT REFERENCES Bibliotheque(id_bibliotheque) ON DELETE CASCADE,
	id_bibliotheque_destination INT REFERENCES Bibliotheque(id_bibliotheque) ON DELETE CASCADE,
	distance INT NOT NULL
);

-- Table des transferts
CREATE TABLE Transfert (
    id_transfert SERIAL PRIMARY KEY,
	id_reservation INT REFERENCES Reservation(id_reservation) ON DELETE CASCADE,
    id_distance INT REFERENCES Distance(id_distance) ON DELETE CASCADE,
	date_demande DATE NOT NULL,
	date_reception DATE,
	cout_transfert INT NOT NULL
);

-- Table des événements
CREATE TABLE Evenement (
    id_evenement SERIAL PRIMARY KEY,
    id_bibliotheque INT REFERENCES Bibliotheque(id_bibliotheque) ON DELETE CASCADE,
    nom_evenement VARCHAR(255) NOT NULL,
    date_evenement DATE NOT NULL,
    description TEXT
);

-- Table des participations
CREATE TABLE ParticipationsEvenement (
    id_abonne INT REFERENCES Abonne(id_abonne) ON DELETE CASCADE,
    id_evenement INT REFERENCES Evenement(id_evenement) ON DELETE CASCADE
);

