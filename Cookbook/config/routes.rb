Rails.application.routes.draw do
  resources :acts_as_taggable_on_tags, path: :tags#, as: :tags

  devise_for :users
  root to: 'recipes#index'
  get '/new', to: 'recipes#new'
  #get '/recipes/tag/:tag', to: 'recipes#index' 
  # as: :tag 
	resources :recipes
	resources :devise 
  # resources :recipes do
  #  	collection do
  #  		get 'tag'
  # 	end
  # end

end
