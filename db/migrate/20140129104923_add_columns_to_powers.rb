class AddColumnsToPowers < ActiveRecord::Migration
  def change
    add_column :powers, :module, :string
    add_column :powers, :resource, :string
    add_column :powers, :action, :string
    add_column :powers, :comment, :text
  end
end
