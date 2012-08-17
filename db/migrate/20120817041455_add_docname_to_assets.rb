class AddDocnameToAssets < ActiveRecord::Migration
  def change
    add_column :assets, :docname, :string

  end
end
