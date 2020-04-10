class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :shopname,          null: false, default: ""
      t.string :view,              null: false, default: ""
      t.string :content,           null: false, default: ""
      t.string :image
      t.timestamps
    end

    add_index :shopname

  end
end
