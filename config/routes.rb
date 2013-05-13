BetterAuth::Application.routes.draw do
  resources :registrations, only: [:new, :create]

  root to: 'registrations#new'
end
