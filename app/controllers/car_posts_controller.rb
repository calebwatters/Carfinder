class CarPostsController < ApplicationController
    before_action :set_car, only: [:show, :edit, :update, :destroy]

    def index
        @car_posts = CarPost.search(params[:search])
    end

    def new
        if logged_in? != true
            flash.now[:danger] = "You must have a profile to create a new listing"
        end
        @car_post = CarPost.new
    end

    def create
        if logged_in?
        @car_post = current_user.car_posts.build(car_post_params)
        if @car_post.save
            redirect_to @car_post
        else
            flash.now[:danger] = "Please fill in all fields"
            render :new
        end
        else 
            redirect_to new_car_post_path
        end

    end

    def update
        @car_post.make_models.destroy_all
           if @car_post.update(car_post_params)
            redirect_to @car_post
        else
            render :edit
        end
    end

    def destroy
        byebug
        @car_post.destroy
        redirect_to car_posts_path
    end

    private

    def car_post_params
        params.require(:car_post).permit(:title, :content, :photo, :user_id, :search,  make_models_attributes: [:make_model, :color, :style, :mileage, :year])
    end

    def set_car
        @car_post = CarPost.find(params[:id])
    end
end
