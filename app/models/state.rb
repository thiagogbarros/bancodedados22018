class State < ApplicationRecord
  has_many :news_states
  has_many :fake_news, through: :news_states
end
