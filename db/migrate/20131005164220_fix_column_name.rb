class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :reports, :type, :item_type
  end
end
