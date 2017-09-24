Rails.application.routes.draw do
#  get 'sessions/new'

#  get 'sessions/create'

#  get 'sessions/destroy'

  resources :messages
  resources :users
  controller :messages do
    get 'messages' => :index
  end

  root 'messages#new', as: "home"

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
