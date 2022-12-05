require "test_helper"

class NewsItemDailiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_item_daily = news_item_dailies(:one)
  end

  test "should get index" do
    get news_item_dailies_url
    assert_response :success
  end

  test "should get new" do
    get new_news_item_daily_url
    assert_response :success
  end

  test "should create news_item_daily" do
    assert_difference("NewsItemDaily.count") do
      post news_item_dailies_url, params: { news_item_daily: { daily_id: @news_item_daily.daily_id, news_item_id: @news_item_daily.news_item_id } }
    end

    assert_redirected_to news_item_daily_url(NewsItemDaily.last)
  end

  test "should show news_item_daily" do
    get news_item_daily_url(@news_item_daily)
    assert_response :success
  end

  test "should get edit" do
    get edit_news_item_daily_url(@news_item_daily)
    assert_response :success
  end

  test "should update news_item_daily" do
    patch news_item_daily_url(@news_item_daily), params: { news_item_daily: { daily_id: @news_item_daily.daily_id, news_item_id: @news_item_daily.news_item_id } }
    assert_redirected_to news_item_daily_url(@news_item_daily)
  end

  test "should destroy news_item_daily" do
    assert_difference("NewsItemDaily.count", -1) do
      delete news_item_daily_url(@news_item_daily)
    end

    assert_redirected_to news_item_dailies_url
  end
end
