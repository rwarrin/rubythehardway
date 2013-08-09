# creates a string with a litteral constant value in the string interpolation
x = "There are #{10} types of people."
# creates a variable with the string binary
binary = "binary"
# creates a variable with the string don't
do_not = "don't"
# creates a new string with two string interpolations that are replaced with the
# contents of the variables they reference
y = "Those who know #{binary} and those who #{do_not}."

# prints There are 10 types of people.
puts x
# prints Those who know binary and those who don't
puts y

# using string interpolation to print the contents of x inside of another string
puts "I said: '#{x}.'"
# using string interpolation to print the contents of y inside of another string
puts "I also said: '#{y}'."

# creates a boolean variable 
hilarious = false
# prints a string with string interpolation to print false at the end
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

# prints the string stored in joke_evaluation
puts joke_evaluation

# creates a string
w = "This is the left side of..."
# creates another string
e = "a string with a right side."

# prints the two strings in w and e by concatenating them together
puts w + e
