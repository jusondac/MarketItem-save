class CreateScheduleTakeKeeps < ActiveRecord::Migration[6.1]
  def change
    create_table :schedule_take_keeps do |t|
      t.references :daily_take_keep, null: false, foreign_key: true

      t.timestamps
    end
  end
end
