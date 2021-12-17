# == Schema Information
#
# Table name: courses
#
#  id              :integer          not null, primary key
#  name            :string
#  self_assignable :boolean
#  coach_id        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

# frozen_string_literal: true

class Course < ApplicationRecord
  validates :name, :coach_id, presence: true

  belongs_to :coach
  has_many :activities, dependent: :destroy
end
