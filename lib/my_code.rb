# Your Code Here


def map(array)
counter = 0 
new_array = []
  while counter < array.count do 
    new_array << yield(array[counter])
  counter += 1
  end
  new_array
end


def reduce(array, starting_point = nil)
  if starting_point
    sum = starting_point
    counter = 0 
  else 
    sum = array[0]
    counter = 1
  end
  
  while counter < array.count 
    sum = yield(sum, array[counter])
    counter += 1
  end
  sum
end 



