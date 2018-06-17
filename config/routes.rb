Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  resources :products do
    #/products/addfav
    collection do
     
    end
    #/products/:id/addfav
    member do
      get :add_to_fav
    end
  end
  resources :categories
  resources :countries
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
