class RecipesController < ApplicationController
	before_action :set_recipe, only: [:edit, :update,:show,:destroy]
	before_action :authenticate_user!, except: :index
	
	def index
		if params[:tag]
			@recipes = Recipe.tagged_with(params[:tag])
		elsif params[:search]
			 @recipes = Recipe.search(params[:search])
		else
			@recipes = Recipe.all
		end
		#tak można budowac kolejne zapytania do bazy danych a potem i traktowac to jako zmienna
		@recipes = @recipes.paginate(:per_page => 2, :page => params[:page])
	end
	 
	
	def new
		@recipe = Recipe.new
	end
	 
	
	def create
		@recipe = Recipe.new(recipe_params)
			if @recipe.save
				redirect_to @recipe
			else
				render :new 
			end
	end

	def update
		if @recipe.update(recipe_params)
			redirect_to @recipe
		else
			render :edit
		end
	end

	def destroy
		@recipe.delete
		redirect_to root_path
	end

 
	
	private
	
	def set_recipe
		@recipe = Recipe.find(params[:id])
	end
	
	def recipe_params
		params.require(:recipe).permit(:name, :content, :date, :tag_list, :avatar)
	end	
end