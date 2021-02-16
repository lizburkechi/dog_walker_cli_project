class CreateWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :walks do |table_helper|
      table_helper.datetime(:walk_appt)
      table_helper.integer(:walker_id)
      table_helper.integer(:dog_id)
    end
  end
end
