class AddTypeToProjectMember < ActiveRecord::Migration[6.0]
  def change
    add_column :project_members, :type, :string
  end
end
