def echo(a)
    return a
end

def shout(a)
    return a.upcase
end

def repeat(a, i = 2)
    return Array.new(i, a).join(" ")
end

def start_of_word(a,b)
    return a[0...b]
end

def first_word(a)
    return a.split(" ").first
    #return a.split.first OK aussi
end

def titleize(a)
    words = a.split   # j'éclate ma chaine en item pour array
    words.each do |word| # pour chaque mots, je check si premier et <=3 car cap, sinon down et le reste Cap
        if word == words.first && word.length <=3
            word.capitalize!
        elsif word.length < 3 
            word.downcase!
        elsif word.length > 3
            word.capitalize!
        end
    end
return words.join " " # je transforme mon tableau en chaine par un join
end