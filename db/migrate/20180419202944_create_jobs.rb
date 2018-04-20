class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.string :origin
      t.string :destination
      t.integer :cost
      t.integer :total_containers
      t.references :ship, foreign_key: true
      t.references :shipper, foreign_key: true

      t.timestamps
    end
  end
end
