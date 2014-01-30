class Affiliation < ActiveRecord::Base
  self.primary_key = 'id'

  has_many :roles, class_name: "::Role", dependent: :destroy
end
