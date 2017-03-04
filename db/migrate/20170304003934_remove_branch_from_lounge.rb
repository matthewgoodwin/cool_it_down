class RemoveBranchFromLounge < ActiveRecord::Migration[5.0]
  def change
    remove_column :lounges, :branch, :integer
    add_column :lounges, :branch, :string
  end
end
