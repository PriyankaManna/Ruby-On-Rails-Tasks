# 1. write a program that handle the bellow exception. and also check when it is occured exception.
############################################################# NoMemoryError#############################################################
def NoMemoryError_exception
    begin
        s = String.new("1" * (2**62)) 
        puts s
    rescue NoMemoryError
        puts 'NoMemoryError Exception :failed to allocate memory (NoMemoryError)'
    end
    
end
NoMemoryError_exception()



############################################################## ScriptError#############################################################
# def ScriptError_exception
# end



############################################################## LoadError #############################################################
def LoadError_exception
    begin
        require 'this/file/does/not/exist'
    rescue LoadError
        puts 'LoadError Exception :cannot load such file -- this/file/does/not/exist (LoadError)'
    end
end
LoadError_exception()




############################################################## NotImplementedError######################################################
# def NotImplementedError_exception
    
# end
# NotImplementedError_exception()




############################################################## SyntaxError#############################################################
def SyntaxError_exception
    begin
        eval 'x = {id: 1'
      rescue SyntaxError => err
        puts "ERROR: #{err.inspect}"
      end
end
SyntaxError_exception()



############################################################## SignalException#############################################################
def SignalException_exception
    begin
        Process.kill('HUP',Process.pid)
        sleep # wait for receiver to handle signal sent by Process.kill
      rescue SignalException => e
        puts "received Exception #{e}"
      end
end
SignalException_exception()



############################################################## Interrupt#############################################################
def Interrupt_exception
    # Loop indefinitely
    count = 0
    while true
        count = count + 1
        puts count
        sleep 1  #`sleep': Interrupt
    end
end
Interrupt_exception()



############################################################## StandardException#############################################################
class MissingName < StandardError
    def initialize(msg="Name is missing!")
        super
    end
end
def StandardException_exception
    begin
        raise MissingName
    rescue => e
        print_exception(e, true)
    end
end
StandardException_exception()



############################################################## ArgumentError#############################################################
CREATURES = ['NoMethodError', 'TypeError', 'ArgumentError', 'RuntimeError']

def ArgumentError_exception(n)
   raise ArgumentError.new(
    "Expected a value of 1-#{CREATURES.size}, got #{n}"
  ) if CREATURES.size < n

  puts CREATURES[0...n]

end
ArgumentError_exception(7) #Expected a value of 1-4, got 7 (ArgumentError)



############################################################## IOError#############################################################
def IOError_exception
    begin
    File.open("/etc/hosts") {|f| f << "example"}
    rescue => e
        puts e.inspect
    end
end
IOError_exception()


############################################################## EOError#############################################################
def EOFError_exception
    
    begin
        file = File.open("task8-2.rb")
        file.read
        file.gets     #=> nil
        file.readline #=> EOFError: end of file reached
    rescue => e
        puts e.inspect
    end
end
EOFError_exception()


############################################################## IndexError #############################################################
def IndexError_exception
    begin
        a = [:foo, :bar]
        a.fetch(0)   #=> :foo
        a[4]         #=> nil
        a.fetch(4)   #=> IndexError: index 4 outside of array bounds: -2...2
    rescue => e 
        puts e.inspect
    end
end
IndexError_exception()

############################################################## LoadJumpError#############################################################
def LoadJumpError_exception
    begin
        yield 42
    rescue => e 
        puts e.inspect
    end

end

LoadJumpError_exception()

############################################################## NameError#############################################################
def NameError_exception
    begin
        Integer.const_set :answer, 42
    rescue=>e 
        puts e.inspect 
    end
end

NameError_exception()

############################################################## NoMethodError#############################################################
def NoMethodError_exception
    begin
        "hello".to_ary
    rescue => e 
        puts "ERROR: #{e}" 
    end

end
NoMethodError_exception()


############################################################## RangeError#############################################################
def RangeError_exception
    begin 
        [1, 2, 3].drop(1 << 100)
    rescue => e 
        puts e.inspect 
    end
end
RangeError_exception()


############################################################## FloatDomainError#############################################################
def FloatDomainError_exception
    begin

        Float::INFINITY.to_r 

    rescue FloatDomainError => err
        puts err.inspect
    end
end
FloatDomainError_exception()



############################################################## RegexpError#############################################################
def RegexpError_exception
    begin
        Regexp.new("?")
    rescue RegexpError =>err
        puts "RegexpError #{err}" 
    end
end
RegexpError_exception()


############################################################## RuntimeError#############################################################
def RuntimeError_exception
    begin
        raise "ouch"
    rescue RuntimeError => e
        puts e.inspect
    end
end
RuntimeError_exception()


############################################################## SecurityError#############################################################
# def SecurityError_exception
# end
# SecurityError_exception()


############################################################## SystemCallError#############################################################
def SystemCallError_exception
    begin
        File.open('missing/file/path')        
    rescue SystemCallError => e
        puts e.inspect
    rescue => e
        puts e.inspect
    end
end
SystemCallError_exception()

############################################################## SystemStackError#############################################################
def SystemStackError_exception
    begin
    SystemStackError_exception()
    rescue SystemStackError => e
        puts e.inspect
    end
      
end
SystemStackError_exception()



############################################################## ThreadError#############################################################
def ThreadError_exception
    begin
    Thread.stop
    rescue ThreadError => e 
        puts e.inspect 
    end

end
ThreadError_exception()



############################################################## TypeError#############################################################
def TypeError_exception
    begin
    [1, 2, 3].first("two")
    rescue TypeError => e 
        puts e.inspect
    end

end
TypeError_exception()



############################################################## ZeroDivisionError#############################################################
def ZeroDivisionError_exception
    begin
        42 / 0   #=> ZeroDivisionError: divided by 0
    rescue ZeroDivisionError => e 
        puts e.inspect
    end
end
ZeroDivisionError_exception()



############################################################## fatal#############################################################
def fatal_exception
    begin
        raise FatalError.new
      rescue Exception => e
        puts "Not so fatal after all..."
      end
end
fatal_exception()



############################################################## SystemExit#############################################################
def SystemExit_exception
    begin
        # Exit the current process.
        exit
        Logging.log("Exit skipped.")
    rescue SystemExit => e
        Logging.log("Exiting process.") #=> Exiting process.
        Logging.log(e) #=> (EXPLICIT) SystemExit: exit
    rescue => e
        Logging.log(e, { explicit: false })
    end  
end
 SystemExit_exception()
