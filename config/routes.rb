Rails.application.routes.draw do
  resources :game_titles
  namespace :user do
    get 'games/index'
  end
  devise_for :users, skip: :sign_up
  root to: 'welcome#index'
end
