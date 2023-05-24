class ProfilesController < ApplicationController
    def profile
    end

    def edit
    end

    def update
        if Current.user.update(profile_params)
            redirect_to profile_path, notice: "Profile updated"
        else
            render :edit
        end
    end

    private
    def profile_params
        params.require(:user).permit(:name, :dob, :about)
    end
end