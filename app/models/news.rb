class News < ApplicationRecord
  after_validation :set_slug, only: [:create, :update]

  has_one_attached :thumbnail

  validates_presence_of :content, message: "You can't create a publication without any content"
  validates_presence_of :title, message: "Title is required"

  def to_param
    "#{id}-#{slug}"
  end

  private

  def set_slug
    self.slug = title.to_s.parameterize
  end
end
