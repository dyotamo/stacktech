class User < ApplicationRecord
  devise                  :database_authenticatable,
                          :registerable,
                          :recoverable,
                          :rememberable,
                          :validatable
  
  before_save             :set_slug

  validates_presence_of   :name

  has_and_belongs_to_many :programming_languages
  has_and_belongs_to_many :utilities
  has_and_belongs_to_many :business_tools
  has_and_belongs_to_many :devops

  private
    def set_slug
      self.slug = self.name.parameterize
    end
end
