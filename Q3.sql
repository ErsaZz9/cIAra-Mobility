-- ============================================================================
-- Q3.sql - Requêtes avec jointures entre tables (JOIN)
-- ============================================================================

-- Requête 1 : Détails des locations avec informations client
-- SELECT l.id_location, l.date_debut, l.date_fin : Récupère l'ID de location et les dates
-- c.nom, c.prenom : Récupère le nom et prénom du client
-- FROM location l : Table principale des locations (alias 'l')
-- JOIN client c : Jointure avec la table client (alias 'c')
-- ON l.id_client = c.id_client : Condition de jointure basée sur l'ID du client
SELECT l.id_location,
       l.date_debut,
       l.date_fin,
       c.nom,
       c.prenom
FROM location l
JOIN client c ON l.id_client = c.id_client;

-- Requête 2 : Détails des locations avec informations véhicule
-- SELECT l.id_location : Récupère l'ID de la location
-- v.marque, v.modele : Récupère la marque et le modèle du véhicule loué
-- l.date_debut, l.date_fin : Récupère les dates de début et fin de location
-- FROM location l : Table principale des locations
-- JOIN vehicule v : Jointure avec la table véhicule (alias 'v')
-- ON l.id_vehicule = v.id_vehicule : Condition de jointure basée sur l'ID du véhicule
SELECT l.id_location,
       v.marque,
       v.modele,
       l.date_debut,
       l.date_fin
FROM location l
JOIN vehicule v ON l.id_vehicule = v.id_vehicule;

-- Requête 3 : Informations sur les stations de départ et d'arrivée
-- SELECT l.id_location : Récupère l'ID de la location
-- s_depart.nom AS station_depart : Récupère le nom de la station de départ et le renomme
-- s_arrivee.nom AS station_arrivee : Récupère le nom de la station d'arrivée et le renomme
-- FROM location l : Table principale des locations
-- JOIN station s_depart : Première jointure avec la table station pour la station de départ
-- ON l.id_station_depart = s_depart.id_station : Condition de jointure sur l'ID de station de départ
-- JOIN station s_arrivee : Seconde jointure avec la table station pour la station d'arrivée
-- ON l.id_station_arrivee = s_arrivee.id_station : Condition de jointure sur l'ID de station d'arrivée
SELECT l.id_location,
       s_depart.nom AS station_depart,
       s_arrivee.nom AS station_arrivee
FROM location l
JOIN station s_depart ON l.id_station_depart = s_depart.id_station
JOIN station s_arrivee ON l.id_station_arrivee = s_arrivee.id_station;