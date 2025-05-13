class PublicationHashtag < ApplicationRecord
  belongs_to :publication
  belongs_to :hashtag

  validates :publication_id, uniqueness: { scope: :hashtag_id, message: 'Ya esta asociado a este hashtag' }
end
