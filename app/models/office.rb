class Office < ApplicationRecord
  belongs_to :power
  has_many :people
end
