# Why readines was not printing \n?
'''
readline() is a file method that helps to read one complete line from the given file.
It has a trailing newline (“\n”) at the end of the string returned.
It appends a newline (“\n”) at the end of the line.
If we try to print it compiler replace with new line
'''

ruby file_copy.rb < sometext.txt > everything.txt d
# why above command first started writing from sometext.txt into file_copy.rb and not directly writing to everything.txt
'''
file_copy.rb first take a sometext.txt as a input.
Then it will process it and finally the output of the file_copy.rb overwrite into everything.txt
'''
