# - write example that demonstrate type of variable
# local variable
p "local variable"
 5.times do
     x = 10
     p x
 end
#  p x #error : local variable



# global variable
p "global variable"
5.times do
    $x = 10
    p $x
end
puts "outside loop : #{$x}" 



# Instance variable
p "Instance variable"
@bat_avg =300
puts @bat_avg



# class variable
p "class variable"
class Album
    @@album_count = 0 
  
    def initialize
      @@album_count += 1
    end
  
    def self.count
      @@album_count
    end
  end

Album.new
p Album.count



# constant variable
p "constant variable"
CONSTVAR = 100
CONSTVAR = 200 #warning: already initialized constant CONSTVAR
puts CONSTVAR # 200 is printed
