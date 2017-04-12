# Method to create a list
def create_list(string_of_items)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string into separate items
  items_in_array = string_of_items.split(" ")
  # feed items into hash
  items_in_hash = {}
  # set default quantity, default quantity of one
  items_in_array.each { |item| items_in_hash[item] = 1 }  
  # print the list to the console [can you use one of your other methods here?]
  puts "Your grocery list has been created"
  p items_in_hash
# output: [what data type goes here: hash!]
end

# Method to add an item to a list
def add_item(list, item, quantity = 1)
# input: list, item name, and optional quantity
# steps: 
  # check for optional quantity. if not present, set to default (1)
  list[item] = quantity
  # update list with input
  puts "#{item.upcase} has been added to your grocery list!"
  p list
# output: complete list, updated
end

# Method to remove an item from the list
def remove_item(list, item)
# input: item to be removed, list
# steps: 
  # check if item exists
  # remove item
  list.delete(item)
  # print success message of item removed
  puts "#{item.upcase} has been removed to your grocery list!"
  p list
# output: updated list
end

# Method to update the quantity of an item
def update_quanity(list, item, quantity)
# input: list, item and quantity to be updated to
# steps:
  # check if item exists
  # update quantity
  list[item] = quantity
  # print success "your cart has been updated!"
  puts "The quantity for #{item.upcase} has been updated in your grocery list!"
  p list
# output: updated list with new quantity
end

# Method to print a list and make it look pretty
def print_list(list)
# input: completed list
# steps:
  # iterate over list and print formatted list
  puts "Your Grocery List"
  list.each do |item, quantity|
    puts "#{item}, qty: #{quantity}"
  end
  # format: each item with its own line
  # "item - quantity"
# output: implicit return of list
end

list = create_list("Onions")
list = add_item(list, "Lemonade", 2)
list = add_item(list, "Ice Cream", 4)
list = add_item(list, "Tomatoes", 3)
list = remove_item(list,"Lemonade")
list = update_quanity(list,"Ice Cream", 4)
print_list(list)
