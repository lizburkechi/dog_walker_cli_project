class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |table_helper|
      table_helper.string :name
    end
  end
end
