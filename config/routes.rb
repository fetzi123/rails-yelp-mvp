Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :create, :show] do # Parent segment
    # GET /restaurants/:restaurant_id/new
    resources :reviews, only: [:new, :create] # Child segment
  end
end
