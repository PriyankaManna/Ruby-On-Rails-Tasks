# string methods

puts "Priyanka Manna"
puts "Priyanka \nManna"
name = "priyanka Manna"

puts "Up-Case :"+name.upcase()
puts "Down-Case :"+name.downcase()
puts "capitalize :"+name.capitalize()

name = "        Priyanka Manna         "
puts "Strip :"+name.strip!()
# puts "Include :" +name.include?("Manna")
puts "First Char :"+name[0]
puts "last Char :"+name[-1]
puts "Range of Char :"+name[0,8];
# puts "Index of :"+name.index("a")
puts name.sub('M','T') # one or 'n'one replace with char 
puts name.gsub('a','hh') # zero or all replace with char

str= String.new("Priyanka Manna")
puts str.class

puts "size #{str.size}","length #{str.length}","bytesize #{str.bytesize}"
puts str.index("Manna")==9

str<<" ROR Developer\n"
puts str*2
puts str.center(str.size+2,'1')
