class Devop < ApplicationRecord
  has_many :devops_users
  has_many :users, through: :devops_users
  
  validates_presence_of :name
end
