require 'test_helper'

class FakeNewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fake_news = fake_news(:one)
  end

  test "should get index" do
    get fake_news_index_url
    assert_response :success
  end

  test "should get new" do
    get new_fake_news_url
    assert_response :success
  end

  test "should create fake_news" do
    assert_difference('FakeNews.count') do
      post fake_news_index_url, params: { fake_news: { font_id: @fake_news.font_id, population_id: @fake_news.population_id, scale_id: @fake_news.scale_id, title: @fake_news.title } }
    end

    assert_redirected_to fake_news_url(FakeNews.last)
  end

  test "should show fake_news" do
    get fake_news_url(@fake_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_fake_news_url(@fake_news)
    assert_response :success
  end

  test "should update fake_news" do
    patch fake_news_url(@fake_news), params: { fake_news: { font_id: @fake_news.font_id, population_id: @fake_news.population_id, scale_id: @fake_news.scale_id, title: @fake_news.title } }
    assert_redirected_to fake_news_url(@fake_news)
  end

  test "should destroy fake_news" do
    assert_difference('FakeNews.count', -1) do
      delete fake_news_url(@fake_news)
    end

    assert_redirected_to fake_news_index_url
  end
end
