class AddSlugToNews < ActiveRecord::Migration[6.1]
  def change
    add_column :news, :slug, :string
  end
end
