class AddCustomeridToAppraisals < ActiveRecord::Migration
  def change
    add_column :appraisals, :customer_id, :integer

  end
end
