

source_array = [ false, nil, nil, nil, true]

def newmethod(array)
  return_value = nil
  array.length.times do |index|
    return_value = yield(return_value, array[index])
  end
  puts return_value
end

def newermethod(array)
  return_value = array[0]
  index = 1
  while index < array.length do
    return_value = yield(return_value, array[index])
    index += 1
  end 
  puts return_value
end


newmethod(source_array){|memo,n| memo || n }
newermethod(source_array){|memo,n| memo || n }