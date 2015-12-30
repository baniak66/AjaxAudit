class Audit < ActiveRecord::Base
  has_many :tasks
end
