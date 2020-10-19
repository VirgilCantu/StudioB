class Studio < ApplicationRecord

    has_many :equipments

    has_many :studio_sessions

    has_many :user_sessions, through: :studio_sessions
    
    has_many :users, through: :user_sessions
    
end