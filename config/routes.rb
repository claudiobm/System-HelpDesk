ActionController::Routing::Routes.draw do |map|
  
  map.namespace :admin do |admin|
    admin.resources :product_categories
    admin.resources :products
    admin.resources :orders_products
    admin.resources :order_categories
    admin.resources :order_types
    admin.resources :orders
    admin.resources :equipment
    admin.resources :technicals_equipments
    admin.resources :technocal_client_addresses
    admin.resources :technicals
    admin.resources :account_departments
    admin.resources :accounts
    admin.resources :client_addresses
    admin.resources :clients, :member => { :address_remote => :post }
  end
  
  map.root :controller => "main"

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  map.connect ':controller/:action/:id.:format'
end
