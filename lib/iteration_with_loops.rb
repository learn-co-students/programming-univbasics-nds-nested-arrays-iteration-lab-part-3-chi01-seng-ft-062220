# require pry

def join_nested_strings(src)

    new_str = []
    i = 0
    while i < src.length do
      k = 0
        while k < src[i].length do
          if src[i][k].kind_of?(String)
            new_str.push(src[i][k])
            k +=1
          else
            k +=1
          end
        end
      i +=1
    end
    answer = new_str.join(" ")
    return answer
end
