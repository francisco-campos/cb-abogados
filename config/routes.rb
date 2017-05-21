Rails.application.routes.draw do
  get 'contacts/message', to: 'contacts#message', as: 'contact_message'
  resources :contacts
  root 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
