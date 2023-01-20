class CreateProjectRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :project_roles do |t|

      t.timestamps
    end
  end
end
