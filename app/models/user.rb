class User < ApplicationRecord
    has_many :courses
    
     enum usertype: [:student, :faculty, :admin]
end
