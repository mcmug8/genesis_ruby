class CreateLoandetails < ActiveRecord::Migration
  def change
    create_table :loandetails do |t|
      t.integer :customer_id
      t.date :deposit_date
      t.date :docs_ordered_date
      t.date :funded_date
      t.string :broker
      t.string :commission

      t.timestamps
    end
  end
end
