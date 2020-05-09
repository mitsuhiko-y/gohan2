class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :shopname, null: false
      t.text :view,       null: false
      t.text :content,    null: false
      t.string :image
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
