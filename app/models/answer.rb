class Answer < ActiveRecord::Base
  belongs_to :project
  belongs_to :role
  
  validates :role_id, :presence => true
  validates :score, :presence => true
end
