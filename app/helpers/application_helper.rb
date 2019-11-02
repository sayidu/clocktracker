module ApplicationHelper
  def humanize(week_day)
    TimeLog.constants.find { |k| TimeLog.const_get(k) == week_day }.to_s.capitalize
  end

  def humanize(check_in_purpose)
    TimeLog.constants.find { |k| TimeLog.const_get(k) == check_in_purpose }.to_s.capitalize
  end 
end
