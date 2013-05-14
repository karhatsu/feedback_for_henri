class Project < ActiveRecord::Base
  validates :key, :presence => true
end
