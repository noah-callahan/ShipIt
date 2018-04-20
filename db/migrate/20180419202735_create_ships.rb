class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :container_max
      t.integer :payload
      t.string :location
      t.references :shipper, foreign_key: true
      t.timestamps
    end
  end
end
