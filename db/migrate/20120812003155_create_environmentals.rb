class CreateEnvironmentals < ActiveRecord::Migration
  def change
    create_table :environmentals do |t|
      t.integer :customer_id
      t.date :ordered_date
      t.date :received_date

      t.timestamps
    end
  end
end
