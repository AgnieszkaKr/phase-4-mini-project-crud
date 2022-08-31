class CHangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :spices, :decsription, :description
  end
end
