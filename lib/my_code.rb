# Your Code Here
def map(source_array)
  total_array = []
  source_array.length.times do |index|
    total_array.push(yield(source_array[index]))
  end
  total_array
end 

def reduce(source_array, starting_number = nil)
  if starting_number
    return_value = starting_number
    i = 0
  else
    return_value = source_array[0]
    i = 1
  end 
  while i < source_array.length do
    return_value = yield(return_value, source_array[i])
    i += 1
  end 
  return_value
end 