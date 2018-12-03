class StaticPagesController < ApplicationController
  def home
    @fake_news = FakeNews.all
  end
end
