# PROJ-4_BDR_SI3_BB

Le but de ce projet est de créer une base de données qui permet de centraliser la gestion des prêts et réservations des abonnés d'une chaîne de bibliothèque interconnectées. 
Après discussion avec le client, voici les spécificités de la chaîne de bibliothèque :
	-Il n'y a que des livres dans les bibliothèques.
	-Les informations d'un livre (titre, auteur, …) sont représentées sous forme d'"ouvrage". Les copies physiques de ces ouvrages sont appelées "exemplaires". Lorsqu'on dit qu'un abonné emprunte un "livre", il emprunte un "exemplaire" d'un ouvrage.
 	-Un abonné possède un abonnement qui permet d'emprunter des livres dans toutes les bibliothèques de la chaîne.
	-Un emprunt dure au maximum 1 mois.
	-Un livre doit toujours être rendu dans la bibliothèque où il a été pris.
	-Il existe 3 catégories d'abonnement, de prix annuel différents et qui permettent d'emprunter un nombre de livres mensuels différent :
		-catégorie 1 : 24€/an, 1 livre/mois
		-catégorie 2 : 48€/an, 3 livres/mois
		-catégorie 3 : 72€/an, 6 livres/mois
	-Chaque abonné doit payer une caution pour son abonnement.
	-Il existe des pénalités pour les abonnés qui rendent leurs livres en retard : 1€ par jour de retard, au bout de 2 semaines, l'abonnement est annulé et la caution gardée.
	-Une bibliothèque peut acheter des livres.
	-Un abonné peut réserver un exemplaire d'un livre, mais il ne peut y avoir qu'une seule réservation d'un exemplaire à la fois.
	-Lorsqu'un abonné fait une réservation d'un livre dans une bibliothèque autre que celle où il est/doit être rendu, alors un membre du personnel vérifie si le transfert est possible ou non (pour quelque raison que ce soit). Si oui, alors il ajoute ce transfert lié à la réservation.
	-Chaque transfert a un coût. Il s'agit d'un coût par livre et par kilomètre au livre.
	-Chaque transfert a un délai. Il varie entre 1 et 28 jours.
	-Chaque bibliothèque peut gérer des événements. 
	-Un événement est soit ouvert au public, soit réservé aux abonnés.

Après négociation avec le client, voici les services rendus par la base : 
	1) Afficher tous les ouvrages qui ont un exemplaire disponible dans une bibliothèque
	2) Afficher tous les ouvrages qui ont un exemplaire disponible, dans toutes les bibliothèques triées par id_bibliotheque
	3) Afficher tous les prêts d'un abonné (terminées, en cours, en retard)
  4) Ajouter un ouvrage
  5) Ajouter un exemplaire à une bibliothèque
	6) Ajouter une bibliothèque
  7) Ajouter une distance
	8) Ajouter une réservation
	9) Ajouter un transfert
	10) Ajouter la date de réception d'un transfert
	11) Afficher les événements de chaque bibliothèque
	12) Afficher les abonnés qui ont participé à des événements similaires (exemple : afficher les abonnés qui ont participé à des événements qui pour thème "jeu")
	13) Afficher les abonnées qui participent à un événement en particulier
	14) Afficher les ouvrages fréquemment transférés entre bibliothèques avec les délais associée par ordre décroissant
	15) Afficher les abonnées qui ne respectent pas les délais de prêt et leur fréquence d'infraction
	16) Afficher les ouvrages populaires (du plus populaire au moins populaire) selon les abonnés d'une région
	17) Afficher les coûts totaux de transfert entre chaque bibliothèque
