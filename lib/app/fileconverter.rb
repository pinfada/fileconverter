require 'rubygems'
require 'csv'
require 'json'
require 'open-uri'

class FileConverter

	def ctrlfic(e1, e2)
		method(__method__).parameters.map do |_, data|
			name = binding.local_variable_get(data)
			extension = File.extname(name)
			case extension
			when '.csv'
			when '.json'
		  		@ficval = true
			else
		  		puts "Fichier #{name} avec une extension non gérée"
		  		break
			end
			#puts "extension #{extension}"
		end
		  	
		if @ficval == true
			traitement_general(e1, e2)
		end

	end

	def traitement_general(e11, e21)
		sum = 0
		data = []
		dir = "./db"
		print "Renseignez le nombre d'enregistrements à retourner : "
		nb_enreg = gets.chomp.to_i	
		CSV.foreach("#{dir}/#{e11}", :headers => true, :header_converters => :symbol, :converters => :all) do |line|
			sum += 1
			#puts "Line: #{line}"
			transformed_data = 
			line.map do |row| 
				row.each_slice(2).to_h
			end
			#puts "transformed_data: #{transformed_data}"
			data.push(transformed_data)
			break if sum == nb_enreg
		end

		File.open("#{dir}/#{e21}", 'w') do |file|
		  file.puts JSON.pretty_generate(data)
		end
	end

	def perform
		puts "--------------------------------"
		puts " | RUBY CONVERTER CSV TO JSON | "
		puts "--------------------------------"
		puts ""
		print "Veuillez Renseigner le nom du fichier csv à convertir : "
		fichier_entree = gets.chomp
		print "Veuillez Renseigner le nom du fichier sortie : "
		fichier_sortie = gets.chomp
		# Controle extension fichiers renseignés
		ctrlfic(fichier_entree, fichier_sortie);
	end

end