class Author < ActiveRecord::Base
    validates :name, presence: true #checking if there is a name 
    validates :email, uniqueness: true #checking if emails is uniq
    validates :phone_number, length: { is: 10 } #checking if the length is EXACTLY 10 num long
end
