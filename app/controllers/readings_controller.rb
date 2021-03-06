class ReadingsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @reading = Reading.all
  end

  def create
    reading = Reading.new(readings_params)
    if reading.save
      flash[:notice] = "Book create successfully"
      redirect_to :back
    end
  end

  private
  def readings_params
    params.require(:reading).permit(:author, :content, :theme)
  end
end
