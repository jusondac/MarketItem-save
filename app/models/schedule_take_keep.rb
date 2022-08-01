class ScheduleTakeKeep < ApplicationRecord
  scope :current_month, -> {
    where('EXTRACT(MONTH FROM date) =?', Date.current.month)
  }
end
