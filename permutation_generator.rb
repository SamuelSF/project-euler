def generate_permutation(target)
  permutations = []
  permutation_helper(target, [], permutations)
  permutations
end

def permutation_helper(target, current, permutations)
  leaf = true
  target.each do |x|
    unless current.include? x
      leaf = false
      cloned = make_copy(current)
      cloned << x
      permutation_helper(target, cloned, permutations)
    end
  end
  if leaf
    permutations << current
  end
end

def make_copy(ary)
  new_ary = []
  ary.each do |x|
    new_ary << x
  end
  new_ary
end

a = generate_permutation([1, 2, 3, 4, 5, 6])

a.each do |x|
  puts x.to_s
end

puts a.length.to_s + " permutations"
