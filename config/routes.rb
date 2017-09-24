Rails.application.routes.draw do
  devise_for :users
  get 'static_page/home'
  root 'static_page#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
