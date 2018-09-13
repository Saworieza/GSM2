require "application_system_test_case"

class ContractorposTest < ApplicationSystemTestCase
  setup do
    @contractorpo = contractorpos(:one)
  end

  test "visiting the index" do
    visit contractorpos_url
    assert_selector "h1", text: "Contractorpos"
  end

  test "creating a Contractorpo" do
    visit contractorpos_url
    click_on "New Contractorpo"

    fill_in "Amount", with: @contractorpo.amount
    fill_in "Contractorquote", with: @contractorpo.contractorquote_id
    fill_in "Date", with: @contractorpo.date
    fill_in "Description", with: @contractorpo.description
    fill_in "Number", with: @contractorpo.number
    click_on "Create Contractorpo"

    assert_text "Contractorpo was successfully created"
    click_on "Back"
  end

  test "updating a Contractorpo" do
    visit contractorpos_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @contractorpo.amount
    fill_in "Contractorquote", with: @contractorpo.contractorquote_id
    fill_in "Date", with: @contractorpo.date
    fill_in "Description", with: @contractorpo.description
    fill_in "Number", with: @contractorpo.number
    click_on "Update Contractorpo"

    assert_text "Contractorpo was successfully updated"
    click_on "Back"
  end

  test "destroying a Contractorpo" do
    visit contractorpos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contractorpo was successfully destroyed"
  end
end
