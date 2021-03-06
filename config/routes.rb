Rails.application.routes.draw do
   root 'storefront#all_items'
	
	devise_for :users
  resources :products

  get 'categorical' => 'storefront#items_by_category'
  get 'branding' => 'storefront#items_by_brand'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
