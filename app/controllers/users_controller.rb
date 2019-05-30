class UsersController < ApplicationController

    before_action :user_actions, only: [:show, :edit, :update]
    before_action :logged_in_user, only: [:show, :edit, :update]

    def new
        @user = User.new
    end

    def create
        # byebug
        @user = User.new(user_params)
        if @user.save
            log_in @user
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def user_actions
        @user = User.find(params[:id])
    end

    def logged_in_user
        unless logged_in?
            flash[:danger] = "Please Log In!"
            redirect_to login_url
        end
    end
end
