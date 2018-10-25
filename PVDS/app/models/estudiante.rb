class Estudiante < ApplicationRecord
  belongs_to :puntos
  belongs_to :poblacion
end
