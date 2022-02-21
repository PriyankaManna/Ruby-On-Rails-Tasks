# write example of each type of argument passing
def full_name(fname,lname)
    fname+" "+lname
end

def full_name fname,lname
   puts fname+" "+lname
end

def print_address city:,state:,zip:
    puts city
    puts state
    puts zip
end

def stream_movie title:,lang:"English"
    puts title + " in " + lang
end

def mul_name *name
    name.each{|i| puts i}
end

full_name("Priyanka","Manna")
full_name "Tia","Mana"
print_address city:"Botad",state:"Gujarat",zip:"364710"
print_address state:"Gujarat",city:"Bhavnagar",zip:"364710" # order doesnot matter for named argument
stream_movie title:"Avengers"
stream_movie title:"Titanic",lang:"English"
stream_movie title:"Spiderman",lang:"Hindi"
mul_name "Priyanka","tia","pillu","Prishu"

