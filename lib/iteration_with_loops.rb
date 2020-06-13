def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  resultString = []
  count = 0
  while count < src.size
    innerCount = 0
    while innerCount < src[count].size
      element = src[count][innerCount]
      if element.is_a? String
        resultString.push(element)
      end
      innerCount += 1
    end
    count += 1
  end
  resultString.join(' ')
end