class WorkoutController < ApplicationController
    def index
      @workouts = Workout.all
    end
    
    def new
      @workout = Workout.new
      3.times do
        question = @workout.questions.build
     end
    end

    def create
      @workout = Workout.create(params[:workout])
      if @workout.save
       redirect_to @workout
      else
      render :action => :new
     end
    end

    def show
      @workout = Workout.find(params[:id])
      @result = Result.new
    end
   end
