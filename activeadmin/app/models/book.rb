class Book < ActiveRecord::Base 
    validates :name, presence: true
    validates :author, presence: true
    validates :description, presence: true
end
