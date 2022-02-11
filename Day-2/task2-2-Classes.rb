# Try to create classes and modules, check difference between them

##########################################################################

#classes
class Book
    attr_accessor :title, :author, :pages

    def display
        puts "Book Name : #{@title} , Author : #{@author} ,No of Pages : #{@pages}"
    end
end

book1 = Book.new()
book1.title = "Wuthering Heights"
book1.author = "Emly Bronte"
book1.pages = "276"

book1.display

# output
# Book Name : Wuthering Heights , Author : Emly Bronte ,No of Pages : 276



