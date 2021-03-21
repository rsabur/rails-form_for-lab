Rails.application.routes.draw do
  resources :school_classes, :students, only: [:new, :index, :show, :edit, :create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
