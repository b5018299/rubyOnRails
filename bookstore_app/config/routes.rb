Rails.application.routes.draw do
  get 'static_pages/Home'
  root 'static_pages#Home'
  get 'static_pages/About'
  get 'static_pages/Contact'
  resources :books #controller
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
