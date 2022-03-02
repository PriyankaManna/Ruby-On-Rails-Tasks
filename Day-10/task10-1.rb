# -Intro to metaprogramming
# ------------------------------------------------------------------------------
# -send method
class Account 
    attr_accessor :name ,:address,:email,:notes

    def assign_values(values)
        values.each_key do |k|
            self.send("#{k}=",values[k])  #=> self.name = values[k]
        end
    end
end
user ={
    :name => "Priyanka Manna",
    :address =>"321 abc xyz",
    :email =>"pm@bacancy.com",
    :notes =>"Ruby on rails"
}

acc = Account.new
acc.assign_values(user)
p acc.inspect
#  output : "#<Account:0x0000557cf3b23908 @name=\"Priyanka Manna\", @address=\"321 abc xyz\", @email=\"pm@bacancy.com\", @notes=\"Ruby on rails\">"

# ------------------------------------------------------------------------------
# -method_missing
class A
    def ary
      [:a,:b,:c]
    end
    def method_missing(method, *args)
      puts ary.include?(method)
    end
  end
  a = A.new
  a.b
  a.a 
  a.c
  a.d

# output
# true
# true
# true
# false
# ------------------------------------------------------------------------------
# -define_method
class String 

    def self.add_new_method(name,&logic)
        send(:define_method,name){ |*args|
            puts "Method #{name} is created"
            logic.call(*args)
        }
        
    end
end


String.add_new_method("add_number") do |x,y|
    puts "Logic"
    puts x+y
end
"String".add_number(99,1991)


# output
# Method add_number is created
# Logic
# 2090


# ------------------------------------------------------------------------------
# -class_eval

class Hello
end
Hello.class_eval do 
    def say_hi
        puts "Hii"
    end
    def self.say_hello #class level method
        puts "Hello"
    end

end

Hello.new.say_hi
# Hello.new.say_hello #error
Hello.say_hello #call by class 

# output
# Hii
# Hello

# ------------------------------------------------------------------------------
# -instance_eval
class Hello
end
Hello.instance_eval do
    def say_hi
        p "hii"
    end
    def self.say_hello #class level method
                puts "Hello"
            end
end
Hello.say_hi
Hello.say_hello 
# Hello.new.say_hello #error
p = Hello.new
p.instance_eval do 
    def say_hi
        puts "P hello"
    end
end
p.say_hi

# output
# "hii"
# Hello
# P hello
# ------------------------------------------------------------------------------
# -singleton method/class
s = 'abc'
# object 
def s.say_hi
    puts 'hii'
end
s.say_hi

class << s 
    def say_hi
        puts 'hii'
    end

    def say_bye
        puts 'byee'
    end
end
s.say_hi()
s.say_bye()

# output
# hii
# hii
# byee
# ------------------------------------------------------------------------------
# monkey patching
class Object
    def print_to_s 
       p "------------#{to_s}"
    end
end
"Priyanka".print_to_s # monkey patching
Time.now.print_to_s

# output
# "------------Priyanka"
# "------------2022-03-02 18:52:29 +0530"