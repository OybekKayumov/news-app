class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :news_items, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one_attached :image  
  
  roles = %w[admin editor author subscriber]
  roles.each do |role_name|
    define_method "#{role_name}?" do
      role == role_name
    end
  end

  validates :role, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }  
end
