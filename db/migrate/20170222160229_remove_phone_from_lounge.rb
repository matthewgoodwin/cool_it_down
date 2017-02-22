class RemovePhoneFromLounge < ActiveRecord::Migration[5.0]
  def change
    remove_column :lounges, :phone, :integer
    add_column :lounges, :phone, :string
  end
end
