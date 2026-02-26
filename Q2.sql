-- ============================================================================
-- Q2.sql - Requêtes avec tri des résultats (ORDER BY)
-- ============================================================================

-- Requête 1 : Tous les véhicules triés par autonomie décroissante
-- SELECT * : Sélectionne toutes les colonnes de la table
-- FROM vehicule : Table source des véhicules
-- ORDER BY autonomie_km DESC : Trie les résultats par autonomie en ordre décroissant (du plus grand au plus petit)
SELECT *
FROM vehicule
ORDER BY autonomie_km DESC;

-- Requête 2 : Véhicules disponibles triés par ville puis par marque
-- SELECT * : Sélectionne toutes les colonnes
-- FROM vehicule : Table des véhicules
-- WHERE etat = 'disponible' : Filtre pour ne garder que les véhicules disponibles
-- ORDER BY ville ASC, marque ASC : Tri multi-critères : d'abord par ville (A-Z), puis par marque (A-Z)
SELECT *
FROM vehicule
WHERE etat = 'disponible'
ORDER BY ville ASC, marque ASC;

-- Requête 3 : Liste des clients triée alphabétiquement
-- SELECT * : Sélectionne toutes les colonnes
-- FROM client : Table des clients
-- ORDER BY nom ASC, prenom ASC : Trie par nom de famille puis par prénom, tous deux en ordre alphabétique croissant
SELECT *
FROM client
ORDER BY nom ASC, prenom ASC;