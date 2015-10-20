class BubbleSort

  def sort(array)
    swaps = 0                           # => 0, 0, 0
    (array.length-1).times.each do |i|  # => #<Enumerator: 3:times>, #<Enumerator: 3:times>, #<Enumerator: 3:times>
      if array[i] > array[i+1]          # => true, true, true, true, false, false, false, false, false
        temp_holder = array[i+1]        # => "b", "a", "c", "a"
        array[i+1] = array[i]           # => "d", "d", "d", "b"
        array[i] = temp_holder          # => "b", "a", "c", "a"
        swaps = swaps + 1               # => 1, 2, 3, 1
      end # end of swap
    end # end of one iteration
    if swaps == 0                       # => false, false, true
      return array                      # => ["a", "b", "c", "d"]
    else
      sort(array)                       # => ["a", "b", "c", "d"], ["a", "b", "c", "d"]
    end
  end # end of loop
end # end of sort

# QUESTION: I was tryingt to us i-1 instead of i and i instead of i+1. I thought the times method would call 1 first for |i| when i really wanted to compare array[0] to array [1]...thus i-1. I couldn't get it to work that way, though. why not?



sorter = BubbleSort.new  # => #<BubbleSort:0x007ffabb845c98>

p sorter.sort(["d", "b", "a", "c"])  # => ["a", "b", "c", "d"]

# >> ["a", "b", "c", "d"]
