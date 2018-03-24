Rails.application.routes.draw do
  get '/' => 'todo_list#index'

  get 'todo_list/update' => 'todo_list#update'

  post 'todo_list/create' => 'todo_list#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
