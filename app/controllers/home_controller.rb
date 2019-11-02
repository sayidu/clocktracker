class HomeController < ApplicationController
  def show
    @current_week_logs = TimeLog.where(user_id: current_user.id) if current_user.present?
    render 'show'
  end
end
