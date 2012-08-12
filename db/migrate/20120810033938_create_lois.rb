class CreateLois < ActiveRecord::Migration
  def change
    create_table :lois do |t|
      t.integer :customer_id
      t.date :issued_date
      t.date :accepted_date

      t.timestamps
    end
  end
end
