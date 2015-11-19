ActiveAdmin.register Book do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
index do 
    
end
    
 permit_params :name ,:author ,:description,:photo
 
    form do |f|
            f.inputs "Books" do 
                f.inputs :name 
                f.inputs :author
                f.inputs :description
                f.inputs :photo, :as => :file
            end
            f.actions
    end
end
