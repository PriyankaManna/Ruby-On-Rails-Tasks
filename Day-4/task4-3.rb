# 3. example of each range method

#-------------------range methods---------------------------------

arr = 1..10
arr.each{|x| puts x}

puts arr.max
puts arr.min
puts arr.class

puts arr.to_a



arr = 1...10 #exclude 10
puts arr.to_a



arr = 'a'..'z'
puts arr.to_a

puts arr.include?(100)



arr.to_s
puts arr.each{|a| puts a}




#-------------------range as condition---------------------------------

if (('A'..'Z') === 'p')
    puts "p lies in the range of A to Z"
else
    puts "p does not lies in the range of A to Z"

end


puts ('A'..'Z').to_a.reverse   

puts ('abc'..'abr').to_a




#-------------------range exclude---------------------------------

puts arr.reject{|i| i<5}