ActiveAdmin.register Product do
    permit_params :name , :price , :category_id
    index do
        selectable_column
        id_column
        column :name
        column :price
        column :created_at
        actions
      end

      
end