class AlterReadingTimeInNews < ActiveRecord::Migration[6.1]
  def change
    change_column :news, :reading_time, :string
  end
end
