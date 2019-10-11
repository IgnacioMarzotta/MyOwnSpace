class AddUserToInfo < ActiveRecord::Migration[6.0]
  def change
    add_reference :infos, :user, foreign_key: true
    change_column :infos, :user_id, :integer, null: false
  end
end
