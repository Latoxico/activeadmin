class Book < ActiveRecord::Base 
    validates :name, presence: true
    validates :author, presence: true
    validates :description, presence: true
    belongs_to :book_types
    
    has_attached_file :photo
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
