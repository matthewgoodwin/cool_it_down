class CreateBevs < ActiveRecord::Migration[5.0]
  def change
    create_table :bevs do |t|
      t.string :name
      t.string :desc
      t.decimal :cost, precision: 10, scale: 2
      t.references :lounge, foreign_key: true

      t.timestamps
    end
  end
end
