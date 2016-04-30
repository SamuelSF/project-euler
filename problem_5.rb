# Code is to find the smallest number that is divided evenly, i.e. without remainder, by every number between 1 and 20.

def gcd(a,b)
    r = a % b
    while r > 0
        a = b
        b = r
        r = a % b
    end
    b
end

def smallest_evenly_divided(nums)
    nums.reduce(1) {|a, b| a * b / gcd(a,b)}
end

nums = [5, 7, 9, 11, 13, 16, 17, 19]

# starts = Time.now
# puts smallest_evenly_divided(nums)
# puts Time.now - starts