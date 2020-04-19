require 'fileconverter'
require 'done'

class View

  def initialize
    puts "==========================================================================="
    puts "   Bienvenue sur l'outil de conversion. Cet outil permet convertir les 
    données csv en json"
    puts " "

  end

  def perform
    puts "==========================================================================="
    puts "   Merci de nous indiquer le choix que vous souhaitez faire en
    indiquant le numéro correspondant dans la liste suivante:"
    puts ""
    puts " 1 - Conversion fichier CSV au format JSON"
    puts " 2 - Quitter l'application"
    print " > "
    choice = gets.chomp.to_i

    case choice
    when 1
	    FileConverter.new.perform
	    Done.new.converter_done
    when 2
	    Done.new.goodbye
	else
		puts "Désolé, veuillez faire un choix entre 1 et 2 !"
		choice = gets.chomp.to_i
	end

  end


end

View.new.perform