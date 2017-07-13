#O(n^4 or 2n^2)

def largest_subsum(nums)
  subs = []

  (0...nums.length).each do |i|
    (i...nums.length).each do |j|
      subs << nums[i..j]
    end
  end

  largest = nil

  subs.each do |sub|
    sum = sub.reduce(:+)
    largest = sum if largest.nil? || sum > largest
  end

  largest
end

def largest_subsum_on(nums)
  start_time = Time.now

  current = 0
  max = 0
  if nums.max < 0
    return nums.max
  end
  nums.each do |num|
    with_next = num + current
    current += num if with_next >= 0
    max = current if current > max
  end
  p "this operation completed in #{Time.now - start_time}"
  max
end


list = [5, 3, -7]
p largest_subsum_on(list) # => 8
def fun
  arr = []
  (0..100).each do |i|
    arr << i
  end

  arr.each do |el|
    puts el
  end

end
