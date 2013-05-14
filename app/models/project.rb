class Project < ActiveRecord::Base
  has_many :answers
  
  validates :key, :presence => true
end
