# file used to create various updates 

#load Faker and SQLite gems
require 'sqlite3'
require 'faker'

#create new instance of database
database = SQLite3::Database.new("thesocialnetwork.db")

# create method for creating a new update post

def create_new_update(database, user_id, text )
  db.execute("INSERT INTO updates (user_id, update_text, update_datetime) VALUES (?, ?, NOW())", [user_id, update_text])
end
# Select all the users from users database
users = db.execute("SELECT * FROM users")
users_size = users.length

# create 50 updates 
50.times do 
  # select to 
  user_id = users[Random.rand(users_size - 1)]['user_id']
  create_new_update(database, user_id, Faker::Twitter.status(include_user: false))
end
