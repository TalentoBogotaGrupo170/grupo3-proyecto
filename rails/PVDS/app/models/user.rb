class User < ApplicationRecord
  belongs_to :point
  belongs_to :course
  belongs_to :poblation
end
