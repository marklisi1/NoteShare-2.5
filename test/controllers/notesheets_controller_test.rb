require 'test_helper'

class NotesheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notesheet = notesheets(:one)
  end

  test "should get index" do
    get notesheets_url
    assert_response :success
  end

  test "should get new" do
    get new_notesheet_url
    assert_response :success
  end

  test "should create notesheet" do
    assert_difference('Notesheet.count') do
      post notesheets_url, params: { notesheet: { author_id: @notesheet.author_id, content: @notesheet.content, course_id: @notesheet.course_id, date_created: @notesheet.date_created } }
    end

    assert_redirected_to notesheet_url(Notesheet.last)
  end

  test "should show notesheet" do
    get notesheet_url(@notesheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_notesheet_url(@notesheet)
    assert_response :success
  end

  test "should update notesheet" do
    patch notesheet_url(@notesheet), params: { notesheet: { author_id: @notesheet.author_id, content: @notesheet.content, course_id: @notesheet.course_id, date_created: @notesheet.date_created } }
    assert_redirected_to notesheet_url(@notesheet)
  end

  test "should destroy notesheet" do
    assert_difference('Notesheet.count', -1) do
      delete notesheet_url(@notesheet)
    end

    assert_redirected_to notesheets_url
  end
end
