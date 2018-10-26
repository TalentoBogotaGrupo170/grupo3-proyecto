class User < ApplicationRecord
  belongs_to :punto
  belongs_to :poblation
  belongs_to :curso
end
