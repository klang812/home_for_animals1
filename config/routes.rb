Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :shelters do
        resources :pets
      end
    end
  end
end
