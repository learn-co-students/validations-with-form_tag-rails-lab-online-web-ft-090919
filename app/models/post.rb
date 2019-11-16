class Post < ActiveRecord::Base
    validates :title, presence: true #checking if there is a title 
    validates :content, length: { minimum: 100 } #checking if the content is >= 100 char 
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) } #checking the post category is fic or non fic
end
