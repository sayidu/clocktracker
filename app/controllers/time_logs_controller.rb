# frozen_string_literal: true

class TimeLogsController < ApplicationController
  def new
    @time_log = TimeLog.new
  end

  def create
    @time_log = TimeLog.new(time_log_params)

    if @time_log.save
      redirect_to time_logs_path
    else
      render 'new'
      flash[:error] = 'Failed to save time log'
    end
  end

  def show
    @time_log = TimeLog.find(params[:id])
  end

  def edit
    @time_log = TimeLog.find(params[:id])
  end

  def update
    @time_log = TimeLog.find(params[:id])
    if @time_log.update(time_log_params)
      redirect_to time_logs_path
    end
  end

  def index
    @current_week_logs = TimeLog.where(user_id: current_user.id).recent_logs
  end

  private

  def time_log_params
    params.require(:time_log).permit(
      :week_day, :time_in, :time_out, :purpose, :comments,
      :user_id, :organization_id
    )
  end
end
