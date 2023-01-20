class CreateSuperAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :super_admins do |t|

      t.timestamps
    end
  end
end
