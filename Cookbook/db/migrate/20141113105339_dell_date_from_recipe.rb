class DellDateFromRecipe < ActiveRecord::Migration
  def change
  	remove_column :recipes, :date
  end
end
