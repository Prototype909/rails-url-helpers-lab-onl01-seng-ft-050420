Rails.application.routes.draw do
  resources :students, only: [:index, :show] do
    member do
      get 'activate'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
