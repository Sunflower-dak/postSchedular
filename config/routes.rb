Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

   get 'log_in', to: 'sessions#new'
   post 'log_in', to: 'sessions#create'

   get 'password', to: 'password#edit', as: :edit_password
   patch 'password', to: 'password#update'

   get 'password/reset', to: 'password_reset#new'
   post 'password/reset', to: 'password_reset#create'

   get 'password/reset/edit', to: 'password_reset#edit'
   patch 'password/reset/edit', to: 'password_reset#update'

   delete 'log_out', to: 'sessions#destroy'

    # get '/auth/twitter', to: 'omniauth#twitter'
    # get '/auth/failure', to: redirect('/')

    get 'about', to: 'about#index'
    root to: 'home#index'

end

