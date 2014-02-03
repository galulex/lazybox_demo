class Task < ActiveRecord::Base
  validates :name, :description, :presence => true
  validates :name, :uniqueness => true
end
