# OOP 
class User

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
end

user1 = User.new("jay", "jay@test.com")
user2 = User.new("anna", "anna@test.com")

puts user1.name
user1.name = "jay-jay"
puts user1.name