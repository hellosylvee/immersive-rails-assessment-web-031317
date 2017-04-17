class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find_by(params[:id])
  end

  def create
    @guest = Guest.new(guest_params).save
    redirect_to guests_path
  end

  private
  def guest_params
    params.require(:guest).permit(:name, :occupation)
  end
end
