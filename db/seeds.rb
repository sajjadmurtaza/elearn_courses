# frozen_string_literal: true

%w[Sam Jhon Lukas Ben Muller].each do |coach_name|
  Coach.find_or_create_by(name: coach_name)
end

%w[Math English Computer Art Science].each do |course_name|
  Course.find_or_create_by(
    name: course_name,
    coach_id: Coach.all.sample.id
  )
end

%w[Exercise Assignment Project Chat Presentation].each do |activity|
  Activity.find_or_create_by(
    name: activity,
    course_id: Course.all.sample.id
  )
end

p '===== Seed Done. ====='
