def gcd(a,b)
    if b > a
        c = b
        b = a
        a = c
    end
    r = a % b
    # should have a = q * b + r
    while r > 0
        a = b
        b = r
        r = a % b
    end
    b
end

def lcm(a,b)
    a * b / gcd(a,b)
end