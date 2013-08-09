
def makenumbers(max, inc)
    i = 0
    numbers = []

    while(i < max)
        puts "At the top i is #{i}"
        numbers.push(i)

        i = i + inc 
        puts "Numbers now: #{numbers}"
        puts "At the bottom i is #{i}"
    end
    return numbers
end

numbers = makenumbers(9, 2)

puts "The numbers: "
for num in numbers
    puts num
end
