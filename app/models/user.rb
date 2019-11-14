class User < ApplicationRecord
    has_many :courses
    
    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true
    validates :usertype, presence: true
     
end
