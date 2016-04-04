Rails.application.routes.draw do
  resources :documents do
    resources :comments
  end

  root to: 'documents#index'
end
