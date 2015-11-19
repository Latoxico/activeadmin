ActiveAdmin.register Book do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
index do 
    column "Image" do |book|
        image_tag book.photo.url, width:100
    end
    column :name
    column :author 
    actions
end

show do
    attributes_table do
      row :name
      row :author
      row :description
      row :photo do
        image_tag book.photo.url, width:200
      end
      row :book_type_id do
        if  BookType.exists?(book.book_type_id)  #row :book_type_id do book.book_type.name rescue nil
            BookType.find(book.book_type_id).name
        end
      end
    end
    active_admin_comments
  end
   
 

filter :name


 permit_params :name ,:author ,:description,:photo, :book_type_id
 
    form do |f|
            f.inputs "Books" do 
                f.inputs :name 
                f.inputs :author
                f.inputs :description
                f.inputs :photo, :as => :file 
                #f.input :book_type_id, as: :select, collection: BookType.select(:name).uniq 
                f.input :book_type_id, :label => 'Tipo de Livro', :as => :select, :collection => BookType.all.map{|u| [u.name, u.id]}
    
            end
            f.actions
    end
end
