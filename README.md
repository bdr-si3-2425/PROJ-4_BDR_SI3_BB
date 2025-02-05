# PROJ-4_BDR_SI3_BB

## Objectif du Projet
Le but de ce projet est de créer une base de données permettant de centraliser la gestion des prêts et réservations des abonnés d'une chaîne de bibliothèques interconnectées.

## Spécificités de la Chaîne de Bibliothèques
- Il n'y a que des livres dans les bibliothèques.
- Les informations d'un livre (titre, auteur, etc.) sont représentées sous forme d'"ouvrage". Les copies physiques de ces ouvrages sont appelées "exemplaires". Lorsqu'un abonné emprunte un "livre", il emprunte un "exemplaire" d'un ouvrage.
- Un abonné possède un abonnement permettant d'emprunter des livres dans toutes les bibliothèques de la chaîne.
- Un emprunt dure au maximum 1 mois.
- Un livre doit toujours être rendu dans la bibliothèque où il a été pris.
- Il existe 3 catégories d'abonnement, avec des prix annuels différents et un nombre de livres empruntables par mois :
  - Catégorie 1 : 24€/an, 1 livre/mois
  - Catégorie 2 : 48€/an, 3 livres/mois
  - Catégorie 3 : 72€/an, 6 livres/mois
- Chaque abonné doit payer une caution pour son abonnement.
- Des pénalités sont appliquées aux abonnés en retard : 1€ par jour de retard. Après 2 semaines, l'abonnement est annulé et la caution conservée.
- Une bibliothèque peut acheter des livres.
- Un abonné peut réserver un exemplaire d'un livre, mais une seule réservation par exemplaire est autorisée.
- Lorsqu'un abonné réserve un livre dans une bibliothèque différente de celle où il est stocké, un membre du personnel vérifie si un transfert est possible.
- Chaque transfert a un coût basé sur le nombre de kilomètres et le nombre de livres transportés.
- Chaque transfert a un délai variant entre 1 et 28 jours.
- Chaque bibliothèque peut gérer des événements.
- Un événement peut être soit ouvert au public, soit réservé aux abonnés.

## Services Rendus par la Base de Données
1. Afficher tous les ouvrages ayant un exemplaire disponible dans une bibliothèque. [Enzo]
2. Afficher tous les ouvrages ayant un exemplaire disponible dans toutes les bibliothèques, triés par id_bibliotheque. [Enzo]
3. Afficher tous les prêts d'un abonné (terminés, en cours, en retard). [Enzo]
4. Ajouter un ouvrage. [Luc, Enzo]
5. Ajouter un exemplaire à une bibliothèque. [Luc, Enzo]
6. Ajouter une bibliothèque. [Luc, Enzo]
7. Ajouter une distance entre bibliothèques. [Luc, Enzo]
8. Ajouter une réservation. [Enzo]
9. Ajouter un transfert. [Enzo]
10. Ajouter la date de réception d'un transfert. [Enzo]
11. Afficher les événements de chaque bibliothèque. [Enzo]
12. Afficher les abonnés ayant participé à des événements similaires (ex. : abonnés ayant participé à des événements sur le thème "jeu"). [Adrien]
13. Afficher les abonnés participant à un événement en particulier. [Adrien]
14. Afficher les ouvrages fréquemment transférés entre bibliothèques avec leurs délais associés, triés par ordre décroissant. [Adrien]
15. Afficher les abonnés ne respectant pas les délais de prêt et leur fréquence d'infraction. [Adrien]
16. Afficher les ouvrages populaires (du plus populaire au moins populaire) selon les abonnés d'une région. [Luc]
17. Afficher les coûts totaux de transfert entre chaque bibliothèque. [Adrien]
18. Afficher le nombre de prêts d'un abonne, son nom et prénom, à partir de son id_abonne. [Enzo]
19. Afficher tous les prêts de tous les abonnés triés selon l'id_abonne. [Enzo]
