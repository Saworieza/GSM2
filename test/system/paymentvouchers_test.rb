require "application_system_test_case"

class PaymentvouchersTest < ApplicationSystemTestCase
  setup do
    @paymentvoucher = paymentvouchers(:one)
  end

  test "visiting the index" do
    visit paymentvouchers_url
    assert_selector "h1", text: "Paymentvouchers"
  end

  test "creating a Paymentvoucher" do
    visit paymentvouchers_url
    click_on "New Paymentvoucher"

    fill_in "Contractorinvoice", with: @paymentvoucher.contractorinvoice_id
    fill_in "Number", with: @paymentvoucher.number
    fill_in "Site", with: @paymentvoucher.site_id
    click_on "Create Paymentvoucher"

    assert_text "Paymentvoucher was successfully created"
    click_on "Back"
  end

  test "updating a Paymentvoucher" do
    visit paymentvouchers_url
    click_on "Edit", match: :first

    fill_in "Contractorinvoice", with: @paymentvoucher.contractorinvoice_id
    fill_in "Number", with: @paymentvoucher.number
    fill_in "Site", with: @paymentvoucher.site_id
    click_on "Update Paymentvoucher"

    assert_text "Paymentvoucher was successfully updated"
    click_on "Back"
  end

  test "destroying a Paymentvoucher" do
    visit paymentvouchers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paymentvoucher was successfully destroyed"
  end
end
