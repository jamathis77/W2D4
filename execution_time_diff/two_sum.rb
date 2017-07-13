
#O(n^2)
def bad_two_sum?(ary, target)
  # bubble sort
  (0...ary.length).each do |i|
    (0...ary.length).each do |j|
      next if i == j
      return true if ary[i] + ary[j] == target
    end
  end
  false
end

#O(n log(n))
def okay_two_sum?(ary, target)
  sorted = ary.sort

  
  #  sort and binary search

end

#O(n)
def two_sum?(ary, target)
  hash = {}
  ary.each do |el|
    hash[el] = true
  end

  hash.each do |k,v|
    missing = (target - k)
    return true if hash[missing] == true
  end
  false

end



list = [2,3,5,3,7]
p two_sum?(list, 9)

p two_sum?(list, 11)
