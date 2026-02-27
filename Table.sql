CREATE TABLE vehicule (
    id SERIAL PRIMARY KEY,
    marque VARCHAR(50),
    modele VARCHAR(50),
    annee INT,
    energie VARCHAR(50),
    autonomie_km INT,
    immatriculation VARCHAR(50),
    etat VARCHAR(50),
    localisation VARCHAR(50)
);

CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO client (nom, prenom, email) VALUES
('Yakoub','Ersa','ersa@mail.com'),
('Yakoub','Lyna','lyna.yakoub@mail.com'),
('Yakut','Ahmet','ahmet.yakut@mail.com'),
('Bernard','Sophie','sophie.bernard@mail.com'),
('Petit','Marc','marc.petit@mail.com');

CREATE TABLE station (
    id_station SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    ville VARCHAR(50)
);

INSERT INTO station (nom, ville) VALUES
('pigalle','Paris'),
('part-dieu','Lyon'),
('julstation','Marseille'),
('ctestation','Lille'),
('bricestation','Nice');

CREATE TABLE location (
    id_location SERIAL PRIMARY KEY,
    date_debut DATE,
    date_fin DATE,
    id_client INT,
    id_vehicule INT,
    id_station_depart INT,
    id_station_arrivee INT
);

INSERT INTO location (date_debut,date_fin,id_client,id_vehicule,id_station_depart,id_station_arrivee) VALUES
('2024-02-01','2024-02-05',1,1,1,2),
('2024-03-10','2024-03-12',2,2,2,3),
('2024-04-01','2024-04-04',3,3,3,4);