class ProjectsController < ApplicationController
  def show
    @project = Project.where(key: params[:id]).first
    redirect_to new_project_answer_path(@project)
  end
end