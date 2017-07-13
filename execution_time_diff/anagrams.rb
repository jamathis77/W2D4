#O(n!)
def first_anagram?(first, second)
  start_time = Time.now
  strings = first.split("").permutation.to_a
  strings = strings.map do |el|
    el.join("")
  end
  boolean = strings.include?(second)
  p "This operation completed in #{Time.now - start_time}"
  boolean
end

#O(n^2)
def second_anagram?(first, second)
  start_time = Time.now

  first_array = first.split("")
  second_array = second.split("")


  i = 0
  while i < first_array.length
    j = 0
    while j < second_array.length
      if first_array[i] == second_array[j]
        first_array.delete_at(i)
        second_array.delete_at(j)
        i -= 1
        break
      end
      j+=1
    end
    i+=1
  end
  p "This operation completed in #{Time.now - start_time}"

  first_array.empty? && second_array.empty?
end

#O(log (n)) || #O(n log (n)) || O(n^2)
def third_anagram?(first, second)
  start_time = Time.now

  boolean = first.chars.sort == second.chars.sort
  p "This operation completed in #{Time.now - start_time}"

  boolean
end

#O(n)
def fourth_anagram?(first, second)
  start_time = Time.now

  first_hash = Hash.new(0)
  second_hash = Hash.new(0)

  first.chars.each do |el|
    first_hash[el] += 1
  end

  second.chars.each do |el|
    second_hash[el] += 1
  end

  boolean = first_hash == second_hash

  p "This operation completed in #{Time.now - start_time}"
  boolean

end

#O(n)
def fifth_anagram?(first, second)

  hash = Hash.new(0)

  first.chars.each do |el|
    hash[el] += 1
  end

  second.chars.each do |el|
    hash[el] -= 1
  end

  hash.all? { |k,v| v == 0 }

end

# p second_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("gizmo", "sally")    #=> false
p fifth_anagram?("ressistsance", "anscestsries")
