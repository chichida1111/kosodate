Rails.application.routes.draw do

  # get 'parent_users/show'
  # get 'cards/new'
  # get 'services/new'
  # get 'teacher_messages/create'
  # get 'parent_messages/create'
  get 'contacts', to: 'contacts#index'
  post '/contacts/:id', to: 'parent_messages#create'

  root to: "contacts#index"
  
  devise_for :parent_users, controllers: {
    sessions: 'parent_users/sessions',
    registrations: 'parent_users/registrations'
  }

  devise_for :teacher_users, controllers: {
    sessions: 'teacher_users/sessions',
    registrations: 'teacher_users/registrations'
  }

  resources :contacts do
    resources :parent_messages, only: :create
  end

  resources :contacts do
    resources :teacher_messages, only: :create
  end

  # resources :parent_messages, only: :show

  # resources :teacher_messages, only: :show


  resources :contacts do
    resources :services, only: [:index, :new, :create ]
  end

  resources :parent_users, :only => [:show, :update]

  resources :cards, only: [:new, :create]

  resources :services, only: :order do
    post 'order', on: :member
  end

end
