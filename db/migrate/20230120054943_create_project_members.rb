class CreateProjectMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :project_members do |t|
      t.string :name
      t.string :email 
      t.bigint :project_id
       
      t.timestamps
    end
  end
end
