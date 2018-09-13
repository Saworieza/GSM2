require "application_system_test_case"

class ContractorinvoicesTest < ApplicationSystemTestCase
  setup do
    @contractorinvoice = contractorinvoices(:one)
  end

  test "visiting the index" do
    visit contractorinvoices_url
    assert_selector "h1", text: "Contractorinvoices"
  end

  test "creating a Contractorinvoice" do
    visit contractorinvoices_url
    click_on "New Contractorinvoice"

    fill_in "Amount", with: @contractorinvoice.amount
    fill_in "Date", with: @contractorinvoice.date
    fill_in "Milestone", with: @contractorinvoice.milestone_id
    fill_in "Number", with: @contractorinvoice.number
    click_on "Create Contractorinvoice"

    assert_text "Contractorinvoice was successfully created"
    click_on "Back"
  end

  test "updating a Contractorinvoice" do
    visit contractorinvoices_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @contractorinvoice.amount
    fill_in "Date", with: @contractorinvoice.date
    fill_in "Milestone", with: @contractorinvoice.milestone_id
    fill_in "Number", with: @contractorinvoice.number
    click_on "Update Contractorinvoice"

    assert_text "Contractorinvoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Contractorinvoice" do
    visit contractorinvoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contractorinvoice was successfully destroyed"
  end
end
