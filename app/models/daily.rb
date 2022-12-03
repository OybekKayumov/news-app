class Daily < ApplicationRecord  
  has_and_belongs_to_many :news, dependent: :destroy  

end
