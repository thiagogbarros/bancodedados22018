class Person < ApplicationRecord
  belongs_to :office
  belongs_to :party
  has_many :news_people
  has_many :fake_news, through: :news_people
end
