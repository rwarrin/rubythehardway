print "How old are you? "
age = gets.chomp()
print "How tall are you? "
height = gets.chomp()
print "How much do you weight? "
weight = gets.chomp()

puts "So, you're #{age} years old, #{height} tall and #{weight} heavy."

# chomp is defined as String#chmp
# which means chomp is a method of string and acts on strings
# chomp removes the trailing \n newline character from a string
# gets returns strings
# gets.chomp returns a string without a \n newline character
