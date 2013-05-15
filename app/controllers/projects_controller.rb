class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    redirect_to new_project_answer_path(@project)
  end
end