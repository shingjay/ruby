dial_book = {
    "new york" => "212",
    "new brunswick" => "732",
    "west lafayette" => "765",
    "chicago" => "312",
    "seattle" => "425"
}

def get_city_code(hash, city_name)
    hash[city_name]
end

def display_city_names(hash) 
    # (alternative) dial_book.each { |city, code| puts city }
    puts hash.keys
end

#1. Create a dictionary (hash) with 10 city names, where the city name would be a string and the key, and the area code would be the value
#2. Display the city names to the user which are available in the dictionary
#3. Get input from the user on the city name (hint: use gets.chomp method)
#4. Display area code based on user's city choice
#5. Loop - keep the program running and prompt the user for new city names to lookup
#6. Method to look up area code, this will take in a hash of the dictionary and the city name and will output area code
#7. Method to display just city names


puts "List of cities available are:"
display_city_names(dial_book)

while(true)
    puts "What is the city name you are looking for?"
    city_name_input = gets.chomp

    code = get_city_code(dial_book, city_name_input)
    if code == nil
        puts "City code not found for #{city_name_input}"
    else
        puts "City code is #{code} for #{city_name_input}"
    end

    puts "Enter exit to exit, any other key to continue"
    exit = gets.chomp
    if exit == "exit" 
        break
    end
end
