class ProfilesController < ApplicationController
  def show
    @user = User.find_by(:github_username => params[:username])
  end
end;
