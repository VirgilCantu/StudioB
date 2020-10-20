class StudioSession < ApplicationRecord
  belongs_to :studio
  
  has_many :user_sessions
  has_many :users, through: :user_sessions

  validates :session_time, uniqueness: true
  validates :duration, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :studio_id, presence: true
  validates :users, presence: true

end
