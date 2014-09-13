Rails.application.routes.draw do
  root to: 'items#index'
  resources :items do
    member do
      post :complete
    end
  end
end