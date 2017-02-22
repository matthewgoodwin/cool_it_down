class AddCountryToBev < ActiveRecord::Migration[5.0]
  def change
    add_column :bevs, :country, :string
    add_column :bevs, :region, :string
  end
end
