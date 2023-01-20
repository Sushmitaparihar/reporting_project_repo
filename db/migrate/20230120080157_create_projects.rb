class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.datetime :Project_start_date
      t.datetime :Estimated_completion_date

      t.timestamps
    end
  end
end
