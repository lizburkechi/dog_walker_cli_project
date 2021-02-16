class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |table_helper|
      table_helper.string(:dog_name)
      table_helper.string(:dog_address)
    end
  end
end
