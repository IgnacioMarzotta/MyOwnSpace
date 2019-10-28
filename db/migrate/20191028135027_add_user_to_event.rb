class AddUserToEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :user, foreign_key: true
    change_column :events, :user_id, :integer, null: false
  end
end
