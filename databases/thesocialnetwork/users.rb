#file used to create and populate the users table for a social networking platform

#load Faker and SQLite gems
require 'sqlite3'
require 'faker'
#create new instance of database
database = SQLite3::Database.new("thesocialnetwork.db")
database.results_as_hash = true
# create method for creating a new user account

def create_new_account(database, email_address, first_name, last_name, password)
  database.execute("INSERT INTO users (email_address, first_name, last_name, password) VALUES (?, ?, ?, ?)", [email_address, first_name, last_name, password])
end

100.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email_address = first_name + "." + last_name + "@gmail.com"
  create_new_account(database, email_address, first_name, last_name, Faker::Pokemon.name )
end