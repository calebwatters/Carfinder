class CarPostsController < ApplicationController
    before_action :set_car, only: [:show, :edit, :update]

    def index
        @car_posts = CarPost.search(params[:search])
    end

    def new
        @car_post = CarPost.new
    end

    def create
        byebug
        @car_post = current_user.car_posts.build(car_post_params)
        if @car_post.save
            redirect_to @car_post
        else
            render :new
        end
    end

    def update
    end

    def destroy
    end

    private

    def car_post_params
        params.require(:car_post).permit(:title, :content, :photo, :user_id, :search,  make_models_attributes: [:make_model, :color, :style, :mileage, :year])
    end

    def set_car
        @car_post = CarPost.find(params[:id])
    end
end
