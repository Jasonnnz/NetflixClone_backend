class CreateContentLists < ActiveRecord::Migration[6.0]
  def change
    create_table :content_lists do |t|
      t.integer :content_id
      t.integer :list_id

      t.timestamps
    end
  end
end
