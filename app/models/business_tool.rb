class BusinessTool < ApplicationRecord
  has_many :business_tools_users
  has_many :users, through: :business_tools_users
  
  validates_presence_of :name
end
