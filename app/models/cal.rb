class Cal < ActiveRecord::Base

  def self.total
    self.all.reduce(0) { |sum, i| sum + i.amount}
  end

  def self.day_total
      cals_today = self.select do |e|
        if e.cals_on == Date.today
          e.cals_on
        end
      end
      cals_today.reduce(0) {|sum, calories| sum + calories.amount}
  end
end
