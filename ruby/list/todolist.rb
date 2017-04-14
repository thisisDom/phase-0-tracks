class TodoList
  attr_reader :get_items

  def initialize(to_do_list_array)
    @get_items = to_do_list_array
  end

  def add_item(item)
    @get_items << item
  end

  def delete_item(item)
    @get_items.delete(item)
  end

  def get_item(item_index)
    @get_items[item_index]
  end
end
