##########################################################################

#modules

module Hello 
    def sayHi(name)
        puts "hello #{name}"
    end

    def sayBye(name)
        puts "bye #{name}"
    end
end

#to call module method from different file
#module Hello defined in another file

# require_relative "file_name"

include Hello

Hello.sayHi("Priyanka Manna")

Hello.sayBye("Priyanka Manna")