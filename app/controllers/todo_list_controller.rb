class TodoListController < ApplicationController
  def index
	@todo = Todo.all
	@projects = Project.all
  end

  def update
  end

  def create
	Todo.create(text: params[:text], isCompleted: false, project_id: params[:project_id])
  end
end
