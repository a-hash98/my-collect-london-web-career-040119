def my_collect(collection)
  if block_given?
    i = 0
    while i < collection.length
      return yield collection[i]
      i += 1
    end
  else
    return "No block was given!"
  end
end

my_collect(["a","b","c"]) do |item|
  return item.upcase
end
