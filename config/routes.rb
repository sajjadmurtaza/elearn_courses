# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      jsonapi_resources :courses, only: %i[index create show]
    end
  end
end
