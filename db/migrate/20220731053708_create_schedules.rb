class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.references :daily_take_keep, null: false, foreign_key: true
      t.references :schedule_take_keep, null: false, foreign_key: true

      t.timestamps
    end
  end
end
