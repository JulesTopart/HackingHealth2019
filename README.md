# Patho-Search


Patho-search est un outil d'analyse de documents textuels afin d'en faciliter la recherche.

Ce projet a été prototypé lors du [HackingHealth 2019 à Besançon](https://hacking-health.org/fr/besancon-fr/) afin de proposer une solution à un chercheur médical.

## Etat du projet

Actuellement le projet est en cours de développement afin de simplifier son installation et améliorer ses possibilités.

## Pré-requis

Le projet nécessite les dépendances suivantes:
* Python 3.3+
* nltk
* beautifulsoup
* pip, virtualenv

## Installation

L'installation du projet nécessite le téléchargement des bibliothèques liées. Nous allons cloisonner ces dépendances dans un environnement virtuel.

Linux et MacOS:
```
pyvenv app_venv
source app_venv/bin/activate
pip install -r requirements.txt
```