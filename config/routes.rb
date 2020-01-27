Rails.application.routes.draw do
  namespace :user do
    get 'games/index'
  end
  devise_for :users
  root to: 'welcome#index'
end
