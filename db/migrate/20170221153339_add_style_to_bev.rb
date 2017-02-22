class AddStyleToBev < ActiveRecord::Migration[5.0]
  def change
    add_column :bevs, :style, :string
  end
end
