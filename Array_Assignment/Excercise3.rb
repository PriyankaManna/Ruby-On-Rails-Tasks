# Given an array of numbers, remove the duplicates such that each unique element appears only once.

# Input: numbers = [0,0,1,1,1,2,2,3,3,4]
# Expected output: [0,1,2,3,4, nil, nil, nil, nil, nil]

arr = [0,0,1,1,1,2,2,3,3,4]

def removeDuplicate(numbers)
    length = numbers.length
    numbers = numbers.uniq
    totalnil =  length - numbers.length
    numbers.push(['nil'] * totalnil)
    return numbers
end

puts removeDuplicate(arr)