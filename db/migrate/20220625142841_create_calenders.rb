class CreateCalenders < ActiveRecord::Migration[6.1]
  def change
    create_table :calenders do |t|
      t.integer :list_id
      t.integer :tag_id
      t.datetime :event_date
      t.string :event, default: ""

      t.timestamps
    end
  end
end
