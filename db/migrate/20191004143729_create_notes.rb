class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.references :bodycolor, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :content
      t.boolean :selected, default: false
      t.boolean :recycled, default: false

      t.timestamps
    end
  end
end
