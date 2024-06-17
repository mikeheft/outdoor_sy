class CreateVehicles < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_type
      t.string :name
      t.integer :length_in_inches
      t.belongs_to :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
