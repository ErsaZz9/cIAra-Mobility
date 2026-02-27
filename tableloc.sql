CREATE TABLE location (
    id_location SERIAL PRIMARY KEY,
    date_debut DATE,
    date_fin DATE,
    id_client INT,
    id_vehicule INT,
    id_station_depart INT,
    id_station_arrivee INT
);