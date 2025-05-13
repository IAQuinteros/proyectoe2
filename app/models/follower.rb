class Follower < ApplicationRecord
  belongs_to :users, class_name: "User"

  validates :date_followers, presence: true
  validates :users2, presence: true 

 # validates :cannot_follower_self 

  #def cannot_follower_self
   # errors.add(:users2, 'No te puedes seguir a ti mismo') if users_id == users2
  #end

end
