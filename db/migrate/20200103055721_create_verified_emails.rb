class CreateVerifiedEmails < ActiveRecord::Migration[6.0]
  def change
    dir up

    create_table :verified_emails do |t|
      t.string :email

      t.timestamps
    end
  end
end
