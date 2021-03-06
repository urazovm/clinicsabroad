ActiveAdmin.register Shop do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  index do
    column :name
    column :description
    default_actions
  end

  show do |shop|
    attributes_table do 
      row :name
      row :description
      row :user
      row :payment_methods
    end

    panel "Staffs" do 
      table_for(shop.staffs) do 
        column :name
      end
    end

    

  end
  
  
end
