class Publication < ApplicationRecord
  belongs_to :users, class_name: "User"


  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :data_create, presence: true
  validates :description, presence: true, length: { maximum: 255}
  validates :publication_image, presence: true, length: { maximum: 255}


end
