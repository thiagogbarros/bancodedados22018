require "application_system_test_case"

class FakeNewsTest < ApplicationSystemTestCase
  setup do
    @fake_news = fake_news(:one)
  end

  test "visiting the index" do
    visit fake_news_url
    assert_selector "h1", text: "Fake News"
  end

  test "creating a Fake news" do
    visit fake_news_url
    click_on "New Fake News"

    fill_in "Font", with: @fake_news.font_id
    fill_in "Population", with: @fake_news.population_id
    fill_in "Scale", with: @fake_news.scale_id
    fill_in "Title", with: @fake_news.title
    click_on "Create Fake news"

    assert_text "Fake news was successfully created"
    click_on "Back"
  end

  test "updating a Fake news" do
    visit fake_news_url
    click_on "Edit", match: :first

    fill_in "Font", with: @fake_news.font_id
    fill_in "Population", with: @fake_news.population_id
    fill_in "Scale", with: @fake_news.scale_id
    fill_in "Title", with: @fake_news.title
    click_on "Update Fake news"

    assert_text "Fake news was successfully updated"
    click_on "Back"
  end

  test "destroying a Fake news" do
    visit fake_news_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fake news was successfully destroyed"
  end
end
