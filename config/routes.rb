Rails.application.routes.draw do
  resources :shelters do
    resources :pets
  end
end
