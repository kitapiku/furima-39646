class AddAncestryToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :ancestry, :string
    add_index :items, :ancestry
  end
end
