class RemoveColumnDailyTakeKeep < ActiveRecord::Migration[6.1]
  def change
    remove_column :schedules, :daily_take_keep_id
    remove_column :schedules, :schedule_take_keep_id
  end
end
