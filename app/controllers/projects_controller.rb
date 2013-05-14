class ProjectsController < ApplicationController
  def show
    @project = Project.where(key: params[:id]).first
  end
end