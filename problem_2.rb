count = 0

last_fib = 1

current_fib = 2

while current_fib < 4000000
    if current_fib % 2 == 0
        count = count + current_fib
    end
    place_holder = current_fib
    current_fib = current_fib + last_fib
    last_fib = place_holder
end

puts count