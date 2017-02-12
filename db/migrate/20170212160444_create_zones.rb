class CreateZones < ActiveRecord::Migration[5.0]
  def change
    create_table :zones do |t|
      t.string :stall
      t.string :seat
      t.references :lounge, foreign_key: true

      t.timestamps
    end
  end
end
