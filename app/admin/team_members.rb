module AdminUsers
  class Load
    @@loaded_from_gem = false
    def self.is_loaded_from_gem
      @@loaded_from_gem
    end

    def self.loaded
    end
    @@loaded_from_gem = Load.method('loaded').source_location.first.include?('bx_block_')
  end
end

unless AdminUsers::Load.is_loaded_from_gem
  ActiveAdmin.register TeamMember, as: "teamMember" do
    menu priority: 1, :parent => "ProjectRole"
    
  #   permit_params :email, :password, :activated, :full_name

  #   index do
  #     selectable_column
  #     id_column
  #     column "Assessor Name" do |obj|
  #       obj.full_name
  #     end
  #     column :user_name
  #     column "Email_id", :email    
  #     column "Password", :new_password
  #     column :status
  #     actions name: "Action"

  #   end

  # # See permitted parameters documentation:
  # # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  # #
  # # Uncomment all parameters which should be permitted for assignment
  # #
  # # permit_params 
  # #
  # # or
  # #
  # # permit_params do
  # #   permitted = []
  # #   permitted << :other if params[:action] == 'create' && current_user.admin?
  # #   permitted
 end
  
end
