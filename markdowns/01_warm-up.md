# Warming up

Before writing more complex algorithms, let's get the basics covered. These are the fundamentals that are going to be required for further exercices. For INSA students (to whom this tutorial is dedicated in the first place), the moodle exercices are a good starting point to avoid syntax and typing errors. 

## I/O (Intput/Output): reading and writing stuff

### Sujet

Cette année, Cod’INSA revient pour sa 10ème édition ! Nadéo, un des studios de développement d’Ubisoft nous a aimablement demandé de développer un système de classement futuriste pour le jeu Trackmania 48 (prochainement en magasin). Pour ce faire, nous avons à disposition une liste de joueurs avec des informations les concernant (pseudo, initiales du pays [3 lettres] et meilleur temps réalisé). L’objectif sera de développer un programme donnant le podium des joueurs de la liste en question.

PS : Attention à bien gérer les chaînes de caractères (espaces, retours à la ligne, etc…)

### Entrées

- Un entier symbolisant le nombre de joueurs
- Un tableau des données (transmis ligne par ligne) des différents joueurs (avec en premier le pseudo, en deuxième les initiales du pays et enfin le meilleur temps réalisé (au format minutes:secondes:millisecondes))

Précision : chaque ligne de données possède un espace entre chaque paramètre (pseudo, initiales du pays et meilleur temps réalisé)

### Sorties

- 3 lignes donnant le 1er, le 2ème et le 3ème du classement en donnant le pseudo, le pays et le meilleur temps réalisé, ex : flexus404 FRA 08:41:64 (oui le président de Cod’INSA est nul à Trackmania 48 mais on ne lui en veut pas…)

### Exemple simple

#### Entrée

    5
    Graretlan ESP 00:54:23
    Gl@dos-Spaaaaccce ALB 00:52:46
    XX-Chaos-du-92 FRA 00:47:12
    Wigoldan CHI 00:57:93
    Berrannor USA 01:31:94

#### Sortie attendue

    XX-Chaos-du-92 FRA 00:47:12
    Gl@dos-Spaaaaccce ALB 00:52:46
    Graretlan ESP 00:54:23

@[Classement trackmania]({"stubs": ["test-io.adb"], "command": "sh start.sh", "project":"01_warm-up"})
