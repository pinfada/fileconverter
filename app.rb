require 'bundler'
Bundler.require

# $: contient Charger le chemin pour les scripts et les modules binaires par load or require.
# Array#unshift ajoutera le nouveau chemin à $
# __FILE__ est le nom de fichier avec l'extension du fichier contenant le code en cours d'exécution.

$:.unshift File.expand_path("./../lib/views", __FILE__)
$:.unshift File.expand_path("./../lib/app", __FILE__)

require 'index'

# Classe mere qui va chercher le View
# qui commande toutes les opérations
# sur le terminal
View.new.perform