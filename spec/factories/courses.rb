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

FactoryBot.define do
  factory :course do
    name { 'Computer' }
    self_assignable { false }
    association :coach

    trait :with_activities do
      after(:create) do |course|
        course.activities << create(:activity)
      end
    end
  end
end
