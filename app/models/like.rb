class Like < ApplicationRecord
  belongs_to :users
  belongs_to :publication

  validate :date_create, presence: true
  validate :publication_id, uniqueness: { scope: :user_id, message: 'Ya diste like a esta publicacion' }


end
