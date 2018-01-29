Rails.application.routes.draw do
  root 'top#index'
  get 'top/complete'
  get '/about',to: 'about#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/delete', to: 'sessions#delete'

end
