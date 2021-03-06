Rails.application.routes.draw do
  resources :tareas, only: [:index, :show] do
    resources :completes, only: [:create, :destroy]
  end

  devise_for :users, controllers: {
  registrations: 'users/registrations'
  }

  root "tareas#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
