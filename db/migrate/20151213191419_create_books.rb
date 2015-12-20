class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_first_name
      t.string :author_last_name
      t.integer :page_count
      t.integer :rating
      t.string :genre

      t.timestamps null: true
    end
  end
end
