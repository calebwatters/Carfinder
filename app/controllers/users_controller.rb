class UsersController < ApplicationController

    before_action :user_actions, only: [:show, :edit, :update]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        @user.save

        redirect_to user_path(@user)
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :street_address, :city, :state, :zipcode)
    end

    def user_actions
        @user = User.find(params[:id])
    end
end
