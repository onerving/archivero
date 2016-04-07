Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/mensajes', to: 'documents#index'

  resources :documents do
    resources :comments
  end

end
