class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :lounge, foreign_key: true
      t.references :bev, foreign_key: true
      t.integer :duration
      t.integer :quantity
      t.string :zone

      t.timestamps
    end
  end
end
