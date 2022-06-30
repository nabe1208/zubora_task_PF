class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.integer :category_id
      t.integer :user_id
      t.string :list_name

      t.timestamps
    end
  end
end
