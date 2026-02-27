SELECT *
FROM vehicule
ORDER BY autonomie_km DESC;

SELECT *
FROM vehicule
WHERE etat = 'Disponible'
ORDER BY localisation ASC, marque ASC;

SELECT *
FROM client
ORDER BY nom ASC, prenom ASC;