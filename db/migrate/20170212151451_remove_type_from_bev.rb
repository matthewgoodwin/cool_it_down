class RemoveTypeFromBev < ActiveRecord::Migration[5.0]
  def change
    remove_column :bevs, :type, :string
  end
end
