class Admin::ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
  end
end