# Write a program to read your birth date from a file and calculate your age and write it down into new file.
require 'date'

file=File.open(File.dirname(__FILE__)+"/input.txt","r").first
# puts file

birth = DateTime.new(file.to_i)
dobdate = "Birth: #{birth.strftime("%m / %d / %Y")}"

today = DateTime.now
todaydate = "Today: #{today.strftime("%m / %d / %Y")}"

age = today.year - birth.year

if today.yday < birth.yday # yday - year day

  age -= 1
end

age =  "Age: #{age}"
output_file =File.open(File.dirname(__FILE__)+"/output.txt",'w')
output_file.write(dobdate,"\n",todaydate,"\n",age)
