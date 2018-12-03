Rails.application.routes.draw do
  resources :populations
  resources :communications
  resources :parties
  resources :fonts
  resources :scales
  resources :powers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
