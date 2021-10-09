class Question < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :title, presence: true, length: { minimum: 10 }
end
