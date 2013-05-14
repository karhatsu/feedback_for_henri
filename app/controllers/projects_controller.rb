class ProjectsController < ApplicationController
  def show
    @project = Project.where(key: params[:id]).first
    @statuses = Status.all
    @answer = @project.answers.new
  end
end