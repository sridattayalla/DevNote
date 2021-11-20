class AddUseridToSnippets < ActiveRecord::Migration[6.0]
  def change
    add_column :snippets, :user_id, :integer
  end
end
