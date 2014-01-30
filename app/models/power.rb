class Power < ActiveRecord::Base
  self.primary_key = 'id'

  before_create :assign_id

  has_and_belongs_to_many :roles, class_name: "Role"

  # Generates unique identifier based on passed information
  # @param mod [String] module name
  # @param resource [String] resource name
  # @param action [String] action name
  #
  # @return [String] unique identifier
  def self.identifier(mod, resource, action)
    "#{mod}_#{action}_#{resource.gsub('/', '_')}"
  end

  private

  # Assigns generated identifier before record is created
  # @see .identifier
  def assign_id
    self.id = self.class.identifier(self.module, resource, action)
  end
end
