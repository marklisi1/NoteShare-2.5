class User < ApplicationRecord
  has_many :courses
  has_many :notesheets
  
  
  enum type: [:student, :faculty, :admin]
end
