ActiveAdmin.register ProjectMember do

  permit_params :name, :email

    index do
      selectable_column
      id_column
      column "ProjectManager Name" do |obj|
        obj.name
      end
      column :name
      column :Email  
    
      actions name: "Action"

    end

    filter :name
    filter :email

    form do |f|
      inputs 'ProjectManager'do 
        f.input :name
        f.input :email
      end
      actions
    end

    show do |user|
      attributes_table do
        row :id      
        row :name
        row :email
        row :created_at
        row :updated_at
      end
    end
end
