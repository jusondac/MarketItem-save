class AddDateToSchedule < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :date, :datetime
  end
end
