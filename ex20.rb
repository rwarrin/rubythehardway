# get the first command line argument
input_file = ARGV[0]

# create a function to print the whole file
def print_all(f)
    # prite the file to the screen
    puts f.read()
end

# create a function to place the file pointer
def rewind(f)
    # set the file pointer to the beginning of the file
    f.seek(0, IO::SEEK_SET)
end

# create a function to print a single line at a time with a line number
def print_a_line(line_count, f)
    puts "#{line_count} #{f.readline()}"
end

# open the specified file
current_file = File.open(input_file)

# write some text
puts "First let's print the whole file: "
puts # a blank line

# call the function with the file as an argument
print_all(current_file)

# some text
puts "Now let's rewind, kind of like a tape."

# set the file pointer
rewind(current_file)

# some text
puts "Let's print three lines: "

# current line counter
current_line = 1
print_a_line(current_line, current_file)

# increase current line counter and then print the next line
current_line += 1
print_a_line(current_line, current_file)

# increase current line counter and then print the next line
current_line += 1
print_a_line(current_line, current_file)


