SELECT *
FROM vehicule
WHERE etat = 'Disponible'
ORDER BY autonomie_km DESC
LIMIT 3;

SELECT ville, COUNT(*)
FROM vehicule
WHERE etat = 'Disponible'
GROUP BY ville
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT id_client
FROM location
GROUP BY id_client
HAVING COUNT(*) >= 2;

SELECT v.*
FROM vehicule v
LEFT JOIN location l
ON v.id_vehicule = l.id_vehicule
WHERE l.id_vehicule IS NULL;