class TodoListsController < ApplicationController
	before_action :set_todo_list, :except => [:index,:new,:create]
	def new
		@todo_list = TodoList.new
	end

	def create
		@todo_list = TodoList.new(todo_list_params)
		if @todo_list.save
			redirect_to todo_lists_path
		else
			render 'new'
		end
	end

	def show
		
	end

	def index
		@todo_lists = TodoList.all
	end 

	def edit
	end 

	def update
		if @todo_list.update(todo_list_params)
			redirect_to todo_lists_path
		else
			render action: 'edit'
		end
	end

	def destroy
		@todo_list.destroy
		redirect_to root_path
	end 

	def search
	end
	
	private

	def set_todo_list
		@todo_list = TodoList.find(params[:id])
	end

	def todo_list_params
		params.require(:todo_list).permit!
	end

end
