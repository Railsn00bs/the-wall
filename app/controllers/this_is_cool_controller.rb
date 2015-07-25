class ThisIsCoolController < ApplicationController
    before_action :authenticate_user!

    def create
        ThisIsCool.create!( project_id: params[:project_id], user: current_user)
        redirect_to :back
    end



end
