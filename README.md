# cIAra-Mobility

# 🚗 Projet SQL – cIAra Mobility

## 👥 Membres du groupe
- Lyna
- Ersanios

---

## 📌 Contexte du projet

L’objectif principal est d’interroger une base de données fournie pour gérer un système de location de véhicules électriques partagés pour l’entreprise fictive :

**cIAra Mobility**, spécialisée dans la location de véhicules électriques dans plusieurs villes françaises.

Nous avons utilisé PostgreSQL pour exécuter les requêtes SQL.

---

## 🗄 Structure de la base de données

La base de données contient quatre tables principales :

- client
- vehicule
- station
- location

---

## 🔗 Analyse du schéma relationnel

Le projet repose sur une base de données relationnelle organisée autour de la table **location**, qui joue le rôle de table centrale.

Schéma relationel :

CLIENT (1) ----- (N) LOCATION (N) ----- (1) VEHICULE
                         |
                         |
                (1) STATION (départ)
                (1) STATION (arrivée)

### 📍 Relations entre les tables

- Un client peut effectuer plusieurs locations.
- Un véhicule peut être loué plusieurs fois.
- Une station peut être utilisée comme point de départ ou d’arrivée.

Les relations sont principalement de type **un-à-plusieurs**.

---

### 👤 Table client

Contient les informations des utilisateurs.

- id_client (clé primaire)
- nom
- prenom
- email

---

### 🚗 Table vehicule

Contient les informations des véhicules disponibles.

- id_vehicule (clé primaire)
- marque
- modele
- type_vehicule
- autonomie_km
- etat
- ville

---

### 📍 Table station

Contient les informations des stations de location.

- id_station (clé primaire)
- nom
- ville

---

### 📌 Table location (table centrale)

Cette table enregistre chaque location effectuée.

Elle contient :

- id_location (clé primaire)
- date_debut
- date_fin
- id_client (clé étrangère)
- id_vehicule (clé étrangère)
- id_station_depart (clé étrangère)
- id_station_arrivee (clé étrangère)

---

## ⚙️ Méthodologie de travail

Nous avons travaillé en binôme en adoptant une organisation à deux :

- Travail commun pour comprendre la base de données.
- Répartition des quêtes SQL entre les membres.
- Relecture et validation des requêtes ensemble.

---

## 🧠 Stratégie de développement SQL

Pour construire les requêtes complexes, nous avons suivi cette approche :

1. Analyse du besoin métier.
2. Identification des tables nécessaires.
3. Écriture d’une requête simple.
4. Ajout des jointures ou filtres.
5. Vérification des résultats.

---

## 🔍 Justification des choix techniques

### JOIN

Nous avons utilisé les jointures pour relier les tables grâce aux clés étrangères.

Cela permet d’enrichir les données en combinant plusieurs tables.

---

### LEFT JOIN

Le LEFT JOIN a été utilisé pour identifier :

- Les véhicules jamais loués.

Cette commande conserve toutes les lignes de la table principale même sans correspondance.

---

### GROUP BY et HAVING

- GROUP BY permet de regrouper les données pour effectuer des calculs statistiques.
- HAVING permet de filtrer après un regroupement.

---

## 📊 Traduction des besoins métier en SQL

Nous avons transformé les besoins métier en conditions SQL :

- Véhicules disponibles → `WHERE etat = 'disponible'`
- Autonomie supérieure à 400 km → `WHERE autonomie_km > 400`
- Clients ayant au moins deux locations → `HAVING COUNT(*) >= 2`

---

## 🎯 Difficultés rencontrées

### Compréhension des jointures
Au début, certaines erreurs étaient liées aux clés étrangères.

Solution :
- Analyse du schéma relationnel.
- Construction progressive des requêtes.

---

### Utilisation de GROUP BY

Il était nécessaire d’inclure toutes les colonnes non agrégées dans le GROUP BY.

---

### Différence entre WHERE et HAVING

- WHERE filtre avant regroupement.
- HAVING filtre après regroupement.

---

## 🚀 Améliorations possibles

- Ajouter des statistiques avancées sur l’utilisation des véhicules.
- Développer une interface graphique.
- Optimiser certaines requêtes SQL.

---

## ⭐ MERCI !
J'espère qu'en lisant ce README.md vous comprendrez mieux notre approche et comment ce projet s'est fait en binome avec Lyna, le README est détaillé de manière à ce que vous en tant qu'utilisateur vous pouvez comprendre, analyser et modifier selon vos attente et de réussir à regler les bug éventuelle sur ce projet cIara-Mobility
Merci d'avoir lu.
---
