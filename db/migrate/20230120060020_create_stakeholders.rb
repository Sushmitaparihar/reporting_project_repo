class CreateStakeholders < ActiveRecord::Migration[6.0]
  def change
    create_table :stakeholders do |t|

      t.timestamps
    end
  end
end
