-- ============================================================================
-- Q1.sql - Requêtes de sélection de base sur les véhicules
-- ============================================================================

-- Requête 1 : Récupération de tous les véhicules
-- SELECT * : Sélectionne toutes les colonnes de la table
-- FROM vehicule : Spécifie la table source des données
SELECT *
FROM vehicule;

-- Requête 2 : Filtrage des véhicules disponibles
-- SELECT * : Sélectionne toutes les colonnes
-- FROM vehicule : Table des véhicules
-- WHERE etat = 'disponible' : Filtre pour ne garder que les véhicules ayant le statut 'disponible'
SELECT *
FROM vehicule
WHERE etat = 'disponible';

-- Requête 3 : Sélection des véhicules situés à Paris
-- SELECT * : Sélectionne toutes les colonnes
-- FROM vehicule : Table des véhicules
-- WHERE ville = 'Paris' : Filtre pour ne récupérer que les véhicules dans la ville de Paris
SELECT *
FROM vehicule
WHERE ville = 'Paris';

-- Requête 4 : Véhicules avec une autonomie supérieure à 400 km
-- SELECT * : Sélectionne toutes les colonnes
-- FROM vehicule : Table des véhicules
-- WHERE autonomie_km > 400 : Condition pour filtrer les véhicules ayant plus de 400 km d'autonomie
SELECT *
FROM vehicule
WHERE autonomie_km > 400;