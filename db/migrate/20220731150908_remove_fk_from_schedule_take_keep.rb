class RemoveFkFromScheduleTakeKeep < ActiveRecord::Migration[6.1]
  def change
    remove_column :schedule_take_keeps, :daily_take_keep_id
  end
end
