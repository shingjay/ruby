require 'pp' # pretty print
require_relative 'user' # user class that i put in this folder

user = User.new 'jay@test.com', 'Jay'

pp user

user.save # outputs the json object created