# require gems
require "sinatra"
require "sinatra/reloader" if development?
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

# get '/students/:id' do
#   student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
#   student.to_s
# end

# A /contact route that displays an address (you can make up the address).

get '/contact' do
  response = ""
  response << "<h3>123 Main Street Ave.</h3>"
  response << "<h3>San Jose, Ca 95445</h3>"
  response
end
# A /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"

get '/greatjob' do
  if params[:name]
    "Good job, #{params[:name]}!"
  else
    "Good job!"
  end
end

# A route that uses route parameters to add two numbers and respond with the result. The data types are tricky here -- when will the data need to be (or arrive as) a string?
get '/add/:num1+:num2' do
  response = params[:num1].to_i + params[:num2].to_i
  "#{response}"
end

get '/students/:name' do
  name = params[:name]
  query = "SELECT * FROM students WHERE lower(name) LIKE \"#{name}%\" OR lower(name) LIKE \"%#{name}\" ORDER BY name"
  students = db.execute(query)
  response = ""
  if students.length > 0
    students.each do |student|
      response << "ID: #{student['id']}<br>"
      response << "Name: #{student['name']}<br>"
      response << "Age: #{student['age']}<br>"
      response << "Campus: #{student['campus']}<br><br>"
    end
  else 
    response = "No Results Found"
  end
  response
end