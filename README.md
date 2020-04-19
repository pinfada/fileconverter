# Fileconverter

Outil de conversion des données au format CSV en JSON

## Welcome
Bonjour et bienvenu sur mon ébauche modeste d'un script permettant de transformer un fichier CSV en JSON.

## Structure programme
├── Gemfile
├── Gemfile.lock
├── README.md
├── app.rb
├── db
│   ├── entrée.csv
│   └── sortie.json
└── lib
	├── app
	│   └── fileconverter.rb
	└── views
    		├── done.rb
    		└── index.rb

## Prérequis

- Le fichier CSV qui sera converti devra est présent dans le repertoire DB.
- En entrée fichier au format csv
- En sortie fichier au format json

## Paramètres à renseigner
- Fichier entrée
- Fichier sortie
- Nombre d'enregistrements à retourner en sortie

## Installation

Execute:

    $ bundle install
    $ ruby app.rb



