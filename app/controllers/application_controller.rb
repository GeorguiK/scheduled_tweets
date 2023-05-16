class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        if session[:user_id]
            # @user = User.find(session[:user_id])
            # stops crashing if cant find
            Current.user = User.find_by(id: session[:user_id])
        end
    end

    def require_user_logged_in
        redirect_to login_path, alert: "You must be logged in" if Current.user.nil?
    end
end
