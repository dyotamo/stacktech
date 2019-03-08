class User < ApplicationRecord
  devise                  :database_authenticatable,
                          :registerable,
                          :recoverable,
                          :rememberable,
                          :validatable
  
  before_save             :set_slug

  validates_presence_of   :name
  validates_uniqueness_of :name

  has_many :programming_languages_users
  has_many :programming_languages, through: :programming_languages_users
  
  has_many :users_utilities
  has_many :utilities,             through: :users_utilities
  
  has_many :business_tools_users
  has_many :business_tools,        through: :business_tools_users
  
  has_many :devops_users
  has_many :devops,                through: :devops_users

  private
    def set_slug
      self.slug = self.name.parameterize
    end
end
