class AddVarietyToBevs < ActiveRecord::Migration[5.0]
  def change
    add_column :bevs, :variety, :string
  end
end
