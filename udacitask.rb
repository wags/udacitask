require_relative "todolist"

# Creates a new todo list
list = TodoList.new("Dream List")

# Add four new items
list.add_item("Update resume")
list.add_item("Get a new job")
list.add_item("Meet with architect")
list.add_item("Build new house")

# Print the list
list.print_list

# Delete the first item
list.delete_item 1

# Print the list
list.print_list

# Delete the second item
list.delete_item 2

# Print the list
list.print_list

# Update the completion status of the first item to complete
list.mark_item_complete 1

# Print the list
list.print_list

# Update the title of the list
list.rename("Current Goals")

# Print the list
list.print_list
