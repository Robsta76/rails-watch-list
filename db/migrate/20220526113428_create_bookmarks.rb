class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.string :movies
      t.string :list
      t.text :comment

      t.timestamps
    end
  end
end
