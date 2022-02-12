# 1. example of each array method

friends = Array["Ishita","Apexa","Dezal","Muskan","Ravina"] 
puts friends

arr = [9,1,2,3,4,5,6,7,8]




#-------------------access methods---------------------------------

puts arr[5]
puts arr[-1]
puts arr[1,3] #element from 1st index to 3rd index [2 3 4]

puts arr.first
puts arr.last

puts arr.fetch(3) #4th pos element

puts arr.fetch(100,"Don't Exit")




#-------------------print array of 1 to n---------------------------------

arr=Array.new(5){ |i| i=i+1}  # 1 to 5 element
puts(arr)

evenno=arr.select{|j| j%2==0} #even no 
# puts evenno




#-------------------push pop---------------------------------
arr.push(6)
puts(arr)

arr.pop()
puts(arr)




#-------------------delete index---------------------------------

arr.delete_at(1)
# puts(arr)




#-------------------concate 2 array---------------------------------

arr.concat(evenno)
# puts arr




#-------------------slice method---------------------------------

puts arr.slice(0,3) #last position not included and clone array
# puts arr

puts arr.slice!(0,3) #last position not included and change main array
# puts arr #now 0 to 3 element is deleted from array




#-------------------take method---------------------------------

puts arr.take(5)




#-------------------sample method ---------------------------------
puts arr.sample #gives random value from arr
puts arr.sample(3) #gives 3 random value from arr




#-------------------include method---------------------------------

puts arr.include?(2)  #boolean value it element exits - true
puts arr.include?(20) #false




#-------------------reverse method---------------------------------

puts arr.reverse #reverse array but no change in arr
# puts arr

puts arr.reverse! #reverse array but change in arr too
# puts arr




#-------------------sort method---------------------------------

puts arr.sort
arr1 = ["x","a","z","p","y","a","y",1]
puts arr1.sort




#-------------------uniq method---------------------------------

puts arr1.uniq #duplicate value is excluded




#-------------------join method---------------------------------

stringa = arr1.join()
puts stringa #xazpyay1

stringa = arr1.join(", ")
puts stringa #x, a, z, p, y, a, y, 1

stringa = arr1.join("-")
puts stringa #x-a-z-p-y-a-y-1




#-------------------split method---------------------------------

a = "Priyanka, Samar, Manna"
arr = a.split(" ")
arr2 = a.split(", ")
puts arr #include comma
puts arr2 #exclude comma


