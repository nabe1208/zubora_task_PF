class AddColumnLists < ActiveRecord::Migration[6.1]
  # list追加カラム
  def change
    add_column :lists, :default_list_name, :integer, null: false, default: 0
  end
end
