class CreateItemVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :item_variants do |t|
      t.string :name

      t.timestamps
    end
  end
end
