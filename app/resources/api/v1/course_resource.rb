# frozen_string_literal: true

module Api
  module V1
    class CourseResource < JSONAPI::Resource
      filter :name

      attributes :name, :self_assignable

      has_one :coach
      has_many :activities
    end
  end
end
