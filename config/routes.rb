Rails.application.routes.draw do

  get 'user_registration/index'
  get 'user_registration',to: 'user_registration#index'
  post 'user_registration/index'
  post 'user_registration', to: 'user_registration#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants do
    resources :menus
  end

end
