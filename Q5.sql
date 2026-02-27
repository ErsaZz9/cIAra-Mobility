FROM vehicule
WHERE etat = 'disponible'
ORDER BY autonomie_km DESC
LIMIT 3;

SELECT ville,
       COUNT(*) AS nb_disponibles
FROM vehicule
WHERE etat = 'disponible'
GROUP BY ville
ORDER BY nb_disponibles DESC
LIMIT 1;

SELECT c.id_client,
       c.nom,
       c.prenom,
       COUNT(l.id_location) AS nb_locations
FROM client c
JOIN location l ON c.id_client = l.id_client
GROUP BY c.id_client, c.nom, c.prenom
HAVING COUNT(l.id_location) >= 2;

SELECT v.id_vehicule,
       v.marque,
       v.modele
FROM vehicule v
LEFT JOIN location l ON v.id_vehicule = l.id_vehicule
WHERE l.id_location IS NULL;