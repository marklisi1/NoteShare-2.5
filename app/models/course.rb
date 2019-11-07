class Course < ApplicationRecord
    has_many :notesheets
    has_many :users
    
    validates :name, presence: true
    validates :prof, presence: true
end
