class FakeNews < ApplicationRecord
  belongs_to :font
  belongs_to :scale
  belongs_to :population
  has_many :news_people
  has_many :people, through: :news_people
  has_many :news_communications
  has_many :communications, through: :news_communications
end
