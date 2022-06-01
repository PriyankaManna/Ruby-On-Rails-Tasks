require 'prime'

def double_and_add(num , i)
    output = Array.new
    for p in 2..num do
        if p.prime?
            q = p
            result = p
        for a in 1..i do 
            result = (2 * result) + 1
            # puts "#{a}---#{result}---#{q}"
            if  result.prime? 
                flag = true 
            else 
                flag = false
                break
            end
        end    
        if flag == true
            output << q
        end
        
        end 
    end
    puts output
end

double_and_add(100,3)
double_and_add(20,2)