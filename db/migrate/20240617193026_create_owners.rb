# frozen_string_literal: true

class CreateOwners < ActiveRecord::Migration[7.1]
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, index: { unique: true }

      t.timestamps
    end
  end
end
