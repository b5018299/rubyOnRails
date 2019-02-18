Rails.application.routes.draw do
  get 'novels/index'
  get 'novels/show'
  get 'novels/new'
  get 'novels/create'
  get 'novels/update'
  get 'novels/edit'
  get 'novels/destroy'
  get 'static_pages/Home'
  root 'static_pages#Home'
  get 'static_pages/About'
  get 'static_pages/Contact'
  resources :books #controller
  resources :genres
  resources :publishers

  resources :authors do
  	collection do
  		get :search
  	end
  end

  resources :novels do
  	collection do
  		get :search
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end