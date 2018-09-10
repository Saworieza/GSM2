require "application_system_test_case"

class CustomerquotesTest < ApplicationSystemTestCase
  setup do
    @customerquote = customerquotes(:one)
  end

  test "visiting the index" do
    visit customerquotes_url
    assert_selector "h1", text: "Customerquotes"
  end

  test "creating a Customerquote" do
    visit customerquotes_url
    click_on "New Customerquote"

    fill_in "Amount", with: @customerquote.amount
    fill_in "Costcenter", with: @customerquote.costcenter_id
    fill_in "Date", with: @customerquote.date
    fill_in "Name", with: @customerquote.name
    click_on "Create Customerquote"

    assert_text "Customerquote was successfully created"
    click_on "Back"
  end

  test "updating a Customerquote" do
    visit customerquotes_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @customerquote.amount
    fill_in "Costcenter", with: @customerquote.costcenter_id
    fill_in "Date", with: @customerquote.date
    fill_in "Name", with: @customerquote.name
    click_on "Update Customerquote"

    assert_text "Customerquote was successfully updated"
    click_on "Back"
  end

  test "destroying a Customerquote" do
    visit customerquotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customerquote was successfully destroyed"
  end
end
