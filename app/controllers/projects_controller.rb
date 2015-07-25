class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
  end

  def new
    @project = Project.new
  end

  def create
    current_user.projects.create!(
      params.require(:project).permit(:name, :description, :contact, :url),
    )

    redirect_to :action => :index
  end

  def show
    @project = Project.find(params[:id])
  end
end
