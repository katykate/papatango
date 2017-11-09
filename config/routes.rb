Rails.application.routes.draw do
  get 'pages/index'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/services'

  get 'pages/portfolio'

  root 'pages#index'

  post 'simple_pages/thank_you'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
