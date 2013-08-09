def prompt()
    print "> "
end

def die(reason)
    puts "#{reason} Game Over."
    Process.exit(0)
end

def start()
    puts <<INTRO_MESSAGE
    You're in a big scary room.
    You can go left or right.
    Which way do you go?
INTRO_MESSAGE

    prompt; choice = gets.chomp

    if(choice == "left")
        water_room()
    elsif(choice == "right")
        laser_room()
    else
        die("You fall down a trap door and starve to death.");
    end
end

def water_room()
    puts <<ROOM_DESCRIPTION
    You're in a room full of water.
    There's no visible way out.
    You see a chain on the floor in front of you.
    What do you do?
ROOM_DESCRIPTION
    
    prompt; choice = gets.chomp

    if(choice.include? "pull" or choice.include? "lift" and choice.include? "chain")
        puts "Moving the chain released a plug and the room begins to drain."
        puts "You see a hole in the floor and drop through it."
        final_boss()
    else
        die("You slip and hit your head on a rock, you slide into the water unconscious and die.")
    end
end

def laser_room()
    puts <<ROOM_DESCRIPTION
    You walk in to a room full of moving laser beams.
    What do you do?
ROOM_DESCRIPTION

    prompt; choice = gets.chomp

    if(choice == "go back" or choice == "turn around" or choice == "leave")
        start()
    else
        die("You #{choice} and a laser cuts you in half. You die.")
    end
end

def final_boss()
    puts <<ROOM_DESCRIPTION
    You are in a room with lots of gold and other treasures.
    What do you do?
ROOM_DESCRIPTION
    
    prompt; choice = gets.chomp

    if(choice.include? "take" and choice.include? "gold")
        puts "You take the gold and leave, you're rich now!"
        Process.exit(0);
    else
        die("You #{choice} and wake up a dragon which eats you.")
    end
end

start()
