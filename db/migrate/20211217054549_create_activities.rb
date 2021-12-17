# frozen_string_literal: true

class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :course_id

      t.timestamps
    end

    add_index :activities, %i[name course_id]
  end
end
