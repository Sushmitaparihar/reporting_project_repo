class ProjectSerializer <  ActiveModel::Serializer
  
    attributes *[
      :id,
      :name,
      :project_start_date
      :estimated_completion_date, 
      :status, 
      :phase, 
      :category
    ]
end