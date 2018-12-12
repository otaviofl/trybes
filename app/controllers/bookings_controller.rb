class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @experience = Experience.find(params[:experience_id])
    @user = current_user
  end

  def create
    @experience = Experience.find(params[:experience])
    @user = User.find(params[:user])
    @booking = Booking.new(user: @user,
                           experience: @experience
                           )
    if @booking.save!
      flash[:notice] = "Booking successfully created"
      redirect_to root_path
    else
      flash[:error] = @booking.errors.full_messages.first
      redirect_to @booking

    end

  end


  private

  def booking_params
      params.require(:booking).permit(:experience_id, :user_id)
  end
end
