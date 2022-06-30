class CreateListCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :list_categories do |t|
      t.integer :list_id
      t.integer :tag_id
      t.string :category_name

      t.timestamps
    end
  end
end
