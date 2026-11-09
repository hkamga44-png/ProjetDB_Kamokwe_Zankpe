-- TI503N - Scenario : agent du service commercial et exploitation SNCF
-- Objectif : analyser ventes, voyageurs, trajets, places et incidents.
-- 5 selections/projections ; 5 agregations ; 5 jointures ; 5 sous-requetes.
-- Q01 : Selection des voyageurs dont le nom commence par Nom
SELECT * FROM Voyageur_ WHERE nom LIKE 'Nom%' ORDER BY nom;

-- Q02 : Billets dans une fourchette de prix
SELECT num_billet_, prix FROM BILLET WHERE prix BETWEEN 40 AND 90 ORDER BY prix DESC;

-- Q03 : Liste des villes sans doublons
SELECT DISTINCT ville FROM GARE ORDER BY ville;

-- Q04 : Billets de premiere ou deuxieme classe
SELECT * FROM BILLET WHERE classe_ IN ('1ere','2nde') ORDER BY prix;

-- Q05 : Trajets de novembre sur une periode
SELECT * FROM TRAJET WHERE date_trajet BETWEEN '2026-11-09' AND '2026-11-20' ORDER BY date_trajet;

-- Q06 : Nombre de billets par classe
SELECT classe_, COUNT(*) AS nb_billets FROM BILLET GROUP BY classe_ HAVING COUNT(*) >= 1;

-- Q07 : Prix moyen par statut
SELECT statut, ROUND(AVG(prix),2) AS prix_moyen FROM BILLET GROUP BY statut HAVING AVG(prix) > 0;

-- Q08 : Recettes par mode de paiement
SELECT mode_paiement_, SUM(montant) AS total FROM PAIEMENT GROUP BY mode_paiement_ HAVING SUM(montant) > 100;

-- Q09 : Nombre de trajets par train
SELECT num_train, COUNT(*) AS nb_trajets FROM TRAJET GROUP BY num_train HAVING COUNT(*) >= 2;

-- Q10 : Retard moyen par type de train
SELECT code_type, AVG(duree_retard) AS retard_moyen FROM INCIDENT GROUP BY code_type HAVING AVG(duree_retard) >= 0;

-- Q11 : Voyageurs et billets : jointure interne
SELECT v.nom, v.prenom, b.num_billet_, b.prix FROM Voyageur_ v INNER JOIN BILLET b ON b.id_voyageur_=v.id_voyageur_;

-- Q12 : Tous les voyageurs meme sans billet : jointure externe
SELECT v.id_voyageur_, v.nom, b.num_billet_ FROM Voyageur_ v LEFT JOIN BILLET b ON b.id_voyageur_=v.id_voyageur_;

-- Q13 : Billets et trajet et train : jointures multiples
SELECT b.num_billet_, t.num_trajet, tr.num_train FROM BILLET b JOIN TRAJET t ON t.num_trajet=b.num_trajet JOIN TRAIN tr ON tr.num_train=t.num_train;

-- Q14 : Trajets avec gares de depart et arrivee
SELECT t.num_trajet, gd.nom_gare AS depart, ga.nom_gare AS arrivee FROM TRAJET t JOIN GARE gd ON gd.code_gare=t.code_gare JOIN GARE ga ON ga.code_gare=t.code_gare_1;

-- Q15 : Reservations et places attribuees
SELECT r.num_reservation, p.num_train, p.num_voiture_, p.num_place FROM RESERVATION r LEFT JOIN PLACE p ON p.num_reservation=r.num_reservation;

-- Q16 : Billets au-dessus du prix moyen : sous-requete
SELECT num_billet_, prix FROM BILLET WHERE prix > (SELECT AVG(prix) FROM BILLET);

-- Q17 : Voyageurs ayant un billet : EXISTS
SELECT v.id_voyageur_, v.nom FROM Voyageur_ v WHERE EXISTS (SELECT 1 FROM BILLET b WHERE b.id_voyageur_=v.id_voyageur_);

-- Q18 : Voyageurs sans billet : NOT EXISTS
SELECT v.id_voyageur_, v.nom FROM Voyageur_ v WHERE NOT EXISTS (SELECT 1 FROM BILLET b WHERE b.id_voyageur_=v.id_voyageur_);

-- Q19 : Trains sans trajet : NOT IN
SELECT num_train FROM TRAIN WHERE num_train NOT IN (SELECT num_train FROM TRAJET WHERE num_train IS NOT NULL);

-- Q20 : Billets plus chers que tous les billets annules : ALL
SELECT num_billet_, prix FROM BILLET WHERE prix > ALL (SELECT prix FROM BILLET WHERE statut='Annule');
