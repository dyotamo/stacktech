class ProgrammingLanguage < ApplicationRecord
  has_many :programming_languages_users
  has_many :users, through: :programming_languages_users
  
  validates_presence_of :name
end
