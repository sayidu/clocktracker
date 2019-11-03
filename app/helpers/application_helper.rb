module ApplicationHelper
  def humanize_week_day(week_day)
    TimeLog.week_days.key(week_day).capitalize
  end

  def humanize_purpose(purpose)
    TimeLog.meal_times.key(purpose).capitalize
  end
end
