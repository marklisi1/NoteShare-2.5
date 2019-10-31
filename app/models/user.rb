class User < ApplicationRecord
    has_many :notesheets
    has_many :courses
    
     enum usertype: [:student, :faculty, :admin]
end
