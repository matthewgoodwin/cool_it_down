class RemoveCountryFromBev < ActiveRecord::Migration[5.0]
  def change
    remove_column :bevs, :country, :string
    add_column :bevs, :nation, :string
  end
end
