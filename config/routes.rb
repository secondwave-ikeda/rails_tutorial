Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'users/update'
  get 'users/destroy'
  get 'users/create'
  post 'users/store'
end
