SELECT COUNT(*) FROM vehicule;

SELECT ville, COUNT(*) AS nb
FROM vehicule
GROUP BY ville;

SELECT AVG(autonomie_km) FROM vehicule;

SELECT id_client, COUNT(*)
FROM location
GROUP BY id_client;