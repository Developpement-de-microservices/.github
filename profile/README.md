# 🛠️ Architecture des Microservices - SAE401

- 📱 Gestion des applications : Ce service est chargé de la création, de la modification, de la suppression et du listage des applications, ainsi que de la gestion de leurs versions. (Flo-lec)

- 🌐 Gestion des environnements : Il permet de gérer les différents contextes de déploiement (comme le développement, le staging ou la production) et d'y associer les déploiements. (CormeraisQuentin)

- 🚀 Gestion des déploiements : Ce microservice pilote les opérations de déploiement, permet de les déclencher, d'en consulter l'état (PENDING ⏳, RUNNING ⚙️, FAILED ❌, DEPLOYED ✅) et de suivre l'historique. (trnaiz)

- 🔔 Gestion des événements : Il sert à enregistrer et consulter les événements liés aux déploiements, tels que le début, la fin, les erreurs ou les rollbacks. (StarBoss-Officiel)

- 🔑 Gestion des utilisateurs : Ce service gère l'authentification (par exemple via JWT), la création des utilisateurs et le contrôle des accès basés sur des rôles.
