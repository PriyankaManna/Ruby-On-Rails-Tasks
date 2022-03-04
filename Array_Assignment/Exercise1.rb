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
            if idx != index
                sum = num + no
                    if sum == result
                        # puts "#{num} and #{no}"
                        flag = true
                       
                        output.push(index)
                        output.push(idx)

                        return output
                    end
                end
        end
       
    end
    if flag == false        
        return "No element adds up to produce #{result}"
    end
end
arr = [2,2,7,11,7,15]

p sumOftwoElement(arr,13)
p sumOftwoElement(arr,22)
p sumOftwoElement(arr,26)
p sumOftwoElement(arr,17)
p sumOftwoElement(arr,60)
p sumOftwoElement(arr,4)
p sumOftwoElement(arr,14)


# output
[0, 3]
[2, 5]
[3, 5]
[0, 5]
"No element adds up to produce 60"
[0, 1]
[2, 4]
