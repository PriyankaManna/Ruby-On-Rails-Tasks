# Given an array of numbers and a result, return indices of the two numbers such that they sum to the result.

# Input: numbers = [2,7,11,15], result = 13
# Expected output: [0,2]
# Explanation: numbers[0] + numbers[2] = 13

# result = 22

def sumOftwoElement(numbers,result)
    output = []
    flag = false
    numbers.each_with_index do |num, idx|
        arr = numbers.slice(0,idx+1)
        arr.each_with_index do |no,index|
            sum = num + no
                if sum == result
                    # puts "#{num} and #{no}"
                    flag = true
                    output.push(idx)
                    output.push(index)
                    return output
                end
        end
       
    end
    if flag == false        
        return "No element adds up to produce #{result}"
    end
end
arr = [2,7,11,15]

p sumOftwoElement(arr,13)
p sumOftwoElement(arr,22)
p sumOftwoElement(arr,26)
p sumOftwoElement(arr,60)

# output
# [2, 0]
# [2, 2]
# [3, 2]
# "No element adds up to produce 60"
