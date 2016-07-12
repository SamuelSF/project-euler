def is_palindrome_number(n)
    m = n.to_s
    m == m.reverse
end

biggest_palindrome = 0

(100..999).each do |i|
    (i..999). each do |j|
        x = i * j
        if is_palindrome_number(x) && x > biggest_palindrome
            biggest_palindrome = x
        end
    end
end

puts biggest_palindrome