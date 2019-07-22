class TripsController < ApplicationController


  # def index
  #   if logged_in?
  #     @trips = current_user.trips
  #     render json: @trips
  #   else
  #   @trips = Trip.all
  #   render json: @trips
  #   end
  # end

  def index
    @trips = Trip.all
    render json: @trips
  end

  def show
    @trip = Trip.find_by(params[:id])
    render json: @trip
  end

  def create
    @trip = Trip.find_or_create_by(trip_params)
    render json: @trip
  end

  def destroy
    @trip.destroy
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :water_type, :start_date, :end_date)
  end

end
