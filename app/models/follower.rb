class Follower < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :user2, class_name: 'User', foreign_key: 'user2'

  validates :date_followers, presence: true
  validates :user2, presence: true 

  #validates :cannot_follower_self 

  #def cannot_follower_self
   # errors.add(:users2, 'No te puedes seguir a ti mismo') if users_id == users2
  #end

end
