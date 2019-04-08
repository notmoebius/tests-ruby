def who_is_bigger(a,b,c)
    if a == nil || b == nil || c == nil
        return "nil detected"
    end

    tab = []
    tab << a << b << c
    tab.index(tab.max)
    if tab.index(tab.max) == 0
        return "a is bigger"
    elsif tab.index(tab.max) == 1
        return "b is bigger"
    elsif tab.index(tab.max) == 2
        return "c is bigger"
    end
end

def reverse_upcase_noLTA(a)
    return a.reverse.upcase.tr("LTA","")
end

def array_42(tab)
    tab.each do |v|
        if v == 42
            return true
        end 
    end 
    return false 
    
    # ALTERNATIVE :
    #tab.each { |v| return true if v == 42 }
    #return false
end

def magic_array(tab)
    c = tab.flatten.sort.uniq.map! {|x| x*=2 }
    c.each do |index|
        if index %3 == 0
            c.delete(index)
        end
    end
return c
end