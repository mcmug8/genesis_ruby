class CreateAppraisals < ActiveRecord::Migration
  def change
    create_table :appraisals do |t|
      t.date :ordered_date
      t.date :received_date

      t.timestamps
    end
  end
end
