class CreateNews < ActiveRecord::Migration[6.1]
  def change
    create_table :news do |t|
      t.text :content
      t.references :user
      t.string :thumbnail_url
      t.integer :reading_time
      t.boolean :published

      t.timestamps
    end
  end
end
