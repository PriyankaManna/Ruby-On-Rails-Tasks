# write an example which demonstrate use of Proc
puts "Factor using proc"
factor = proc {|n| puts n*2}
#using the proc value
[3,2,1].each(&factor)

puts "Defining a method that takes in a proc/block"
student = ['Priyanka','apexa','ishita']

def each(arr,&blk)
    i = 0
    while i < arr.count
        el = arr[i]
        blk.call(el)
        i+=1 
    end
end

print_proc = Proc.new{|student| puts student}
each(student,&print_proc)