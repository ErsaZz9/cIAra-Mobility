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
