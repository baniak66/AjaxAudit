class Audit < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  belongs_to :user

  validates :name, :startDate, :endDate, :user_id, presence: true
end
