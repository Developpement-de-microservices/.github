# SAE401 – Plateforme de gestion des déploiements d’applications

**IUT de Saint-Malo**

Projet microservices pour la gestion des déploiements d’applications, réalisé dans le cadre de la SAE401.

---

## Table des matières

1. [Description](#description)
2. [Conception](#conception)
3. [Architecture](#architecture)
4. [Microservices](#microservices)
5. [API Documentation](#api-documentation)

---

## Description

Cette plateforme permet de :

* Gérer les applications et leurs versions
* Gérer les environnements de déploiement (développement, staging, production)
* Déclencher et suivre les déploiements
* Consulter l’historique et les événements associés aux déploiements
* Gérer les utilisateurs et leurs rôles (administrateur, utilisateur)

L’objectif pédagogique est de comprendre :

* La conception d’une architecture microservices
* La définition de contrats d’interface (OpenAPI)
* La communication entre services via API REST
* La gestion collaborative d’un projet logiciel avec Git

---

## Conception

Le projet est basé sur un **document de conception détaillé**, incluant :

1. **Document de conception détaillé**

   * Description des microservices et de leurs responsabilités
   * Définition des contrats d’interface pour chaque service (inputs/outputs)

2. **Schéma de communication entre les microservices**

   * Représente les interactions et les flux de données

```text
          +----------------+
          |   Proxy 8080   |
          +--------+-------+
                   |
   ----------------------------------------
   |       |           |           |       |
Users   Apps      Environments Deployments Events
Service Service    Service      Service     Service
```


3. **Spécifications des protocoles de communication**

   * Communication via **HTTP / REST**
   * Format des données : **JSON** et **MongoDB**
   * Pagination pour les listes (`/users`, `/applications`, `/deployments`, `/events`, `/environments`)

4. **Esquisses pour l’authentification et l’autorisation**

   * Authentification via **JWT** sur `/auth/login`
   * Rôles utilisateurs : `ADMIN`, `USER`
   * Protection des endpoints via vérification du JWT et des permissions

---

## Architecture

* Chaque microservice est indépendant et conteneurisé avec **Docker**
* Un **proxy** (Nginx) expose tous les services sur le port **8080**
* Communication entre microservices via **API REST** et **JSON**
* Authentification et autorisation via **JWT**

---

## Microservices

| Service      | Fonctionnalité principale                       |
| ------------ | ----------------------------------------------- |
| Auth         | Connexion et JWT                                |
| Users        | Gestion des utilisateurs                        |
| Applications | Gestion des applications et versions            |
| Environments | Gestion des environnements (dev, staging, prod) |
| Deployments  | Déploiement, rollback, suivi d’état             |
| Events       | Historique des événements liés aux déploiements |

---

## API Documentation

* Toutes les routes sont documentées via **OpenAPI 3.1** dans le fichier `contrat.yaml`
* Authentification via `/auth/login` → récupération du JWT à utiliser pour les endpoints protégés

---
