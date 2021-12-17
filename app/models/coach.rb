# == Schema Information
#
# Table name: coaches
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# frozen_string_literal: true

class Coach < ApplicationRecord
  validates :name, presence: true

  has_many :courses, dependent: :destroy
end
