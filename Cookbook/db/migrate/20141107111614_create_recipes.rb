class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :content
      t.string :data_dodania
      t.string :date

      t.timestamps
    end
  end
end
