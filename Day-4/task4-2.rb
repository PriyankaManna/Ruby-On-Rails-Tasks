# 2. example of each hash method

hash = Hash.new()
# puts hash.methods


hashdemo={}
hashdemo[:a]=1
hashdemo[:b]=2
hashdemo[:c]=3
hashdemo[:d]=4
print(hashdemo)
puts

friends = {"Priyanka":100,"aa":-200,"Apexa":300}
friends.store("muskan",400)
puts friends
puts friends.invert

#-------------------delete methods---------------------------------
puts friends.delete("muskan")
puts friends.delete("aa"){ |el| "#{el} not found" }
puts friends.delete_if{|key, value| value > 0 }




#-------------------empty methods---------------------------------
puts hash.empty? #true
hash[:key1] = "Hello"
puts hash.empty? #false




#-------------------eql methods---------------------------------
h1 = {key1: '1',key2:'2'}
h2 = {key2: '2',key1:'1'}
puts h1.eql?h2 #true 
puts h1.eql?'20' #false
puts h1.eql?hash #false




#-------------------key methods---------------------------------
puts hash.key?(:key1) #true
puts hash.key?(':key1') #false




#-------------------fetch methods---------------------------------
puts hash.fetch(:key1)
# puts hash.fetch(':key1') #error as key don't exit




#-------------------object_id methods---------------------------------
puts h1.object_id
puts h2.object_id
puts hash.object_id




#-------------------equal methods---------------------------------
puts h1.equal?h2
h1 = h2
puts h1.equal?h2




#-------------------compact methods---------------------------------
h1[:key3]= nil
h1[:key4]= nil
puts h1.compact #remove nil value but does not effect in actual hash
puts h1.compact! #remove nil value but does effect in actual hash

