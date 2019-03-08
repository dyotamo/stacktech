class Utility < ApplicationRecord
  has_many :users_utilities
  has_many :users, through: :users_utilities
  
  validates_presence_of :name
end
