class ProgrammingLanguagesUser < ApplicationRecord
  belongs_to :programming_language
  belongs_to :user

  validates :programming_language, uniqueness: { scope: :user }
end
