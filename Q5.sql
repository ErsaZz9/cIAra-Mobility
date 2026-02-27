SELECT *
FROM vehicule
WHERE etat = 'Disponible'
ORDER BY autonomie_km DESC
LIMIT 3;

SELECT localisation, COUNT(*) AS nb_vehicules
FROM vehicule
WHERE etat = 'Disponible'
GROUP BY localisation
ORDER BY nb_vehicules DESC
LIMIT 1;

SELECT id_client
FROM location
GROUP BY id_client
HAVING COUNT(*) >= 2;

SELECT v.*
FROM vehicule v
LEFT JOIN location l
ON v.id = l.id_vehicule
WHERE l.id_vehicule IS NULL;