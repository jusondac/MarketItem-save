class ChangeDateOnSchedule < ActiveRecord::Migration[6.1]
  def change
    change_column :schedules, :date, :date
  end
end
