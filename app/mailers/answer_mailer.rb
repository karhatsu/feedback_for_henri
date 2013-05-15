class AnswerMailer < ActionMailer::Base
  TO_EMAIL = ['com', '.', 'karhatsu', '@', 'henri'].reverse.join('')
  NOREPLY_ADDRESS = ['com', '.', 'karhatsu', '@', 'feedbackforhenri'].reverse.join('')
  
  def answered(answer)
    @answer = answer
    mail :to => TO_EMAIL, :from => NOREPLY_ADDRESS, :subject => "Palautetta Henrille"
  end
end