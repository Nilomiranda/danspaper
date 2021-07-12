class News < ApplicationRecord
  has_one_attached :thumbnail

  validates_presence_of :content, message: "You can't create a publication without any content"
  validates_presence_of :title, message: "Title is required"
end
