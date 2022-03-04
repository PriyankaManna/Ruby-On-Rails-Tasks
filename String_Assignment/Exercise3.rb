# Reverse only vowels in the given string.

# Input: string = "communication"
# Expected output: "comminacituon"

def reverseVowels(string)
    
    arr = ["a","e","i","o","u","A","E","I","O","U"]
    arr2 = []
     for i in 0...string.length
        if arr.include? string[i]
            arr2.push(string[i])
            string[i] = ' '
        end
    end

    for i in 0...string.length
        if string[i] == ' '
            string[i] = arr2.pop()
        end
    end

    return string
end

string = "communication"
string1 = "PriyankA"
p reverseVowels(string) #"comminacituon"

p reverseVowels(string1) #"prAyanki"
