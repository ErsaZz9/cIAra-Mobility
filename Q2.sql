SELECT *
FROM vehicule
ORDER BY autonomie_km DESC;

SELECT *
FROM vehicule
WHERE etat = 'Disponible'
ORDER BY ville, marque;

SELECT *
FROM client
ORDER BY nom, prenom;