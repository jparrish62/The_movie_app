class Movie < ActiveRecord::Base
  def free?
    total_gross == 0
  end

  def self.upcoming
    where('created_at >= ?', 15.days.ago).order('created_at')

  end
end
