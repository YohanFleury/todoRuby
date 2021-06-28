class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to todos_path
            
        else
            message = "Email déjà utilisé"
            redirect_to new_user_path, notice: message
        end
    end

    def show
        @user = User.find(params[:id])
    end


    private 

    def user_params
        params.require(:user).permit(:email)
    end
end