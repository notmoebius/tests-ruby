def ftoc(temp)
    return ((temp - 32.0)/1.8).round
end

def ctof(temp)
    return (32 + 1.8 * temp.to_f)
end