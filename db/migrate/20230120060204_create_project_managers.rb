class CreateProjectManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :project_managers do |t|
       t.string :name
       t.string :email 

      t.timestamps
    end
  end
end
