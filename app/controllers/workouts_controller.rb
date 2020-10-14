class WorkoutsController < ApplicationController

    def index
        @workouts = Workout.all
    end

    def new
        @workout = Workout.new
    end

    def create
        @workout = Workout.new(workout_params)
        if @workout.save
            redirect_to workout_path(@workout)
        else
            render :new
        end
    end

    def show
        set_workout
    end

    def edit
        set_workout
    end

    private

    def set_workout
        @workout = Workout.find_by(id: params[:id])
        if !@workout
            redirect_to workouts_path
        end
    end

    def workout_params
        params.require(:workout).permit(:name, :workout_type, :time, :level)
    end


end
