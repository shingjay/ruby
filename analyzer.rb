# style guide
#https://github.com/airbnb/ruby

## hashes // old way of doing stuff, use colon instead of rockt
# deets = {
#     'name' => 'jay', 'profession' => 'football player'
# }

# puts deets["profession"]

# hash = {a: 1, b: 2, c:3} # a, b, c are symbols, not strings unlike the ones in deets
# puts hash[:c]

# hash[:d] = 7 # adds [d, 7] to the map
# puts hash

# hash[:name] = 'jay' # add a string to the hash
# puts hash

# hash.delete(:b) # delete key (b) from the hash
# puts hash

# numbers = {a: 1, b: 2, c: 3, d: 4, e: 5, f: 10}
# numbers.each { |key, value| puts "#{key} : #{value}" }

# # numbers.each { |k,v| numbers.delete(k) } # removes everything from the map
# numbers.each { |k,v| numbers.delete(k) if v > 3 } # removes only if value > 3
# puts numbers

# numbers[:d] = 5
# numbers[:e] = 9

# numbers.select { |k,v| v.odd? } # select only odd k-v pairs

## array
#a = [1,2,3,4,"hi", [0,1,2]]
#puts a.include?("hi")
#puts a.include?(0)
#puts a.reverse # reverse but without changing the actual array

#a.reverse! # actually changes the array
#puts a

#puts a.shuffle # shuffles, but also without changing the actual array

#y = (0..3).to_a # y = array of 0 to 9
#z = (0..99).to_a.shuffle! # array of random elements, and shuffle them

#puts y
#y << 25 # shuffle operator, puts a 25 at the end of the array
#puts y
#y.push(100)
#puts y # also similar to the shuffle operator
#y.unshift("test")
#puts y
#x = y.pop # removes something frm the array
#puts y 
#puts "x: #{x}"
#y.uniq # only shows unique elements in the array
 
# going thru each element in y, each element will be i 
#y.each { |i| puts i }

# for loop, something similar to the one above
#for number in y
#    puts "Hi #{number}"
#end

#names = [
#"anna", "jay"
#]

# another form:: names.each { |i| puts "Hello #{i.capitalize}"} 
#names.each do | person |
 #   puts "Hello #{person.capitalize}" #capitalizes the first letter
#end

#y = (0..50).to_a
# select -> you give it a boolean expression, if it's true, then you get the number
#y.select { |number| print "#{number} " if number.odd? }

#names = ["anna", "and", "jay"]
#puts names.join(' ')

###### branching
#def multiply(num1, num2) 
#    num1.to_i * num2.to_i
#end

#def divide(num1, num2) 
#    num1.to_i / num2.to_i
#end

#def subtract(num1, num2) 
#    num1.to_i - num2.to_i
#end

#puts "what do you want? 1. multiply 2. divide 3. subtract"
#prompt = gets.chomp
#puts "first num plz"
#num1 = gets.chomp
#puts "second num plz"
#num2 = gets.chomp

#if prompt == '1'
#   puts "multiply #{multiply(num1, num2)}"
#elsif prompt == '2'
 #   puts "divide #{divide(num1, num2)}"
#elsif prompt == '3'
#    puts "subtract #{subtract(num1, num2)}"
#else 
#    puts "invalid"
#end






##### int, string, conditional
#puts "first name plz"
#first_name = gets.chomp
#puts "last name plz"
#last_name = gets.chomp

#name = "#{first_name} #{last_name}"
#puts "Hi #{name}"

#puts "Hi #{name.reverse}"

#puts "first num plz"
#num1 = gets.chomp

#puts "second num plz"
#num2 = gets.chomp

# puts num1 * num2 # this would fail bcoz string * string
#puts num1.to_i * num2.to_i
#puts num1.to_i - num2.to_i
#uts num1.to_i + num2.to_i
#puts "num1 % num2 #{num1.to_i % num2.to_i}"
#puts "num2 % num1 #{num2.to_i % num1.to_i}"
