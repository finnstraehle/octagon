Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about', to: 'pages#about', as: :about
  get '/team', to: 'pages#team', as: :team
  get '/faq', to: 'pages#faq', as: :faq
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  get '/join_team', to: 'pages#join_team', as: :join_team
end
