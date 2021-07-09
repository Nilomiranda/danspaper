class News < ApplicationRecord

  validates_presence_of :content, message: "You can't create a publication without any content"
  validates_presence_of :title, message: "Title is required"
end
