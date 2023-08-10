Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'pages/home'
  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"# this line is the same as the next line
  # get '/', to:  'pages#home' # =>  syntax: 'controller_name_here#action_name_here'
  post 'feedbacks', to: "feedbacks#create" 
end




# Format: in Terminal Comands to genrate new cotrollers

# rails generate controller <controller_name> <action1> <action2> ...

# Command:

# rails generate controller pages home

#Theory:  Although it's tempting to use generators as much as possible, it's critical you first understand the order of operations between the Client's "request" and the server's "response," specifically from the point at which the request lands on the server:

# Router (config/routes.rb file) tells server what to do with request
# Controller invokes a specific "action" (function) on the request
# View (the response template being rendered by the Controller)



# HTTP Methods: GET, POST, PUT/PATCH, Delete/Destory
# # HTTP has a header, body. Header might have things like autherization, browser footprint
# # Body might have paramaters  {utm_sourceL 'google', utm_campagins:'competieors_traffic'}-->