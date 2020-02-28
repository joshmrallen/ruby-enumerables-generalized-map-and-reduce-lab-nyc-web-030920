# Your Code Here

def map(source_array)
  i = 0
  while i < source_array.length do
    source_array[i] = yield (source_array[i])
    i += 1
  end
  return source_array
end


def reduce(source_array, starting_point = false)
  if starting_point
  new = starting_point
  source_array.unshift(new)
  i = 1
  while i < source_array.length do
    new = yield(new, source_array[i])
    i += 1
  end
  return new
  
end