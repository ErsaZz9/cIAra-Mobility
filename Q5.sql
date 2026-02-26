-- ============================================================================
-- Q5.sql - Requêtes avancées (LIMIT, HAVING, LEFT JOIN)
-- ============================================================================

-- Requête 1 : Top 3 des véhicules disponibles avec la meilleure autonomie
-- SELECT * : Sélectionne toutes les colonnes
-- FROM vehicule : Table des véhicules
-- WHERE etat = 'disponible' : Filtre pour ne garder que les véhicules disponibles
-- ORDER BY autonomie_km DESC : Trie par autonomie décroissante (meilleure en premier)
-- LIMIT 3 : Limite les résultats aux 3 premiers (top 3)
SELECT *
FROM vehicule
WHERE etat = 'disponible'
ORDER BY autonomie_km DESC
LIMIT 3;

-- Requête 2 : Ville avec le plus grand nombre de véhicules disponibles
-- SELECT ville : Nom de la ville
-- COUNT(*) AS nb_disponibles : Compte le nombre de véhicules disponibles par ville
-- FROM vehicule : Table des véhicules
-- WHERE etat = 'disponible' : Filtre uniquement les véhicules disponibles
-- GROUP BY ville : Regroupe par ville pour calculer le nombre par ville
-- ORDER BY nb_disponibles DESC : Trie par nombre décroissant
-- LIMIT 1 : Ne garde que le premier résultat (la ville avec le plus de véhicules disponibles)
SELECT ville,
       COUNT(*) AS nb_disponibles
FROM vehicule
WHERE etat = 'disponible'
GROUP BY ville
ORDER BY nb_disponibles DESC
LIMIT 1;

-- Requête 3 : Clients ayant effectué au moins 2 locations
-- SELECT c.id_client, c.nom, c.prenom : Informations du client
-- COUNT(l.id_location) AS nb_locations : Compte le nombre de locations par client
-- FROM client c : Table des clients
-- JOIN location l : Jointure avec la table des locations
-- ON c.id_client = l.id_client : Condition de jointure sur l'ID client
-- GROUP BY c.id_client, c.nom, c.prenom : Regroupe par client
-- HAVING COUNT(l.id_location) >= 2 : Filtre après agrégation (garde uniquement les clients avec 2 locations ou plus)
SELECT c.id_client,
       c.nom,
       c.prenom,
       COUNT(l.id_location) AS nb_locations
FROM client c
JOIN location l ON c.id_client = l.id_client
GROUP BY c.id_client, c.nom, c.prenom
HAVING COUNT(l.id_location) >= 2;

-- Requête 4 : Véhicules n'ayant jamais été loués
-- SELECT v.id_vehicule, v.marque, v.modele : Informations du véhicule
-- FROM vehicule v : Table des véhicules
-- LEFT JOIN location l : Jointure gauche avec la table location (garde tous les véhicules même sans match)
-- ON v.id_vehicule = l.id_vehicule : Condition de jointure sur l'ID véhicule
-- WHERE l.id_location IS NULL : Filtre pour ne garder que les véhicules sans location associée (jamais loués)
SELECT v.id_vehicule,
       v.marque,
       v.modele
FROM vehicule v
LEFT JOIN location l ON v.id_vehicule = l.id_vehicule
WHERE l.id_location IS NULL;