class CreateTopics < ActiveRecord::Migration
  def up
    create_table :topics do |f|
      f.integer :account_id
      f.string :title
      f.text   :body
      f.timestamps
    end
  end

  def down
    drop_table :topics
  end
end
