# encoding: UTF-8
class AnswersController < ApplicationController
  def index
  end
  
  def new
    @project = Project.find(params[:project_id])
    @statuses = Status.all
    @answer = @project.answers.new
  end
  
  def create
    @project = Project.find(params[:project_id])
    @answer = Answer.new(params.require(:answer).permit(:project_id, :status_id, :score, :comment))
    if @answer.save
      redirect_to project_answers_path
    else
      flash[:error] = 'Vastaathan vähintään kahteen ensimmäiseen kysymykseen.'
      @statuses = Status.all
      render :new
    end
  end
end