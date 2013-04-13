class CreateAccounts < ActiveRecord::Migration
  def up
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :hometown
      t.date   :birthday
      t.date   :join_date
      t.timestamps
    end
  end

  def down
    drop_table :accounts
  end
end
