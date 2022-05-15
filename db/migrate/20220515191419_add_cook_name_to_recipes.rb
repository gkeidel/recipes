class AddCookNameToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :cook_name, :string
  end
end
