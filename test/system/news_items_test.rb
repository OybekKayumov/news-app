require "application_system_test_case"

class NewsItemsTest < ApplicationSystemTestCase
  setup do
    @news_item = news_items(:one)
  end

  test "visiting the index" do
    visit news_items_url
    assert_selector "h1", text: "News items"
  end

  test "should create news item" do
    visit news_items_url
    click_on "New news item"

    fill_in "Category", with: @news_item.category_id
    fill_in "Comment status", with: @news_item.comment_status
    fill_in "News status", with: @news_item.news_status
    fill_in "Title", with: @news_item.title
    click_on "Create News item"

    assert_text "News item was successfully created"
    click_on "Back"
  end

  test "should update News item" do
    visit news_item_url(@news_item)
    click_on "Edit this news item", match: :first

    fill_in "Category", with: @news_item.category_id
    fill_in "Comment status", with: @news_item.comment_status
    fill_in "News status", with: @news_item.news_status
    fill_in "Title", with: @news_item.title
    click_on "Update News item"

    assert_text "News item was successfully updated"
    click_on "Back"
  end

  test "should destroy News item" do
    visit news_item_url(@news_item)
    click_on "Destroy this news item", match: :first

    assert_text "News item was successfully destroyed"
  end
end
