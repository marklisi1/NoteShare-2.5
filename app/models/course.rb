class Course < ApplicationRecord
    has_many :notesheets
    has_many :users
end
