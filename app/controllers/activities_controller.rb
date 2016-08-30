class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def search
  end

  def results
    @opt1 = params[:opt1]
    @opt2 = params[:opt2]
    @opt3 = params[:opt3]

    
    # @activities = [your query based on the params goes here]
  end

  def show
    @activity = Activity.find params[:id]
  end
  def new
    @activity = Activity.new
  end

  def create
    activity = Activity.create( activity_params )
  end

  def edit
    @activity = Activity.find params[:id]
  end

  def update
    activity = Activity.find params[:id]
    activity.update( song_params )
  end

  def destroy
    activity = Activity.find params[:id]
    activity.destory
    # redirect_to "/songs"
  end

  private
    def activity_params
      params.require(:activity).permit(:name)
    end

end
