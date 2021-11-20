class DropUsersTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :auths
  end
end
