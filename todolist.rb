class TodoList
  attr_reader :title, :items

  # Initialize todo list with a title and no items
  def initialize(list_title)
    @title = list_title
    @items = Array.new
  end

  # Create a new Item and add it to the array of Items
  def add_item(new_item)
    item = Item.new(new_item)
    @items.push(item)
  end
end

class Item
  attr_reader :description, :completed_status

  # Initialize item with a description and mark as not complete by default
  def initialize(item_description)
    @description = item_description
    @completed_status = false
  end
end
