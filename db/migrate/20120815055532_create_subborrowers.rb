class CreateSubborrowers < ActiveRecord::Migration
  def change
    create_table :subborrowers do |t|
      t.integer :customer_id
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
