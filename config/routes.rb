Rails.application.routes.draw do

  root "static_pages#home"

  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # get 'static_pages/contact'
  #root "hello#index"
  # get 'users/new'

  get  "/help",    to: "static_pages#help"
  get  "/about",   to: "static_pages#about"
  get  "/contact", to: "static_pages#contact"
  get "/signup",   to: "users#new"
end