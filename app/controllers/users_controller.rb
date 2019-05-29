class UsersController < ApplicationController

    before_action :user_actions, only: [:show, :edit, :update]

    def new
        @user = User.new
    end

    def create
        # byebug
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def user_actions
        @user = User.find(params[:id])
    end
end
