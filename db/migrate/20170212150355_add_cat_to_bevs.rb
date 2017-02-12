class AddCatToBevs < ActiveRecord::Migration[5.0]
  def change
    add_column :bevs, :cat, :string
    add_column :bevs, :type, :string
  end
end
