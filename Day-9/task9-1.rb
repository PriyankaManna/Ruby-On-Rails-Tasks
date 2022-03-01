# write an example which demonstrate use of blocks
student = ['Priyanka','apexa','ishita']
student.each{|student| puts student}

student.each do |student|
    puts student
    puts student.length
end

student.each_with_index do |student,i|
    puts i
    puts student
end

def each(arr)
    i = 0
    while i < arr.count
        puts "#{i} :I'm iterating"
        i+=1 
    end
end
each(student)


def each(arr,&blk)
    i = 0
    while i < arr.count
        el = arr[i]
        blk.call(el)
        i+=1 
    end
end
each(student) do |s|
    puts s
end

#  using yeild
def each(arr)
    if !block_given?
        puts "No Block"
        return
    end
    i = 0
    while i < arr.count
        el = arr[i]
        yield el
        i+=1 
    end
end
each(student) do |s|
    puts s
end

each(student) #without Block