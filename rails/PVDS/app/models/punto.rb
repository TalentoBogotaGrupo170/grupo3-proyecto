class Punto < ApplicationRecord
    has_many :cursos
    has_many :users
end
