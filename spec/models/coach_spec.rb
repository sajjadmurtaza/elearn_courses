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

require 'rails_helper'

RSpec.describe Coach, type: :model do
  let(:coach) { create :coach }

  before { coach }

  it 'has a valid factory' do
    expect(coach).to be_valid
  end

  it { is_expected.to be_a(Coach) }

  it { is_expected.to validate_presence_of(:name) }

  it { is_expected.to have_many(:courses) }
end
