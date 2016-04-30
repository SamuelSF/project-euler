result = (1..999).reduce(0) do |sum, num|
    if num % 3 ==0 or num % 5 == 0
        sum + num
    else
        sum
    end
end

puts result