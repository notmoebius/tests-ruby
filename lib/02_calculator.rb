def add(a,b)
    if (a > 0) && (b > 0)
        return a + b
    else 
        return 0
    end
    #return a + b if (a => 0) && (b => 0)
    #return "impossible"
end

def subtract(a,b)
    return a - b 
end

def sum(tab)
    return tab.sum
    # tab.inject(0){|sum,x| sum + x }
end

def multiply(a,b)
    return a * b
end

def power(a,b)
    return a ** b
end

def factorial(a)
    return 0 if a == 0
   total = 0
   produit = 1
   a.times do
    total += 1
    produit *= total
   end
   return produit
end