# frozen_string_literal: true

FactoryBot.define do
  factory :time_log do
    comments "Arrived late due to doctor's appointment"
    week_day TimeLog.week_days.keys.sample
    purpose TimeLog.meal_times.keys.sample
    time_in Date.current
    time_out Date.current + 12.hours
    user
    organization
  end
end
