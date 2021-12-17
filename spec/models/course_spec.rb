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

require 'rails_helper'

RSpec.describe Course, type: :model do
  let(:course) { create :course }

  before { course }

  it 'has a valid factory' do
    expect(course).to be_valid
  end

  it { is_expected.to be_a(Course) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:coach_id) }

  it { is_expected.to belong_to(:coach) }
  it { is_expected.to have_many(:activities) }
end
