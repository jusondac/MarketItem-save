class AddDateToScheduleTakeKeep < ActiveRecord::Migration[6.1]
  def change
    add_column :schedule_take_keeps, :date, :date
  end
end
