class CreateAccounts < ActiveRecord::Migration
  def up
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :state
      t.string :city
      t.date   :birthday
      t.timestamps
    end
  end

  def down
    drop_table :accounts
  end
end
