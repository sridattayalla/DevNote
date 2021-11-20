class CreateSometests < ActiveRecord::Migration[6.0]
  def change
    create_table :sometests do |t|
      t.string :commenter
      t.text :body

      t.timestamps
    end
  end
end
