Rails.application.routes.draw do
  root to: "home#index"
  
  resources :question_themes do
    resources :questions, except: :create
  end
  resources :questions, only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
