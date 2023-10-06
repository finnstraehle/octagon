Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/about', to: 'pages#about', as: :about
  get '/team', to: 'pages#team', as: :team
  get '/faq', to: 'pages#faq', as: :faq
end
