require "application_system_test_case"

class NotesheetsTest < ApplicationSystemTestCase
  setup do
    @notesheet = notesheets(:one)
  end

  test "visiting the index" do
    visit notesheets_url
    assert_selector "h1", text: "Notesheets"
  end

  test "creating a Notesheet" do
    visit notesheets_url
    click_on "New Notesheet"

    fill_in "Author", with: @notesheet.author_id
    fill_in "Content", with: @notesheet.content
    fill_in "Course", with: @notesheet.course_id
    fill_in "Date created", with: @notesheet.date_created
    click_on "Create Notesheet"

    assert_text "Notesheet was successfully created"
    click_on "Back"
  end

  test "updating a Notesheet" do
    visit notesheets_url
    click_on "Edit", match: :first

    fill_in "Author", with: @notesheet.author_id
    fill_in "Content", with: @notesheet.content
    fill_in "Course", with: @notesheet.course_id
    fill_in "Date created", with: @notesheet.date_created
    click_on "Update Notesheet"

    assert_text "Notesheet was successfully updated"
    click_on "Back"
  end

  test "destroying a Notesheet" do
    visit notesheets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notesheet was successfully destroyed"
  end
end
