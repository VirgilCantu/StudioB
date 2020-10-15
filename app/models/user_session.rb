class UserSession < ApplicationRecord
  belongs_to :user
  belongs_to :studio_session
end
