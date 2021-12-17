# frozen_string_literal: true

class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.boolean :self_assignable, default: false, null: false
      t.integer :coach_id

      t.timestamps
    end

    add_index :courses, %i[name coach_id]
  end
end
