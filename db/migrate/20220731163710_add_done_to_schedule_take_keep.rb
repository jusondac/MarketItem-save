class AddDoneToScheduleTakeKeep < ActiveRecord::Migration[6.1]
  def change
    add_column :schedule_take_keeps, :done, :boolean
  end
end
