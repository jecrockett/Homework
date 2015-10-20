class InsertionSort

def sort(array)
  new_array = []                                                # => []
  while array.length > 0                                        # => true, true, true, true, false
    to_insert = array[0]                                        # => "d", "b", "a", "c"
    if new_array.empty?                                         # => true, false, false, false
      new_array << to_insert                                    # => ["d"]
    else new_array.length.times do |i|                          # => 1, 2, 4
      new_array.unshift(to_insert) if to_insert < new_array[i]  # => ["b", "d"], ["a", "b", "d"], ["a", "a", "b", "d"], nil, nil, nil, ["c", "a", "a", "b", "d"]
      end # end of do
    end                                                         # => ["d"], 1, 2, 4
    array.shift                                                 # => "d", "b", "a", "c"
  end                                                           # => nil
end

end

sorter = InsertionSort.new  # => #<InsertionSort:0x007f85530bf0b0>

p sorter.sort(["d", "b", "a", "c"])  # => nil

# >> nil
