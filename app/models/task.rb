class Task < ApplicationRecord
  belongs_to :user

  def self.done_yet_rate
    all_count = all.count
    done_count = where(status: "done").count
    done_rate = done_count / all_count.to_f
    yet_rate = 1 - done_rate
    return [done_rate, yet_rate].map { |rate| (rate * 100).round(2) }
  end
end
