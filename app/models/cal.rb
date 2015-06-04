class Cal < ActiveRecord::Base

  def self.total
    self.all.reduce(0) { |sum, i| sum + i.amount}
  end

end
