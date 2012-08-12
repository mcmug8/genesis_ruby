class ChangeDataTypeForLoiIssuedDate < ActiveRecord::Migration
  def up
    change_table :lois do |t|
       t.change :issued_date, :date
    end
  end

  def down
  end
end
