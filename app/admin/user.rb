ActiveAdmin.register User do
  
    index do
        selectable_column
        id_column
        column :email 
        column :created_at
        actions
      end

      filter :email 
      filter :created_at
      show do |user|
        attributes_table do
        row :email
      
        end
      end
end