class WorkoutsController < ApplicationController

    def index
        if params[:workout_type]
            @workouts = Workout.search_by_time(params[:workout_type]).order_by_time
            @workouts = Workout.order_by_time if @workouts == []
        else
        @workouts = Workout.order_by_time
        end
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

    def update
        set_workout
        if @workout.update(workout_params)
            redirect_to workout_path(@workout)
        else
            render :edit
        end
    end

    def destroy
        set_workout
        @workout.destroy
        redirect_to workouts_path
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
