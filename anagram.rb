#!/bin/ruby

require 'json'
require 'stringio'

# Complete the anagram function below.
def anagram(s)
    x= s.length
    z=0
    return z=-1 if (x%2== 1)
    names1 = s[0...x/2]
    names2 = s[x/2...x].split('')
    
    names1.each_char do|char1|
        names2.each_with_index do |char2,index|
            if char1==char2
                names2.delete_at(index)
                break
            end
        end
    end
    return names2.length

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.to_i

q.times do |q_itr|
    s = gets.to_s.rstrip

    result = anagram s

    fptr.write result
    fptr.write "\n"
end

fptr.close()
