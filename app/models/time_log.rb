# frozen_string_literal: true

class TimeLog < ApplicationRecord
  enum week_days: [:MONDAY, :TUESDAY, :WEDNESDAY, :THURSDAY, :FRIDAY].freeze
  enum meal_times: [
    :BREAKFAST,
    :LUNCH,
    :DINNER
  ].freeze

  belongs_to :user
  belongs_to :organization

  scope :recent_logs, -> { order(created_at: :desc) }

  validates_presence_of :week_day, :purpose, :time_in
end
