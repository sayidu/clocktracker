# frozen_string_literal: true

class TimeLog < ApplicationRecord
  WEEK_DAYS = [
    MONDAY = 1,
    TUESDAY = 2,
    WEDNESDAY = 3,
    THURSDAY = 4,
    FRIDAY = 5
  ].freeze

  MEAL_TIMES = [
    BREAKFAST = 1,
    LUNCH = 2,
    DINNER = 3
 ].freeze


  belongs_to :user
  belongs_to :organization
end
