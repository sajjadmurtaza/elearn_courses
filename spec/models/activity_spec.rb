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

require 'rails_helper'

RSpec.describe Activity, type: :model do
  let(:activity) { create :activity }

  before { activity }

  it 'has a valid factory' do
    expect(activity).to be_valid
  end

  it { is_expected.to be_a(Activity) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:course_id) }

  it { is_expected.to belong_to(:course) }
end
