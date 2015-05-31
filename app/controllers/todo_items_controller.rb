class TodoItemsController < ApplicationController
before_action :set_todo_list

def create
@todo_item = @todo_list.todo_items.create(todo_item_params)
if @todo_item.save
	redirect_to @todo_list
end
end

def destroy
	@todo_item = TodoItem.find(params[:id])
@todo_item.destroy
redirect_to @todo_list

end

private

def set_todo_list
	@todo_list = TodoList.find(params[:todo_list_id])
end

def todo_item_params
	params.require(:todo_item).permit!
end

end



