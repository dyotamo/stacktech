class BusinessToolsUser < ApplicationRecord
  belongs_to :business_tool
  belongs_to :user
end
