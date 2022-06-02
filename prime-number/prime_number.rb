def isPrime?(num)
    (2..Math.sqrt(num)).each { |i| return false if num % i == 0}
    true
end
def double_and_add(num , n)
    p = 2
    i = 1
    output = Array.new
    while p <= num
        flag = true 
        if isPrime?(p)
            q = p
            result = p
            while i <= n 
                result = (2 * result) + 1
                isPrime?(result) ? flag = true : flag = false 
                #end loop if result is not prime
                break if flag == false
                i = i+1
            end
            #reset i value
            i = 1
            if flag == true
                output << q
            end 
        end  
        p = p+1
    end
    puts output
end

double_and_add(100,3)
double_and_add(20,2)