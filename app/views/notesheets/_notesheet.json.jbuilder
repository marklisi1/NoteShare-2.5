json.extract! notesheet, :id, :content, :course_id, :author_id, :date_created, :created_at, :updated_at, :title, :notepic
json.url notesheet_url(notesheet, format: :json)
