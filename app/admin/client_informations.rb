ActiveAdmin.register ClientInformation do
permit_params :full_name, :company, :url, :email, :phone_number
  
end
