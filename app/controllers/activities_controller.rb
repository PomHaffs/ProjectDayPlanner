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

    @filter = Activity.where(:group_size => Activity.group_sizes[@opt1], :budget => Activity.budgets[@opt2], :theme => Activity.themes[@opt3])

    @AMact = @filter.AM.sample
    @MDact = @filter.midday.sample
    @PMact = @filter.PM.sample



    # @AMact = Activity.where(:group_size => @opt1).shuffle.first
    # @MDact = Activity.where(:budget => @opt2).shuffle.first
    # @PMact = Activity.where(:theme => @opt3).shuffle.first
    # # @activities = [your query based on the params goes here]


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
