class News < ApplicationRecord
  # belongs_to :user
  belongs_to :category

  has_many :comments, dependent: :destroy
end
