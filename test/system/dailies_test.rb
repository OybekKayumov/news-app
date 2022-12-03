require "application_system_test_case"

class DailiesTest < ApplicationSystemTestCase
  setup do
    @daily = dailies(:one)
  end

  test "visiting the index" do
    visit dailies_url
    assert_selector "h1", text: "Dailies"
  end

  test "should create daily" do
    visit dailies_url
    click_on "New daily"

    fill_in "News", with: @daily.news_id
    click_on "Create Daily"

    assert_text "Daily was successfully created"
    click_on "Back"
  end

  test "should update Daily" do
    visit daily_url(@daily)
    click_on "Edit this daily", match: :first

    fill_in "News", with: @daily.news_id
    click_on "Update Daily"

    assert_text "Daily was successfully updated"
    click_on "Back"
  end

  test "should destroy Daily" do
    visit daily_url(@daily)
    click_on "Destroy this daily", match: :first

    assert_text "Daily was successfully destroyed"
  end
end
