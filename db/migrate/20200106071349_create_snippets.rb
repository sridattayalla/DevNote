class CreateSnippets < ActiveRecord::Migration[6.0]
  def change
    create_table :snippets do |t|
      t.string :title
      t.text :desciption
      t.text :code

      t.timestamps
    end
  end
end
