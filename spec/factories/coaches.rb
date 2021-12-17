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

FactoryBot.define do
  factory :coach do
    name { 'Jhon' }
  end
end
