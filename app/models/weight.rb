class Weight < ActiveRecord::Base
  validate :weighed_on, uniqueness: true
end
