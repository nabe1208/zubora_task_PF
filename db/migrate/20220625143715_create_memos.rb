class CreateMemos < ActiveRecord::Migration[6.1]
  def change
    create_table :memos do |t|
      t.integer :user_id
      t.string :content, default: ""

      t.timestamps
    end
  end
end
