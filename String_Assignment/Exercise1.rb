# Write a function to find the longest common prefix string amongst an array of strings.
# Input: string = ["challenge","characteristic","champion"] 
# Expected output: "cha"
# string.each do |item|
#     for i in 0...item.length
#         p item[0..i] 
#     end
# end

def longestCommonprefix(string)
    commonstr = ['No match']
    for i in 0...string[0].length
        
        commonstr[i+1] = string[0][0..i]
        # p commonstr[i]

        string.each do |item|
            if !item.start_with?(commonstr[i+1])
                return commonstr[i]
            end
        end

    end
end
string1 = ["challenge","characteristic","champion"] 
str = ["Priyanka","Priya","Priyanshu"]
str2 = ["abc","xyz","bvc"]
puts longestCommonprefix(string1) #cha
puts longestCommonprefix(str) #cha
puts longestCommonprefix(str2) #Priya
