class Hashtag < ApplicationRecord

    has_many :publication_hashtag, dependent: :destroy
    has_many :publications, through: :publication_hashtag

    validates :name, presence: true, lenght: {maximun: 255}

end
