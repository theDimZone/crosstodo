class TodoListController < ApplicationController
	def index
		@todo = Todo.all
		@projects = Project.all
		
		respond_to do |format|
		
			format.html # index.html.erb 
			format.json  { render :json => {:todo => @todo, 
											:projects => @projects }}
		end
	end

	def update
		status = true
		if Todo.find(params[:todo_id]).isCompleted == true then
			status = false
		end
		Todo.update(params[:todo_id], :isCompleted => status)
		redirect_to action: 'index'
	end

	def create
		Todo.create(text: params[:text], isCompleted: false, project_id: params[:project_id])
		redirect_to action: 'index'
	end
end
