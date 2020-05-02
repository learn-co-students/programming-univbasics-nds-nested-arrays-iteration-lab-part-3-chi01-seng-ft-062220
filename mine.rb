def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it

  outer_results = []
  row_index = 0
     while row_index < src.count do
  	  element_index = 0
  	  while element_index < src[row_index].size do

  	    # Array at row_index
  	    # Element of the inner array at element_index
  	    # If the length of the current element is greater than the length of longest_string_element
  	    # Set longest_string_element to the current element
        if src[row_index][element_index].class == String
          outer_results << src[row_index][element_index]
        end
  	    element_index += 1
  	  end

  	  # We have to check every element in each inner array, so after the loop finishes
  	  # The current value of longest_string_element is pushed into outer_results
  	  #outer_results << longest_string_element
  	  row_index += 1
  	end

  	print outer_results # => ["Sporty", "Fajita Mix", "Rosemary"]
end
src=[1,"a","c"]
join_nested_strings (src)
