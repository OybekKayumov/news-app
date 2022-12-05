require "application_system_test_case"

class NewsItemDailiesTest < ApplicationSystemTestCase
  setup do
    @news_item_daily = news_item_dailies(:one)
  end

  test "visiting the index" do
    visit news_item_dailies_url
    assert_selector "h1", text: "News item dailies"
  end

  test "should create news item daily" do
    visit news_item_dailies_url
    click_on "New news item daily"

    fill_in "Daily", with: @news_item_daily.daily_id
    fill_in "News item", with: @news_item_daily.news_item_id
    click_on "Create News item daily"

    assert_text "News item daily was successfully created"
    click_on "Back"
  end

  test "should update News item daily" do
    visit news_item_daily_url(@news_item_daily)
    click_on "Edit this news item daily", match: :first

    fill_in "Daily", with: @news_item_daily.daily_id
    fill_in "News item", with: @news_item_daily.news_item_id
    click_on "Update News item daily"

    assert_text "News item daily was successfully updated"
    click_on "Back"
  end

  test "should destroy News item daily" do
    visit news_item_daily_url(@news_item_daily)
    click_on "Destroy this news item daily", match: :first

    assert_text "News item daily was successfully destroyed"
  end
end
