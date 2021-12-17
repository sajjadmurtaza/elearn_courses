# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::CoursesController, type: :controller do
  let(:course) { create :course, :with_activities }

  before { course }

  describe '#index' do
    subject(:index) { get :index }

    it 'returns 200' do
      expect(index).to have_http_status(:ok)
    end

    it 'contains data' do
      expect(JSON.parse(index.body)).to include('data')
    end
  end
end
