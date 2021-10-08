class Event < ApplicationRecord
  belongs_to :user
  has_many :questions

  validates :name, presence: true
  validates :description, presence: true
  validates :date, presence: true

  after_initialize do
    self.date ||= DateTime.now.middle_of_day + 1.day
  end
end
