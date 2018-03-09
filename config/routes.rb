Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  get "about/about" => "about#about"

  root 'welcome#index'
end