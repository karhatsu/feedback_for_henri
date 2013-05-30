# encoding: UTF-8
class AnswersController < ApplicationController
  def index
  end
  
  def new
    @project = Project.find(params[:project_id])
    @answer = @project.answers.new
  end
  
  def create
    @project = Project.find(params[:project_id])
    @answer = Answer.new(params.require(:answer).permit(:project_id, :role_id, :score, :comment))
    if @answer.save
      send_answer_email @answer
      redirect_to project_answers_path
    else
      flash[:error] = 'Vastaathan vähintään kahteen ensimmäiseen kysymykseen.'
      render :new
    end
  end
  
  private
  def send_answer_email(answer)
    begin
      AnswerMailer.answered(@answer).deliver
    rescue => e
      p "Failed to send answer email (#{@answer.inspect}): #{e}"
    end
  end
end