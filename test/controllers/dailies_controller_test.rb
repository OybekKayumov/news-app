require "test_helper"

class DailiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily = dailies(:one)
  end

  test "should get index" do
    get dailies_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_url
    assert_response :success
  end

  test "should create daily" do
    assert_difference("Daily.count") do
      post dailies_url, params: { daily: { news_id: @daily.news_id, user_id: @daily.user_id } }
    end

    assert_redirected_to daily_url(Daily.last)
  end

  test "should show daily" do
    get daily_url(@daily)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_url(@daily)
    assert_response :success
  end

  test "should update daily" do
    patch daily_url(@daily), params: { daily: { news_id: @daily.news_id, user_id: @daily.user_id } }
    assert_redirected_to daily_url(@daily)
  end

  test "should destroy daily" do
    assert_difference("Daily.count", -1) do
      delete daily_url(@daily)
    end

    assert_redirected_to dailies_url
  end
end
