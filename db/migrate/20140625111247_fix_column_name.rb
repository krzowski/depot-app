class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :orders, :Name, :name
  end
end
