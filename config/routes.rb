Rails.application.routes.draw do
  #devise_for :admins, :controllers => {
  #  :sessions => 'admins/sessions',
  #}, only: [:sessions, :passwords]
  devise_for :admins, only: [:sessions, :passwords]
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
