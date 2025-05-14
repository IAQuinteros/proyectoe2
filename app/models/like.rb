class Like < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :publication

  validates :date_create, presence: true
  validates :publication_id, uniqueness: { scope: :user_id, message: 'Ya diste like a esta publicacion' }


end
