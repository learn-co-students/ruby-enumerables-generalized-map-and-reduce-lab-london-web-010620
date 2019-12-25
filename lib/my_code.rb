# Your Code Here
#my own map
def map(array)
  new=[]
  counter = 0 
  while counter < array.size 
  new.push(yield(array[counter]))
  counter+=1
  end
  new
end

#my own reduce
def reduce(array, sv = nil)
 if sv 
   sum = sv
   i = 0 
 else 
   sum= array[0]
   i = 1 
 end
 
 while  i < array.size 
  sum =  yield(sum,array[i])
 i+=1 
 end
 sum
end












