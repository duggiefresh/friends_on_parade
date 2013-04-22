class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |f|
      f.integer :account_id
      f.integer :topic_id
      f.text :body
      f.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
