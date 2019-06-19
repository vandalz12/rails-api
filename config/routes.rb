Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'users', to: 'user#index'
  post 'users', to: 'user#addUser'
  get 'users/:user_id', to: 'user#findUser'
  
end
