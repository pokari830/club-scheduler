class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.where("schedules.date > ?", DateTime.now).order(:date).page(params[:page]).per(5)
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.create(schedule_params)
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  private
  def schedule_params
    params.require(:schedule).permit(:id, :title, :date, :details).merge(user_id: current_user.id)
  end
end
