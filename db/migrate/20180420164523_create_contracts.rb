class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.references :ship, foreign_key: true
      t.references :job, foreign_key: true
      t.string :priority

      t.timestamps
    end
  end
end
