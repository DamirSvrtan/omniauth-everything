OmniauthEverything::Application.routes.draw do
  
  root "home#index"

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  delete 'signout', to: 'sessions#destroy', as: 'signout'

end
