# Given a sentence, return the length of the last word in the sentence.
# Input: sentence = “       This   is   my  ruby string     practical  assignment   ”
# Expected output: 10

def longestCommonprefix(sentence)
    arr = sentence.split(" ")
    return arr.map(&:length).max
end
sentence = "       This   is   my  ruby string     practical  assignment   "
p  longestCommonprefix(sentence) #10
sentence2 = "this is      ruby on rails assignments"
p longestCommonprefix(sentence2) #11