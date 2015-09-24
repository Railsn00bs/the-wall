class CommentsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :load_project

  def create
    @project.comments.create!(comment_params.merge({user: current_user}))

    redirect_to :root
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def load_project
    @project = Project.find(params[:project_id])
  end
end
