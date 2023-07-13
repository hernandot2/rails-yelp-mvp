# Rails.application.routes.draw do
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   # root "articles#index"
#   resources :restaurants
# end

# index
# create
# new
# edit
# show
# update
# destroy
Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:create]
  end
end
