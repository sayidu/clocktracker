# frozen_string_literal: true

class TimeLogsController < ApplicationController
  def new
    @time_log = TimeLog.new
  end

  def create
    time_log = TimeLog.new(time_log_params)
    if time_log.save
      redirect_to time_log_path(time_log.id)
    else
      render 'new'
    end
  end

  def show
    @time_log = TimeLog.find(params[:id])
    render 'show'
  end

  private

  def time_log_params
    params.require(:time_log).permit
  end
end
