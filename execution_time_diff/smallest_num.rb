
#O(n^2)
def my_min_squared(arg)
  smallest = arg.first
  arg.each_with_index do |el1, idx1|
    is_smallest = true
    arg.each_with_index do |el2, idx2|
      next if idx1 == idx2
      if el2 < el1
        is_smallest = false
      end
    end
    smallest = el1 if is_smallest
  end
  smallest
end

#O(n)
def my_min(arg)
  smallest = arg.first
  arg.each do |el|
    if el < smallest
      smallest = el
    end
  end
  smallest
end


list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5
