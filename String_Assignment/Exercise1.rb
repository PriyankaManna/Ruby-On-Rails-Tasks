# Write a function to find the longest common prefix string amongst an array of strings.
# Input: string = ["challenge","characteristic","champion"] 
# Expected output: "cha"
# string.each do |item|
#     for i in 0...item.length
#         p item[0..i] 
#     end
# end

def longestCommonprefix(string)
    commonstr = []
    for i in 0...string[0].length
        
        commonstr[i] = string[0][0..i]
        
        string.each do |item|
            if !item.start_with?(commonstr[i])
                return commonstr[i-1]
            end
        end

    end
end
string1 = ["challenge","characteristic","champion"] 
str = ["Priyanka","Priya","Priyanshu"]
puts longestCommonprefix(string1) #cha
puts longestCommonprefix(str) #Priya
