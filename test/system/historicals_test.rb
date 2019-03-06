require "application_system_test_case"

class HistoricalsTest < ApplicationSystemTestCase
  setup do
    @historical = historicals(:one)
  end

  test "visiting the index" do
    visit historicals_url
    assert_selector "h1", text: "Historicals"
  end

  test "creating a Historical" do
    visit historicals_url
    click_on "New Historical"

    fill_in "Answer", with: @historical.answer
    fill_in "Correct", with: @historical.correct
    fill_in "Date", with: @historical.date
    fill_in "Exercise", with: @historical.exercise_id
    fill_in "Response", with: @historical.response
    fill_in "Test", with: @historical.test_id
    fill_in "Type", with: @historical.type_id
    fill_in "User", with: @historical.user_id
    click_on "Create Historical"

    assert_text "Historical was successfully created"
    click_on "Back"
  end

  test "updating a Historical" do
    visit historicals_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @historical.answer
    fill_in "Correct", with: @historical.correct
    fill_in "Date", with: @historical.date
    fill_in "Exercise", with: @historical.exercise_id
    fill_in "Response", with: @historical.response
    fill_in "Test", with: @historical.test_id
    fill_in "Type", with: @historical.type_id
    fill_in "User", with: @historical.user_id
    click_on "Update Historical"

    assert_text "Historical was successfully updated"
    click_on "Back"
  end

  test "destroying a Historical" do
    visit historicals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Historical was successfully destroyed"
  end
end
