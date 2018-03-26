class TodoListController < ApplicationController
	def index
		@todo = Todo.all
		@projects = Project.all
		
		respond_to do |format|
		
			format.json  { render :json => {:todo => @todo, 
											:projects => @projects }}
		end
	end

	def update
		todo = Todo.find(params[:todo_id])
		todo.isCompleted = !todo.isCompleted
		todo.save
		redirect_to action: 'index'
	end

	def create
		Todo.create(text: params[:text], isCompleted: false, project_id: params[:project_id])
		redirect_to action: 'index'
	end
end
