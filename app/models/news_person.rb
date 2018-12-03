class NewsPerson < ApplicationRecord
  belongs_to :fake_news
  belongs_to :person
end
