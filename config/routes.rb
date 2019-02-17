Rails.application.routes.draw do

  get 'homes/index'
  get 'user_registration/index'
  get 'user_registration',to: 'user_registration#index'
  post 'user_registration/index'
  post 'user_registration', to: 'user_registration#index'

  get 'user/index'
  get 'user',to: 'user#index'
  post 'user/index'
  post 'user', to: 'user#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants do
    resources :menus
  end

  root 'homes#index'

end
