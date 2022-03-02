# Given a number n, return true if n is palindrome.

def palindromeCheck(num)
    if num>0
        numtostr = num.to_s
        revNum = numtostr.reverse 
        revNum = revNum.to_i 
        if revNum == num
            # print revNum.class
            # print num.class
            puts "#{num} is Palindrome Number"
        else 
            puts "#{num} is not a Palindrome Number"
        end
    end
end
palindromeCheck(525)
palindromeCheck(123556)