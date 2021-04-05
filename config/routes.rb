Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  get 'books/user_data'
  resources :books do
    resources :reviews
  end
  resources :photos
  root 'books#index'
end
