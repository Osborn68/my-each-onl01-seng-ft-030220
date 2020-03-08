def my_find(collection)
  i=0
  while i < collection.length
    if yield(collection[i])
      return collection[i]
    end
    i += 1
  end
end

nums = (1..100).to_a
my_find(nums){|i| i % 71 == 0}