class User < ApplicationRecord
    has_many :notesheets
    has_many :users
    
     enum usertype: [:student, :faculty, :admin]
end
