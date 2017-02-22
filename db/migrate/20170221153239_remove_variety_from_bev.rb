class RemoveVarietyFromBev < ActiveRecord::Migration[5.0]
  def change
    remove_column :bevs, :variety, :string
  end
end
