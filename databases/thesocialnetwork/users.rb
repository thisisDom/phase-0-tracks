#file used to create and populate the users table for a social networking platform

#load Faker and SQLite gems
require 'sqlite3'
require 'faker'
#create new instance of database
database = SQLite3::Database.new("thesocialnetwork.db")
db.results_as_hash = true
# create method for creating a new user account

def create_new_account(database, first_name, last_name, password)
  db.execute("INSERT INTO users (email_address, first_name, last_name, password) VALUES (?, ?, ?, ?)", [email_address, first_name, last_name, password])
end

100.times do
  email_address = Faker::Name.first_name + "." + Faker::Name.last_name + "@gmail.com"
  create_new_account(database, email_address, Faker::Name.first_name, Faker::Name.last_name, Faker::Pokemon.name )
end