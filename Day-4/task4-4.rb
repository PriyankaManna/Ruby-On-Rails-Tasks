# 4. convert multi dim array in single dimension but without using a flatten method
arr = [[1,2,3],[4,5],6,[7,8,[9,10]]]
result = []

arr.each do |ele|
   if ele.is_a? Array 
    ele.each do |n|
        n.is_a?(Array) ? arr << n :  result<<n
    end
   else
    result << ele
   end
end   

p result