Rails.application.routes.draw do
  # get 'cocktails/edit'
  # get 'cocktails/index'
  # get 'cocktails/new'
  # get 'cocktails/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
  resources :doses, shallow: true
end
  root to: "cocktails#index"
end
