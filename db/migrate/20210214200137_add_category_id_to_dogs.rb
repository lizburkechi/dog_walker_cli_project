class AddCategoryIdToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :category_id, :integer
  end
end
