''' A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.
For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 20 has binary representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 1111 and has no binary gaps. The number 32 has binary representation 100000 and has no binary gaps.
Write a function:
`def solution(n)`
that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesnt contain a binary gap.
For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its longest binary gap is of length 5. Given N = 32 the function should return 0, because N has binary representation '100000' and thus no binary gaps.
Write an efficient algorithm for the following assumptions:
N is an integer within the range [1..2,147,483,647].'''


puts "Binary gap problem"
n = 777
def integer_to_binary(n)
    binary_s = []
    while n > 0
        binary = n % 2
        binary_s.insert(0,binary)
        n /= 2
    end
    binary_s
end

def binary_gap(binary_of_num)
     i = 0
     count = 0
    while i < binary_of_num.length
        maxCount = 0;
        if(binary_of_num[i]==1 && binary_of_num[i+1]==0)
            maxCount+= 1;
            i+=1;
            while binary_of_num[i+1]==0 
                if binary_of_num[i] == 0 
                    maxCount+=1;
                    i+=1;
                end
            end
            if maxCount > count
                count = maxCount;
            end
        end
        i +=1
    end
    count
end
binary_of_num = integer_to_binary(n) 
p binary_of_num

p binary_gap(binary_of_num)

