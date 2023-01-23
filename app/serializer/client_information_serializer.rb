class ClientInformationSerializer <  ActiveModel::Serializer
  
    attributes *[
      :id,
      :full_name,
      :company,
      :url,
      :email,
      :phone_number
      
    ]
end