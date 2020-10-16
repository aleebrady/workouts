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
        @trainer = Trainer.find_by_id(params[:trainer_id])
        @review = @trainer.reviews.build
    end

    def create
        @trainer = Trainer.find_by_id(params[:trainer_id])
        @review = current_user.reviews.build(review_params)
        @review.trainer = @trainer
        if @review.save
            redirect_to trainer_path(@review.trainer)
        else
            render :new
        end
    end

    private 

    def review_params
        params.require(:review).permit(:content, :rating)
    end
end
