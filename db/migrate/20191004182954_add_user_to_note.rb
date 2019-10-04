class AddUserToNote < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :user, foreign_key: true
    change_column :notes, :user_id, :integer, null: false
  end
end
