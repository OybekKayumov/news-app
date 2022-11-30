class Category < ApplicationRecord
  has_many :news, dependent: :destroy

  validates :title, presence: true, uniqueness: true  
end
