class RenameAttributesFromInfo < ActiveRecord::Migration[6.0]
  def change
    rename_column :infos, :nickname, :encrypted_nickname
    rename_column :infos, :email, :encrypted_email
    rename_column :infos, :password, :encrypted_password
    rename_column :infos, :content, :encrypted_content
    add_column :infos, :encrypted_nickname_iv, :string
    add_column :infos, :encrypted_email_iv, :string
    add_column :infos, :encrypted_password_iv, :string
    add_column :infos, :encrypted_content_iv, :string
    add_index :infos, :encrypted_nickname_iv, unique: true
    add_index :infos, :encrypted_email_iv, unique: true
    add_index :infos, :encrypted_password_iv, unique: true
    add_index :infos, :encrypted_content_iv, unique: true
  end
end
