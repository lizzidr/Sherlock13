# README – Projet Sherlock 13

Ce document explique comment compiler et lancer les deux programmes : le **serveur** (`server.c`) et le **client** (`sh13.c`), **avec** et **sans** Makefile.

---

## Pré-requis

- Système Linux (Debian/Ubuntu ou équivalent)
- Paquets suivants :
  - `libsdl2-dev` / `libsdl2-image-dev` / `libsdl2-ttf-dev` (pour SDL2)

```bash
sudo apt update
sudo apt install build-essential libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev
```

---

## 1. Compilation manuelle (sans Makefile)

### 1.1. Serveur

Dans le dossier contenant **server.c** :

```bash
gcc server.c -o server
```

Un exécutable nommé `server` est créé.


### 1.2. Client SDL

Dans le dossier contenant **sh13.c** et les ressources :

```bash
gcc sh13.c -o sh13 \
    -lSDL2 -lSDL2_image -lSDL2_ttf -lpthread
```
- Lie les bibliothèques SDL2, image, ttf et pthread

Un exécutable nommé `sh13` est créé.

---

## 2. Compilation avec Makefile

En utilisant le **Makefile** fourni dans ce répertoire :

```bash
# compile tout (serveur + client)
make

# ou compile uniquement le serveur
make server

# ou compile uniquement le client
make sh13

# nettoyer les exécutables
make clean
```

---

## 3. Lancement

### 3.1. Démarrer le serveur

Choisissez un port d’écoute du serveur. 

```bash
./server 5000
```

Le serveur affiche les logs de connexion et de distribution.


### 3.2. Démarrer les clients

Pour chaque joueur, ouvrez un terminal différent. 

```bash
./sh13 <IP_SERVEUR> <PORT_SERVEUR> <IP_CLIENT> <PORT_CLIENT> <NOM>
```

- **IP_SERVEUR** : adresse du serveur (ex : `127.0.0.1`)
- **PORT_SERVEUR** : port choisi (ex : `5000`)
- **IP_CLIENT** : adresse locale du client (ex : `127.0.0.1`)
- **PORT_CLIENT** : port TCP utilisé pour l’écoute du client (ex : `6001`, `6002`, etc.)
- **NOM** : pseudonyme unique du joueur (ex : `Alice`)


Après lancement, dans chaque fenêtre SDL :
1. Cliquez sur **Connect**  
2. Attendez que les 4 joueurs soient connectés  
3. Jouez en utilisant le bouton **Go** à votre tour

---



