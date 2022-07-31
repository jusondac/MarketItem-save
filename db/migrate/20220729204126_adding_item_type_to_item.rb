class AddingItemTypeToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :item_type_id, :integer
  end
end
