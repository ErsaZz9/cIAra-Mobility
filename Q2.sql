SELECT *
FROM vehicule
ORDER BY autonomie_km DESC;

SELECT *
FROM vehicule
WHERE etat = 'disponible'
ORDER BY ville ASC, marque ASC;

SELECT *
FROM client
ORDER BY nom ASC, prenom ASC;