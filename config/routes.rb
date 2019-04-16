Rails.application.routes.draw do
	namespace 'api' do
  		resources :orders
  		resources :batches
	end
end
