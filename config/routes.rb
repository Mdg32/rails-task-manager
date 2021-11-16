Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#tasks', as: :tasks
  get 'task/:id', to: 'tasks#show', as: :task
  get 'new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  get 'task/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'task/:id', to: 'tasks#update'
  delete 'task/:id', to: 'task#destroy'
end
