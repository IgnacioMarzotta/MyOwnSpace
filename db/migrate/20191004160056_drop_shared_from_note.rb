class DropSharedFromNote < ActiveRecord::Migration[6.0]
  def change
    remove_column :notes, :shared_note_id
  end
end
