class Project < ActiveRecord::Base
  has_many :answers
  
  validates :key, :presence => true
  
  def to_param
    "#{id}-#{key}"
  end
  
  def net_promoter_score(role_id=nil)
    return calculate_nps(answers.where(:role_id => role_id)) if role_id
    calculate_nps(answers)
  end
  
  private
  def calculate_nps(selected_answers)
    return nil if selected_answers.empty?
    negatives = 0
    neutrals = 0
    positives = 0
    selected_answers.each do |answer|
      if answer.score >= 9
        positives = positives + 1
      elsif answer.score == 7 or answer.score == 8
        neutrals = neutrals + 1
      else
        negatives = negatives + 1
      end
    end
    100 * (-negatives + positives).to_f / (negatives + neutrals + positives)
  end
end
