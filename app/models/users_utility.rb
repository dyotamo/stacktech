class UsersUtility < ApplicationRecord
  belongs_to :user
  belongs_to :utility

  validates :utility, uniqueness: { scope: :user }
end
