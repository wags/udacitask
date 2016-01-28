class TodoList
  attr_accessor :title, :items

  # Initialize todo list with a title and no Items
  def initialize(list_title)
    @title = list_title
    @items = Array.new
  end

  # Create a new Item and add it to the array of Items
  def add_item(new_item)
    item = Item.new(new_item)
    items.push(item)
  end

  def mark_item_complete(item_number)
    items[item_number - 1].mark_complete
  end

  def rename(new_title)
    @title = new_title
  end

  def delete_item_at_index(index)
    items.delete_at(index)
  end

  def delete_item(item_number)
    delete_item_at_index(item_number - 1)
  end

  def print_title
    puts "-" * title.length
    puts title
    puts "-" * title.length
  end

  def print_items
    items.each_with_index { |item, index| puts "#{item.checkbox} #{index + 1} - #{item.description}" }
  end

  def print_list
    print_title
    print_items
  end
end

class Item
  attr_reader :description, :completed

  # Initialize Item with a description and mark as not complete by default
  def initialize(item_description)
    @description = item_description
    @completed = false
  end

  def complete?
    completed
  end

  def toggle_status
    @completed = !@completed
  end

  def mark_complete
    toggle_status if !complete?
  end

  def checkbox
    complete? ? "[x]" : "[ ]"
  end
end
