Rails.application.routes.draw do

  root 'pages#home'
  devise_for :user,
    :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  resources :rooms
  get "search" => "pages#search"
end
