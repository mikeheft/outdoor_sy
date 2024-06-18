# frozen_string_literal: true

class CreateVehicles < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_type
      t.string :name
      t.integer :length_in_inches
      t.belongs_to :owner, null: false, foreign_key: true

      t.timestamps
    end

    add_index :vehicles, [:name, :owner_id], unique: true
  end
end
