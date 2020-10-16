class ReviewsController < ApplicationController

    def index 
        @trainer = Trainer.find_by_id(params[:trainer_id])
        if @trainer 
            @reviews = @trainer.reviews
        else
            redirect_to trainers_path
        end
    end 

    def new
    end

    def create
    end
end
