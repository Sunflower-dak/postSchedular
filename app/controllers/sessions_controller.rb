class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by_email(params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Welcome, champ! Schedule your next post!"
        else
            flash.now[:alert] = "Wrong email or password"
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "You logged out"
    end
end