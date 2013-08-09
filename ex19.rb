# define a function that takes two arguments
def cheese_and_crackers(cheese_count, boxes_of_crackers)
    # writes some text to the screen using the function parameters
    puts "You have #{cheese_count} cheeses!"
    puts "You have #{boxes_of_crackers} boxes of crackers!"
    puts "Man that's enough for a party!"
    puts "Get a blanket."
    puts # a blank line
end

# write some text
puts "We can just give the function numbers directly:"
# call the function with constant values
cheese_and_crackers(20, 30)

# write some text
puts "OR, we can use variables from our script:"
# define a variable
amount_of_cheese = 10
# define another variable
amount_of_crackers = 50
# call the function with variables as arguments
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# write some text
puts "We can even do math inside too:"
# call the function with constant values that are results of mathematical operations
cheese_and_crackers(10 + 20, 5 + 6)

# write some text
puts "And we can combine the two, variables and math:"
# call the function with variables and constants and mathematical operations
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
