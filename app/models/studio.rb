class Studio < ApplicationRecord

    has_many :equipments
    has_many :studio_sessions
    has_many :user_sessions, through: :studio_sessions
    has_many :users, through: :user_sessions

    validates :name, presence: true, uniqueness: true
    validates :location, presence: true
    validates :hourly_rate, presence: true
    validates :hourly_rate, numericality: { greater_than_or_equal_to: 100 }

end