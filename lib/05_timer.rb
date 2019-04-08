def time_string(a)
    temps = []
    t = a.to_i
    if t > 3600
        h = t/3600
        m = (t-h*3600) /60
        s = (t-h*3600-m*60) %60
    end
    if t > 60 && t < 3600
        h = 0
        m = t /60
        s = t %60
    end
    if t < 60
        h = 0
        m = 0
        s = t
    end
    return "#{"%02d" %h}:#{"%02d" %m}:#{"%02d" %s}"
end