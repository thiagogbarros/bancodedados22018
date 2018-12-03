class Communication < ApplicationRecord
  has_many :news_communications
  has_many :fake_news, through: :news_communications
end
