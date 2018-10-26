class Curso < ApplicationRecord
  belongs_to :punto
  has_many :users
end
