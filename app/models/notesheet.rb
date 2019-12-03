class Notesheet < ApplicationRecord
    belongs_to :course
    validates :content, presence: true
    validates :course_id, presence: true
    validates :author_id, presence: true
    validates :date_created, presence: true
    validates :title, presence: true
end
