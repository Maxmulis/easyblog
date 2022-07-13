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
    fill_in "Comment", with: "New Text"
    fill_in "Name", with: "Horst"
    click_on "Create Comment"

    assert_text "New Comment"
    assert_text "New Text"
  end

  test "creating an article" do
    visit root_url

    click_on "New Article"
    fill_in "Username", with: articles(:first).author.username
    fill_in "Password", with: "easybill1234"

    fill_in "Title", with: "New Article"
    fill_in "Text", with: "New Text"
    click_on "Create Article"

    assert_text "New Article"
    assert_text "New Text"
    assert_text "horst"
  end

end
