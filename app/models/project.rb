class Project < ActiveRecord::Base
  has_many :answers
  
  validates :key, :presence => true
  
  def to_param
    "#{id}-#{key}"
  end
  
  def net_promoter_score
    return nil if answers.empty?
    negatives = 0
    neutrals = 0
    positives = 0
    answers.each do |answer|
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
