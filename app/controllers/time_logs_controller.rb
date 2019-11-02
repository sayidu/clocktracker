class TimeLogsController < ApplicationController
  def new
    time_log = TimeLog.new
  end

  def create
    time_log = TimeLog.create(time_log_params)
  end

  def show
    @time_log = TimeLog.find(params[:id])
    render 'show'
  end

  private 

  def time_log_params
    params.require(:time_log).permit()
  end
end
