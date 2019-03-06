class ProgrammingLanguagesUser < ApplicationRecord
  belongs_to :programming_language
  belongs_to :user
end
