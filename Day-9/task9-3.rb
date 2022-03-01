# write an example which demonstrate use of lambda
student = ['Priyanka','apexa','ishita']

def each(arr,&blk)
    i = 0
    while i < arr.count
        el = arr[i]
        blk.call(el)
        i+=1 
    end
end

print_proc = -> (student){ puts student}
each(student,&print_proc)

# or
print_proc = lambda {|student| puts student}
each(student,&print_proc)

# Difference between Procs and Lambdas
# Procs don’t care about the correct number of arguments, while lambdas will raise an exception.
# Return and break behaves differently in procs and lambdas
# Next behaves same way in both procs and lambdas