class RemoveThumbnailUrlColumnFromNewsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :news, :thumbnail_url
  end
end
