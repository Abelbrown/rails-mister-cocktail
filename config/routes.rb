Rails.application.routes.draw do
  get 'doses/create'

  get 'doses/new'

  get 'doses/destroy'

  get 'cocktails/index'

  get 'cocktails/create'

  get 'cocktails/new'

  get 'cocktails/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
