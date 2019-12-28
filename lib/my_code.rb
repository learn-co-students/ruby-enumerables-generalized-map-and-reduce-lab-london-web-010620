#map
# map returns an Array
def map(array)
  new = []
  i = 0 
  
  while i < array.length do
    new.push(yield(array[i]))
    i += 1 
  end
  new
end


#reduce
#reduce returns a value

def reduce(array, starting_point  = nil)
  
  if starting_point # condition to check for starting value
    total = starting_point
    i = 0
  else 
    total = array[0] # if no starting value then create own starting point at the beginning of the array
    i = 1 
  end
  
  while i < array.length do #using yield keyword to pass two pieces of data (total(starting_point) and element of array) + looping over array until finished.  
    total  = yield(total, array[i])
    i += 1
  end
  total 
end


  