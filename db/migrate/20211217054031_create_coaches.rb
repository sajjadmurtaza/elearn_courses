# frozen_string_literal: true

class CreateCoaches < ActiveRecord::Migration[7.0]
  def change
    create_table :coaches do |t|
      t.string :name

      t.timestamps
    end

    add_index :coaches, :name
  end
end
