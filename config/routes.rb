Rails.application.routes.draw do
  resources :custom_fields
  devise_for :users

  root to: 'welcome#index'
 	resources :contacts

end
