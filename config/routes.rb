Rails.application.routes.draw do
  post '/hosts/:id', to: 'hosts#update_score', as:'update_score'
  resources :teams
  resources :hosts
  resources :rounds_hosts
  resources :rounds
  resources :categories
  resources :clues
  get '/clues/:id/answer', to: 'clues#answer', as: 'answer_clue'
  get '/login', to: 'authorization#login', as: 'login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login', to: 'authorization#verify', as: 'verify'
end
