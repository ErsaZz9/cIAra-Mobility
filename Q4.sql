git -- ============================================================================
-- Q4.sql - Requêtes d'agrégation (COUNT, AVG, GROUP BY)
-- ============================================================================

-- Requête 1 : Nombre total de véhicules dans la base
-- SELECT COUNT(*) : Fonction d'agrégation qui compte le nombre total de lignes
-- AS total_vehicules : Renomme la colonne résultante pour plus de clarté
-- FROM vehicule : Table des véhicules
SELECT COUNT(*) AS total_vehicules
FROM vehicule;

-- Requête 2 : Nombre de véhicules par ville
-- SELECT ville : Colonne de regroupement
-- COUNT(*) AS nombre_vehicules : Compte le nombre de véhicules dans chaque groupe (ville)
-- FROM vehicule : Table des véhicules
-- GROUP BY ville : Regroupe les résultats par ville pour obtenir un comptage par ville
-- ORDER BY nombre_vehicules DESC : Trie les résultats par nombre décroissant (villes avec le plus de véhicules en premier)
SELECT ville,
       COUNT(*) AS nombre_vehicules
FROM vehicule
GROUP BY ville
ORDER BY nombre_vehicules DESC;

-- Requête 3 : Autonomie moyenne de tous les véhicules
-- SELECT AVG(autonomie_km) : Fonction d'agrégation qui calcule la moyenne arithmétique
-- AS autonomie_moyenne : Renomme la colonne résultante
-- FROM vehicule : Table des véhicules
SELECT AVG(autonomie_km) AS autonomie_moyenne
FROM vehicule;

-- Requête 4 : Nombre de locations par client
-- SELECT c.id_client, c.nom, c.prenom : Informations d'identification du client
-- COUNT(l.id_location) AS nombre_locations : Compte le nombre de locations pour chaque client
-- FROM client c : Table principale des clients
-- JOIN location l : Jointure avec la table des locations
-- ON c.id_client = l.id_client : Condition de jointure sur l'ID client
-- GROUP BY c.id_client, c.nom, c.prenom : Regroupe par client (toutes les colonnes non agrégées doivent être dans GROUP BY)
-- ORDER BY nombre_locations DESC : Trie par nombre de locations décroissant (clients les plus actifs en premier)
SELECT c.id_client,
       c.nom,
       c.prenom,
       COUNT(l.id_location) AS nombre_locations
FROM client c
JOIN location l ON c.id_client = l.id_client
GROUP BY c.id_client, c.nom, c.prenom
ORDER BY nombre_locations DESC;