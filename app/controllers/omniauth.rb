class OmniAuthController < ApplicationController
    def twitter
        render plain: 'hello'
        # user = User.from_omniauth(request.env["omniauth.auth"])
        # session[:user_id] = user.id
        # redirect_to root_path, notice: "Signed in"
    end
end