class AddDetailsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :shopname, :string
    add_column :posts, :view, :text
    add_column :posts, :image, :string
    add_column :posts, :content, :text
  end
end
