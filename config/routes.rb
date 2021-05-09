Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'welcome/index'

  delete '/logout' => 'application#destroy'
  get '/logout' => 'application#destroy'

  resources :articles do
    resources :comments
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
