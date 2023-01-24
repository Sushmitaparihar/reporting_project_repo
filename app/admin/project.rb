ActiveAdmin.register Project do


 permit_params :name, :Project_start_date, :Estimated_completion_date, :status, :phase, :category

end
