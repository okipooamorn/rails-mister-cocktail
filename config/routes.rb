Rails.application.routes.draw do
  #get 'doses/new'
  # get 'cocktails/edit'
  # get 'cocktails/index'
  # get 'cocktails/new'
  # get 'cocktails/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html







  root to: 'cocktails#index'
  resources :cocktails, only: [:new, :create, :index, :show] do
    resources :doses, shallow: true, except: [:index, :edit, :update, :show] do
# ghghg?
  end
end
end

