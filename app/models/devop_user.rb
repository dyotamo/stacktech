class DevopUser < ApplicationRecord
  belongs_to :devop
  belongs_to :user
end
