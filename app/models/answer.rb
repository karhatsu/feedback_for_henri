class Answer < ActiveRecord::Base
  belongs_to :project
  belongs_to :status
  
  validates :status, :presence => true
  validates :score, :presence => true
end
