class StudioSession < ApplicationRecord
  belongs_to :studio
  has_many :user_sessions
  has_many :users, through: :user_sessions
end
