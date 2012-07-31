class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :borrower
      t.string :address_b
      t.string :city_b
      t.string :state_b
      t.string :zipcode_b
      t.string :businessname
      t.string :businesstype
      t.string :ownership
      t.string :loanamount
      t.string :ltv
      t.string :transactiontype
      t.string :address_g
      t.string :city_g
      t.string :state_g
      t.string :zipcode_g

      t.timestamps
    end
  end
end
