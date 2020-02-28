# Your Code Here

def map(source_array)
  i = 0
  while i < source_array.length do
    source_array[i] = yield (source_array[i])
    i += 1
  end
  return source_array
end


def reduce(source_array, starting_point = nil)

  if starting_point
    new = starting_point
    i = 0
  else
    new = source_array[0]
    i = 1
  end
  
  while i < source_array.length do
    new = yield(new, source_array[i])
    i += 1
  end
  return new
  
end