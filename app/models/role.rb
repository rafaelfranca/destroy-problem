class Role <  ActiveRecord::Base
  has_and_belongs_to_many :powers, class_name: "Power"
  belongs_to :affiliation, class_name: "Affiliation"
end
