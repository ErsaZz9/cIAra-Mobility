
SELECT COUNT(*) AS total_vehicules
FROM vehicule;

SELECT ville,
       COUNT(*) AS nombre_vehicules
FROM vehicule
GROUP BY ville
ORDER BY nombre_vehicules DESC;

SELECT AVG(autonomie_km) AS autonomie_moyenne
FROM vehicule;

SELECT c.id_client,
       c.nom,
       c.prenom,
       COUNT(l.id_location) AS nombre_locations
FROM client c
JOIN location l ON c.id_client = l.id_client
GROUP BY c.id_client, c.nom, c.prenom
ORDER BY nombre_locations DESC;