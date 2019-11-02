class HomeController < ApplicationController
  def show
    @user_time_logs = TimeLog.where(user_id: current_user.id)
    render 'show'
  end
end
