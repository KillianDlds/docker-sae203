## DESLANDES KILLIAN - LORENZO DEMACEDO - DAMIEN MOREAU
## Groupe 5

------------------------------------------------------

# 1- Instructions pour lancer l'application

- Vérifiez si vous avez docker d'installé :
```shell
docker --version
```

- Cloner le référentiel qui contient l'application
```shell
git@github.com:KillianDlds/docker-sae203.git
```

- Aller au référentiel :
```shell
cd docker-sae203
```

- Construisez une image avec ```docker build``` : 
```shell
docker build -t <choisir-un-nom-pour-l'image> .
```

- Lancer le serveur web avec ```docker run``` :
```shell
docker run -d -p 8080:80 <nom-de-l'image-choisie>
```

- Pour finir lancez l'application en allant sur un navigateur et mettre ```localhost:8080``` sur la barre d'URL

# 2- Instructions pour fermer l'application

- Arretez le conteneur avec ```docker stop```
```shell
docker stop b8f8f406b03c
```

- Supprimez le conteneur 
```shell
docker rm b8f8f406b03c
```

**Note** : remplacez le code de hashage ```b8f8f406b03c``` par celui que vous avez en fasiant ```docker ps```


# 3- Compte rendu du projet 

Notre projet est un site de video à la demande permettant à des utilisateurs de pouvoir regarder des videos. Les utilisateurs peuvent reagrder les videos soit en tant qu'invité (il ne se connecte pas), ils pourront regarder toute les videos accessible sur le site. Ou soit en se connectant au site lui permettant de regarder les videos et aussi d'acceder à ses videos en favoris.

Pour ce faire nous avons utiliser plusieurs langages de programmation: PhP, css, html et sql.
Nous ne connaissions pas php ce qui nous a demandé d'apprendre à utiliser ce langage.

Les fonctionnlités de notre projet:
    - systeme de connexion pour s'identifier sur le site
    - partie public permettant de regarder ddes videos
    - chaque utilisateurs à acces à ses videos en favoris 
