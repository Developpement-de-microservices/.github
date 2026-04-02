# Changelog

Toutes les modifications notables de ce projet seront documentées dans ce fichier.

## [1.0] - 31/03/2026
### Added
- Ce dépot contient le docker-compose.yml afin de construire le projet
- Un Dockerfile se trouve dans chaque dépot
- Chaque conteneur a un volume pour stocker les données
- Un proxy nginx se trouve sur ce dépot afin de faire la communication entre services
- La configuration du proxy se trouve dans proxy.conf
- Le contrat d'interface est dans contrat.yaml

### Changed
- N/A (première version)

### Fixed
- N/A (première version)

## [2.0] - 02/04/2026
### Added
- Ajout d'un conteneur avec base de donnée MongoDB par microservice.
- Création de réseaux locaux entre les conteneurs et leurs bases de donnée respectives.

### Changed
- Changement du système de stockage des microservices :
  - Passage de JSON local à MongoDB
- Suppression des volumes partagés
- Nouveaux réseaux spécifiques à chaques conteneurs.
- Modification du contrat d'interface pour correspondre à notre migration MongoDB.

### Fixed
- N/A
