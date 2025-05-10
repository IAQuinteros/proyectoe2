class Publication < ApplicationRecord
  belongs_to :users

  has_many :publication_image, dependent: :destroy
  has_many :description, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :date_create, presence: true
  validates :description, presence: true, lenght: {maximun: 255}
  validates :publication_image, presence: true, lenght: {maximun: 255}


end
