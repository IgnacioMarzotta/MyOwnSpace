class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.references :bodycolor, null: false, foreign_key: true
      t.string :servicename
      t.string :nickname
      t.string :email
      t.string :password
      t.string :content

      t.timestamps
    end
  end
end
