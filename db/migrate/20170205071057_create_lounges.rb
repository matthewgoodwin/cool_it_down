class CreateLounges < ActiveRecord::Migration[5.0]
  def change
    create_table :lounges do |t|
      t.string :name
      t.string :cat
      t.string :desc
      t.string :address
      t.string :city
      t.integer :phone
      t.integer :branch
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
