Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  get "/about" => "about#about"

  get "/contact" => "contact#index"

  root 'welcome#index'
end