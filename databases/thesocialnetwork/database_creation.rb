# The Social Network
# File used to create the database for the social networking platform
# and the tables that populate it.

# require the gem to run sqlite
require 'sqlite3'

# create the database
database = SQLite3::Database.new("thesocialnetwork.db")

create_user_table = <<-SQL
  CREATE TABLE IF NOT EXISTS users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    email_address VARCHAR(255) UNIQUE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    password VARCHAR(255),
  )
SQL

db.execute(create_user_cmd)

create_updates_table = <<-SQL
  CREATE TABLE IF NOT EXISTS updates (
    update_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    update_text VARCHAR(255) NOT NULL,
    update_media VARCHAR(255),
    update_datetime DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
  )
SQL

db.execute(create_updates_cmd)