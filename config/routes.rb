Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/', to:  'pages#home' # =>  syntax: 'controller_name_here#action_name_here'
end
