require 'json' # json lib

class User

    attr_accessor :email, :name, :permissions

    # *args -> splat operator, takes in the arguments passed in and creates an array 
    #ie: args[0] =email, args[1] = name
    def initialize(*args)
        @email = args[0]
        @name = args[1]
        @permissions = User.permissions_from_template    
    end

    def self.permissions_from_template
        # read this from file
        file = File.read 'user_permissions_template.json'

        # the following works but
        # JSON.load(file, nil, symbolize_names: true) doesn't.
        # https://stackoverflow.com/questions/50090273/getting-an-error-cannot-be-used-in-conjunction-argumenterror-ruby
        JSON.load(file, proc: nil, symbolize_names: true)
    end

    def save
        # convert this hash to a json object
        json = {email: @email, name: @name, permissions: @permissions}.to_json
        #'a' - > append
        open('users.json', 'a') do | file |
            file.puts json
        end
    end
end


