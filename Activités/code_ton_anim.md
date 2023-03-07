# Code Ton Anim

Merci à Raxara pour m'avoir montré ce jeu, c'est vraiment super intelligent pour montrer la programmation de manière concrète à des plus petits (même si des grands s'amusent aussi avec).

## Matériel
+ Beaucoup d'animateurs (1 pour 5 jeunes + le MJ)
+ Des obstacles
+ Des accessoires
+ Une imprimante pour les manuels (+ une plastifieuse pour faire joli et ne pas détruire les manuels)

## Déroulement

Il faut un MJ qui donne des instructions aux équipes, du style :
+ Venir me dire "bonjour"
+ Me ramener une chaise
+ Esquiver des obstacles
+ ...

Il n'y a pas de limites, et rien n'est imposé : il faut adapter le jeu en fonction du niveau des jeunes. N'hésitez pas à les inciter à faire des erreurs pour voir une boucle infinie dans la vraie vie.

Du côté des robots, il faut suivre le RP du manuel à la lettre, le RP est important !

---

Manuel à imprimer pour chaque équipe :

# Manuel d’utilisation du Robot

Bonjour et merci pour l’acquisition de votre Robot Animateur. La société [À ADAPTER] vous souhaite de passer d’excellentes colonies de vacances avec celui-ci.


Ces robots sont livrés prêts à l’emploi, mais il nécessitent une maintenance dans les 48h suivant leur mise en service - pas d’inquiétude à avoir, ce n’est pas bien compliqué. En effet, il faut tout simplement contacter un agent humain de [À ADAPTER] qui vous montrera la marche à suivre pour non seulement assurer une maintenance de qualité, mais aussi comment préserver votre robot sur le long terme.

Pour la maintenance, l’agent vous donnera différentes tâches que les robots devront effectuer, mais vous aurez à écrire le code nécessaire pour les réaliser.


Votre robot est muni d’un capteur optique, de reconnaissance visuelle (OCR) et d’un compilateur, outils qui lui permettent de lire du Pseudo-Code écrit sur papier.


## Liste des commandes possibles

Le robot reconnaît toute déclaration et utilisation de variable, en français ou en anglais, ainsi que les conditions (si / if) et les boucles ( tant que - pour / while - for ).

En plus de ce langage de base, le robot a accès à une librairie de commandes propres à ses capacités :
+ **avancer(x)** : x étant le nombre de pas
+ **reculer(x)** : x étant le nombre de pas
+ **tournerDroite()**
+ **tournerGauche()**
+ **demiTour()**
+ **setDirection(x)** : x étant un objet ou un autre robot vers lequel le robot se tourne
+ **prendreProche(x)** : x étant un objet proche - si x n’est pas spécifié, le robot prendra un objet aléatoire
+ **poser()** : le robot pose ce qu’il a dans les mains
+ **parler(“phrase”)** : le robot prononcera la phrase donnée (attention, il a une liste de mots interdits !)

## Aide pour les novices

Parce que tout le monde n’a pas forcément des compétences en code, le bot est capable de reconnaître une version simplifiée de la syntaxe :
+ pour la condition “si” : vous pouvez écrire **si (nom de la condition) alors commande** - si la condition est vraie, alors le robot effectuera la (ou les) commande(s). Attention, le nom de la condition doit être suffisamment simple pour que le bot comprenne rapidement ce qu’il est censé faire. Exemple : si (arbre en face) alors reculer(1)
+ pour la boucle “tant que”, vous pouvez écrire **tant que (nom de la condition) : commande** - tant que la condition est respectée, le bot répètera la (ou les) commande(s) sans s’arrêter

Attention : les bots disposent d’un protocole de mise en sécurité en cas de boucle sans fin, mais essayez tout de même de ne pas les bloquer.