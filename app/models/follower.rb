class Follower < ApplicationRecord
  belongs_to :users

  validate :date_followers, presence: true
  validate :users2, presence: true 

  validate :cannot_follower_self 

  def cannot_follower_self
    errors.add(:users2, 'No te puedes seguir a ti mismo') if users_id == users2

end
