class AddManagerToLounge < ActiveRecord::Migration[5.0]
  def change
    add_column :lounges, :manager, :string
  end
end
