SELECT l.id_location, c.nom, c.prenom
FROM location l
JOIN client c ON l.id_client = c.id_client;

SELECT l.id_location,
       v.marque,
       v.modele,
       l.date_debut,
       l.date_fin
FROM location l
JOIN vehicule v ON l.id_vehicule = v.id;

SELECT l.id_location,
       s1.nom AS station_depart,
       s2.nom AS station_arrivee
FROM location l
JOIN station s1 ON l.id_station_depart = s1.id_station
JOIN station s2 ON l.id_station_arrivee = s2.id_station;