require "application_system_test_case"

class ContractorquotesTest < ApplicationSystemTestCase
  setup do
    @contractorquote = contractorquotes(:one)
  end

  test "visiting the index" do
    visit contractorquotes_url
    assert_selector "h1", text: "Contractorquotes"
  end

  test "creating a Contractorquote" do
    visit contractorquotes_url
    click_on "New Contractorquote"

    fill_in "Amount", with: @contractorquote.amount
    fill_in "Customerpo", with: @contractorquote.customerpo_id
    fill_in "Date", with: @contractorquote.date
    fill_in "Description", with: @contractorquote.description
    fill_in "Number", with: @contractorquote.number
    fill_in "Site", with: @contractorquote.site_id
    click_on "Create Contractorquote"

    assert_text "Contractorquote was successfully created"
    click_on "Back"
  end

  test "updating a Contractorquote" do
    visit contractorquotes_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @contractorquote.amount
    fill_in "Customerpo", with: @contractorquote.customerpo_id
    fill_in "Date", with: @contractorquote.date
    fill_in "Description", with: @contractorquote.description
    fill_in "Number", with: @contractorquote.number
    fill_in "Site", with: @contractorquote.site_id
    click_on "Update Contractorquote"

    assert_text "Contractorquote was successfully updated"
    click_on "Back"
  end

  test "destroying a Contractorquote" do
    visit contractorquotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contractorquote was successfully destroyed"
  end
end
