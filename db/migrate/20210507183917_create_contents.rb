class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :genre
      t.string :type
      t.string :poster_img
      t.string :wideposter_img
      t.string :video
      t.integer :likes
      t.integer :dislikes
      t.boolean :favorited

      t.timestamps
    end
  end
end
