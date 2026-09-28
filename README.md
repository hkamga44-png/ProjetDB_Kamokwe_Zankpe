# ProjetDB_Kamokwe_Zankpe

MINI-PROJET 1 – BASE DE DONNÉES
Étude du Groupe SNCF avec la méthode MERISE
1. Présentation et périmètre du projet
Tu travailles dans le domaine du transport ferroviaire et de la mobilité. Ton entreprise est le Groupe SNCF, acteur français du transport ferroviaire et de la mobilité. Pour ce projet, le système d'information porte principalement sur la gestion des activités liées au transport ferroviaire de voyageurs, tout en intégrant plusieurs éléments du fonctionnement de l'entreprise : voyageurs, billets, réservations, paiements, trains, trajets, gares, personnel, retards, incidents et correspondances.
La SNCF regroupe différentes activités liées au transport ferroviaire, notamment les services de transport de voyageurs, la gestion des trajets et des horaires, la vente et la distribution de billets, l'information des voyageurs, la conduite et le contrôle à bord ainsi que la maintenance du matériel roulant. Le présent projet constitue un modèle pédagogique réaliste et ne prétend pas reproduire le système informatique interne de la SNCF.
Les données étudiées concernent notamment :
• les voyageurs et leurs informations personnelles
• les billets et les réservations
• les paiements et les tarifs
• les trains et leurs caractéristiques
• les trajets, horaires et correspondances
• les gares
• les places et les classes de voyage
• les employés et leurs fonctions
• les retards et les incidents liés aux trajets
2. Sources utilisées
Le projet s'appuie sur des informations publiques relatives aux activités de la SNCF, notamment les informations concernant les voyages, billets, horaires, itinéraires, gares, trains et services aux voyageurs. Les principales références sont les sites officiels de SNCF et de SNCF Voyageurs :
• https://www.sncf.com/
• https://www.sncf-voyageurs.com/
3. Règles de gestion des données
• Un voyageur peut effectuer plusieurs réservations.
• Une réservation est effectuée par un seul voyageur.
• Une réservation concerne un billet.
• Un billet correspond à un trajet précis.
• Un billet possède une date d'achat.
• Un billet possède un prix et une classe de voyage.
• Un billet peut être associé à une place lorsque la réservation de place est disponible.
• Un billet peut avoir différents statuts, notamment réservé, payé ou annulé.
• Un paiement est associé à un billet.
• Un paiement possède une date et un montant.
• Un train possède un identifiant unique.
• Un train appartient à un type de train, par exemple TGV, TER, Intercités ou Transilien.
• Un train possède une capacité correspondant au nombre de places disponibles.
• Un train peut effectuer plusieurs trajets à des dates différentes.
• Un trajet est effectué par un train.
• Un trajet possède une gare de départ et une gare d'arrivée.
• Une gare peut être la gare de départ de plusieurs trajets.
• Une gare peut être la gare d'arrivée de plusieurs trajets.
• Un trajet possède une date de départ et une date d'arrivée.
• Un trajet possède une heure de départ et une heure d'arrivée.
• Un trajet peut comporter une ou plusieurs correspondances.
• Une correspondance relie deux étapes d'un déplacement du voyageur.
• Un trajet peut subir un retard.
• Un retard possède une durée et peut être associé à un motif.
• Un trajet peut être concerné par un incident.
• Un incident possède une description et peut être associé à une date.
• Un employé appartient au personnel de la SNCF.
• Un employé possède une fonction, par exemple conducteur, contrôleur ou agent de gare.
• Un employé peut être affecté à un ou plusieurs trajets selon son activité.
• Une fonction peut être exercée par plusieurs employés.
• Une place appartient à un train et peut être identifiée par un numéro.
• Un train peut proposer plusieurs classes de voyage, notamment première classe et seconde classe.
4. Dictionnaire de données brutes
Le dictionnaire ci-dessous regroupe les données utiles à l'analyse. Il ne constitue pas encore une modélisation en tables et ne définit pas de clés primaires ou étrangères.
Signification de la donnée	Type	Taille
Identifiant du voyageur	Entier	10 chiffres
Nom du voyageur	Texte	50 caractères
Prénom du voyageur	Texte	50 caractères
Date de naissance du voyageur	Date	10 caractères
Adresse du voyageur	Texte	150 caractères
Adresse e-mail du voyageur	Texte	100 caractères
Numéro de téléphone du voyageur	Texte	20 caractères
Identifiant du billet	Entier	10 chiffres
Date d'achat du billet	Date	10 caractères
Prix du billet	Décimal	8 chiffres
Classe de voyage	Texte	20 caractères
Statut du billet	Texte	20 caractères
Numéro de place	Texte	10 caractères
Identifiant de la réservation	Entier	10 chiffres
Date de réservation	Date	10 caractères
Statut de la réservation	Texte	20 caractères
Identifiant du paiement	Entier	10 chiffres
Montant du paiement	Décimal	8 chiffres
Date du paiement	Date	10 caractères
Mode de paiement	Texte	30 caractères
Identifiant du train	Entier	10 chiffres
Type de train	Texte	30 caractères
Modèle du train	Texte	50 caractères
Capacité du train	Entier	5 chiffres
Identifiant du trajet	Entier	10 chiffres
Date de départ	Date	10 caractères
Heure de départ	Heure	5 caractères
Date d'arrivée	Date	10 caractères
Heure d'arrivée	Heure	5 caractères
Durée du trajet	Entier	5 chiffres
Identifiant de la gare	Entier	10 chiffres
Nom de la gare	Texte	100 caractères
Ville de la gare	Texte	50 caractères
Identifiant de l'employé	Entier	10 chiffres
Nom de la fonction de l'employé	Texte	50 caractères
Remarque : les données présentées sont des données brutes destinées à préparer les étapes suivantes de la méthode MERISE. La transformation de ces données en entités, associations, attributs, clés et tables sera réalisée dans les étapes ultérieures du projet.
