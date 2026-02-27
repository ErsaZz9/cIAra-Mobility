SELECT *
FROM vehicule
ORDER BY autonomie_km DESC;

SELECT *
FROM vehicule
WHERE etat = 'Disponible'
ORDER BY localisation, marque;

SELECT *
FROM client
ORDER BY nom, prenom;