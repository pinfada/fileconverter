class Done

  def converter_done
    puts "==========================================================================="
    puts "Tout c'est bien passé, le fichier est consultable sous le repertoire db "
    View.new.perform
  end

  def goodbye
    puts "==========================================================================="
    puts "Merci d'avoir utilisé l'outil de conversion !"
    exit
  end


end