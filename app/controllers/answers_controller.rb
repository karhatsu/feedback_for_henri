class AnswersController < ApplicationController
  def index
  end
  
  def create
    @answer = Answer.new(params.require(:answer).permit(:project_id, :status_id, :score, :comment))
    if @answer.save
      redirect_to answers_path
    else
      @statuses = Status.all
      render 'projects/show'
    end
  end
end