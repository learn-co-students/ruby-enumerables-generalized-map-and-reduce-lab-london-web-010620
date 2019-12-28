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
  new = []
  
  if starting_point
    total = starting_point
    i = 0
  else 
    total = array[0]
    i = 1 
  end
  
  while i < array.length do
    total  = yield(total, array[i])
    i += 1
  end
  total 
end


  