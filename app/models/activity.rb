# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  name       :string
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# frozen_string_literal: true

class Activity < ApplicationRecord
  validates :name, :course_id, presence: true

  belongs_to :course
end
