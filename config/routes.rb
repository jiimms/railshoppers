Rails.application.routes.draw do
  	root 'users#Index'
	resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
