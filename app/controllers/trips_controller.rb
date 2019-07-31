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
    @trip = Trip.find(params[:id])
    render json: @trip
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    @comments = Comment.all


    # @comment = Trip.comment.find(params[:id])
    # @comment = trip.comment
    render json: @trip
  end

  def create
    

    @trip = Trip.find_or_create_by(trip_params)
    Trip.get_image
    render json: @trip
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :water_type, :start_date, :end_date, :image)
  end

end
