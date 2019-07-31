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

  def new
    @trip = Trip.new
    render json: @trip
  end

  def show
    @trip = Trip.find(params[:id])
    render json: @trip
  end

  def update
    trip = Trip.find(params[:id])
    trip.attributes = trip_params
    result = trip.save
    render trip_json(trip), status: result ? 200 : 422


    # @trip.update(trip_params)
    # @comments = Comment.all
    # @comment = Trip.comment.find(params[:id])
    # @comment = trip.comment
    render json: @trip
  end

  def create
    trip = Trip.new(trip_params)
    result = trip.save
    Trip.get_image
    render trip_json(trip), status: result ? 200 : 422
    # @trip = Trip.find_or_create_by(trip_params)
    # render json: @trip
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
  end

  private

  def trip_json(trip)
    {
      id: trip.id,
      name: trip.name,
      errors: trip.errors,
      comments: trip.comments.map do |task|
        {
          id: comment.id,
          title: comment.content,
          errors: comment.errors,
          _destroy: comment._destroy
        }
      end
    }
  end

  def trip_params
    params
    .require(:trip)
    .permit(:name, :water_type, :start_date, :end_date, :image, comments_attributes: [:content, :_destroy, :id])
  end

end


# def project_params
#   params
#   .require(:project)
#   .permit(:name, tasks_attributes: [:title, :_destroy, :id])
# end
#...


# def create
#   project = Project.new(project_params)
#   result = project.save
#   render project_json(project), status: result ? 200 : 422
# end
#
# def update
#   project = Project.find(params[:id])
#   project.attributes = project_params
#   result = project.save
#   render project_json(project), status: result ? 200 : 422
# end
