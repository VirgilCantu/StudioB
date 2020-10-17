class User < ApplicationRecord
  has_secure_password
  
  has_many :instruments
  has_many :user_genres
  has_many :genres, through: :user_genres
  has_many :user_roles
  has_many :roles, through: :user_roles
  has_many :user_sessions
  has_many :studio_sessions, through: :user_sessions
  has_many :studios, through: :studio_sessions
end
