def my_collect(collecion)
  if block_given?
    i = 0
    while i < array.length
      yield array[i]
      i += 1
    end
  else
    return "No block was given!"
  end
end

my_collect(["a","b","c"]) do |item|
  return item.upcase
end
