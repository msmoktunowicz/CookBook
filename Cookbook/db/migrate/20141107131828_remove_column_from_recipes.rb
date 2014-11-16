class RemoveColumnFromRecipes < ActiveRecord::Migration
  def change
  	remove_column :recipes, :data_dodania
  end

end
