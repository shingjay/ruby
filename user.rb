#modules : should be named with an -able at the end
# if i want to use destroy in the class, i have to include the module
# can have multiple methods within modules
# all methods be able to be picked up then
module Destructable
    def destroy(any_object) 
        puts "I will destroy the object"
    end
end

# OOP 
class User

    include Destructable # include a module
    attr_accessor :name, :email # provide getter and setter 

    # constructor/initializer
    def initialize(name, email)
        # @ -> instance variable
        @name = name
        @email = email
    end

    def run
       puts "Hey I'm running" 
    end

    # class method aka static
    def self.identify_yourself
        puts "Hey I am a class method"
    end
end

# inheritance
class Buyer < User 
    def run
        puts "Hey I'm not running buddy, I'm just buyin'"
    end
end 

class Seller < User
end

class Admin < User
end

user1 = User.new("jay", "jay@test.com")
user2 = User.new("anna", "anna@test.com")


# demo getter and setter
puts user1.name
user1.name = "jay-jay"
puts user1.name

# demo inheritance
buyer1 = Buyer.new("John Buyer Doe", "johndoe@test.com")
buyer1.run

seller1 = Seller.new("John Seller Doe", "johndoe@test.com")
seller1.run

admin1 = Admin.new("John Admin Doe", "johndoe@test.com")
admin1.run

# demo class method
User.identify_yourself

# test module 
# if the module isn't defined within the class, then it won't work
user1.destroy("name")
