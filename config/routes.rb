Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions:            'users/sessions', 
    registrations:       'users/registrations',
    passwords:           'users/passwords'
    
  }
  resources :users
  devise_scope :user do
    delete 'logout', to: 'users/sessions#destroy'
    get 'signup', to: 'users/registrations#new'
    get 'login', to: 'users/sessions#new'
  end
  get 'static_page/home'

  root 'static_page#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
