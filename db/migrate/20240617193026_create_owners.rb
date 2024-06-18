# typed: true
# frozen_string_literal: true

class CreateOwners < ActiveRecord::Migration[7.1]
  def change
    create_table :owners do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, index: { unique: true }, null: false

      t.timestamps
    end
  end
end
