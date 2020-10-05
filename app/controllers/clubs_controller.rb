class ClubsController < ApplicationController

  def index
    @club = Club.find(params[:id])
  end

  def new
    @clubs = Club.new
  end

  def create(club_params)
    @clubs = Club.save
  end

  private
  def club_params
    params.require(:club).permit(params[:teamName, :id]).marge(:user_id, user.id)
  end
end
