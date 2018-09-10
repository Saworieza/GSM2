require "application_system_test_case"

class CustomerposTest < ApplicationSystemTestCase
  setup do
    @customerpo = customerpos(:one)
  end

  test "visiting the index" do
    visit customerpos_url
    assert_selector "h1", text: "Customerpos"
  end

  test "creating a Customerpo" do
    visit customerpos_url
    click_on "New Customerpo"

    fill_in "Amount", with: @customerpo.amount
    fill_in "Customerquote", with: @customerpo.customerquote_id
    fill_in "Date", with: @customerpo.date
    fill_in "Number", with: @customerpo.number
    fill_in "Scope", with: @customerpo.scope_id
    click_on "Create Customerpo"

    assert_text "Customerpo was successfully created"
    click_on "Back"
  end

  test "updating a Customerpo" do
    visit customerpos_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @customerpo.amount
    fill_in "Customerquote", with: @customerpo.customerquote_id
    fill_in "Date", with: @customerpo.date
    fill_in "Number", with: @customerpo.number
    fill_in "Scope", with: @customerpo.scope_id
    click_on "Update Customerpo"

    assert_text "Customerpo was successfully updated"
    click_on "Back"
  end

  test "destroying a Customerpo" do
    visit customerpos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customerpo was successfully destroyed"
  end
end
