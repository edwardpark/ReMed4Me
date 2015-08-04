class Medication < ActiveRecord::Base
  belongs_to :user
  has_many :reminders
end
