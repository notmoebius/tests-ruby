def translate(a)
    #initialisation des voyelles
    vowels = ["a", "e", "i", "o", "u"]
    #cas spéciaux initialisation
    two_letter_consonants = ["ch", "sh", "qu", "th", "br"]
    three_letter_consonants = ["thr", "sch", "squ"]
    #j'éclate la chaine en tableau de mots
    words = a.split(" ")
    result = [] # Array chaine à retourner
    words.each do |word|
        #mots qui commencent par une voyelle
        if vowels.include? word[0]     #Si le mot commence par une voyelle, on ajoute "ay" qu'on ajoute dans le tableau
            result.push word << 'ay'
        #mots qui commencent par une consonne
        else
            #on vérifie le nombre de consonnes
            if three_letter_consonants.include? word[0] + word[1] + word[2]
                #on coupe les 3 premieres lettres
                first_three_letters = word.slice!(0,3)
                #on ajoute "ay" à la fin
                result.push word << first_three_letters << 'ay'
            elsif  two_letter_consonants.include? word[0] + word[1]
                #on coupe les 2 premieres lettres
                first_two_letters = word.slice!(0,2)    
                #on ajoute "ay" à la fin
                result.push word << first_two_letters << 'ay'               
            else
                #on coupe la premiere lettre
                first_letter = word.slice!(0)             
                #on ajoute "ay" à la fin
                result.push word << first_letter << 'ay'
            end
        end 
    end 
    return result.join(" ")
end