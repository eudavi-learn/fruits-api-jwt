Rails.application.routes.draw do
	namespace :api, defaults: { format: JSON } do
		resources :users, only: [:create, :show]
	end
  
	post 'authenticate', to: 'authentication#authenticate'
end
