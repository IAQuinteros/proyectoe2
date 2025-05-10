class Comment < ApplicationRecord
  belongs_to :users
  belongs_to :publication

  validate :date_create, presence: true
  validate :content, presence:true, lenght: {maximun: 255}
  validate :actualization_date, presence: true


end
