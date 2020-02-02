Rails.application.routes.draw do
  namespace :user do
    get 'games/index'
  end
  devise_for :users, skip: :sign_up
  root to: 'welcome#index'
end
