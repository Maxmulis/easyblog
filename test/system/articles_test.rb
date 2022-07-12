require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_path

    assert_selector "h1", text: "Articles"
    assert_text articles(:first).title
    assert_text articles(:first).text
    assert_text articles(:first).author.username

  end
  test "commenting on an article" do
    visit root_url

    click_on articles(:first).title
    fill_in "Title", with: "New Comment"
    fill_in "Text", with: "New Text"
    fill_in "Name", with: "Horst"
    click_on "Create comment"

    assert_text "New Comment"
    assert_text "New Text"
  end

end
