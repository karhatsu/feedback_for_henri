class ProjectsController < ApplicationController
  def show
    @project = Project.where(key: params[:id]).first
    @statuses = Status.all
  end
end