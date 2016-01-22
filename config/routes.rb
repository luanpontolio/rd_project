Rails.application.routes.draw do
  resources :contact_types
  devise_for :users

  root to: 'welcome#index'
 	resources :contacts

end
