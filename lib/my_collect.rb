def my_collect(collection)
  new_collection = Array.new
  if block_given?
    i = 0
    while i < collection.length
        new_collection.push(yield collection[i])
      i += 1
    end
  else
    return "No block was given!"
  end
end

my_collect(["a","b","c"]) do |item|
  return item.upcase
end
