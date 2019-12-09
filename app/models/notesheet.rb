class Notesheet < ApplicationRecord
    belongs_to :course
    belongs_to :user
    
    mount_uploader :notepic, NotepicUploader
    validates :content, presence: true, unless: ->(notesheet){notesheet.notepic.present?}
    validates :notepic, presence: true, unless: ->(notesheet){notesheet.content.present?}
    
    validates :course_id, presence: true
    validates :user_id, presence: true
    validates :date_created, presence: true
    validates :title, presence: true
end
