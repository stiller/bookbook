class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :google_id
      t.string :authors
      t.string :title
      t.string :thumbnail_url

      t.timestamps
    end
  end
end
