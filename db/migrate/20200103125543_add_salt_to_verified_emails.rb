class AddSaltToVerifiedEmails < ActiveRecord::Migration[6.0]
  def change
    add_column :verified_emails, :salt, :string
    add_column :verified_emails, :verified, :boolean
  end
end
