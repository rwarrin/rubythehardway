# gets the first arugment from the command line
filename = ARGV.first

# create a string that is used for prompting for input
prompt = "> "
# open the file specified in the command line arugments and store it in txt
txt = File.open(filename)

# write a string
puts "Here's your file: #{filename}"
# write the contents of the file to the screen
puts txt.read()
# close the file after we're done with ti
txt.close()

# write a string
puts "I'll also ask you to type it again: "
# ask for input
print prompt
# read input from STDIN from the user
file_again = STDIN.gets.chomp()

# open the file again
txt_again = File.open(file_again)

# write the file to the screen again
puts txt_again.read()

#close the file after we're done with it
txt_again.close()
