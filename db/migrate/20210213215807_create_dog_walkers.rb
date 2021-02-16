class CreateDogWalkers < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_walkers do |table_helper|
      table_helper.string(:walker_name)
    end
  end
end
