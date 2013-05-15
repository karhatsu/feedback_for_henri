class Project < ActiveRecord::Base
  has_many :answers
  
  validates :key, :presence => true
  
  def to_param
    "#{id}-#{key}"
  end
end
